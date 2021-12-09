const fz = require('zigbee-herdsman-converters/converters/fromZigbee');
const tz = require('zigbee-herdsman-converters/converters/toZigbee');
const exposes = require('zigbee-herdsman-converters/lib/exposes');
const reporting = require('zigbee-herdsman-converters/lib/reporting');
const extend = require('zigbee-herdsman-converters/lib/extend');
const constants = require('zigbee-herdsman-converters/lib/constants');
const e = exposes.presets;
const ea = exposes.access;

const definition = {
    zigbeeModel: ['EFR32-SW2'],
    model: 'EFR32-SW2',
    vendor: 'YNXT',
    description: 'My switch',
    fromZigbee: [fz.on_off], // <-- added here
    toZigbee: [tz.on_off],
	meta: {multiEndpoint: true},
	endpoint: (device) => {
            return {'1': 1, '2': 2};
    },
	configure: async (device, coordinatorEndpoint, logger) => {
            const firstEndpoint = device.getEndpoint(1);
            await firstEndpoint.bind('genOnOff', constants.defaultBindGroup);
            await reporting.bind(firstEndpoint, coordinatorEndpoint, ['genPowerCfg']);
			const secondEndpoint = device.getEndpoint(2);
			await secondEndpoint.bind('genOnOff', constants.defaultBindGroup);
            await reporting.bind(secondEndpoint, coordinatorEndpoint, ['genPowerCfg']);
    },
    exposes: [e.switch().withEndpoint('1'), e.switch().withEndpoint('2')]
};

module.exports = definition;