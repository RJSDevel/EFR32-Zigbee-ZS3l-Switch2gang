# Architecture directories
ARCHITECTURE_DIR = efr32
BUILD_DIR = build
OUTPUT_DIR = $(BUILD_DIR)/$(ARCHITECTURE_DIR)
LST_DIR = lst
PROJECTNAME = Z3LightSoc

# Stack and submodule directories
GLOBAL_BASE_DIR     = ../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/..

SOURCE_FILES = \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../emdrv/dmadrv/src/dmadrv.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../emdrv/gpiointerrupt/src/gpiointerrupt.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../service/sleeptimer/src/sl_sleeptimer.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../emdrv/tempdrv/src/tempdrv.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../emdrv/ustimer/src/ustimer.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../emlib/src/em_adc.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../emlib/src/em_cmu.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../emlib/src/em_core.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../emlib/src/em_cryotimer.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../emlib/src/em_emu.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../emlib/src/em_eusart.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../emlib/src/em_gpio.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../emlib/src/em_i2c.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../emlib/src/em_ldma.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../emlib/src/em_leuart.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../emlib/src/em_msc.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../emlib/src/em_prs.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../emlib/src/em_rmu.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../emlib/src/em_rtcc.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../emlib/src/em_se.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../emlib/src/em_system.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../emlib/src/em_timer.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../emlib/src/em_usart.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../emlib/src/em_wdog.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../Device/SiliconLabs/EFR32MG21/Source/system_efr32mg21.c \
./znet-bookkeeping.c \
./call-command-handler.c \
./callback-stub.c \
./stack-handler-stub.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/micro/cortexm3/efm32/assert-crash-handlers.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/micro/cortexm3/efm32/button.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/plugin/buzzer/buzzer-efr32.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol/zigbee/app/framework/../util/serial/command-interpreter2.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/micro/generic/crc.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/micro/cortexm3/efm32/cstartup-common.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/micro/cortexm3/efm32/diagnostic.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol/zigbee/app/framework/../../stack/config/ember-configuration.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/micro/generic/endian.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/micro/cortexm3/efm32/faults-v7m.s79 \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/micro/cortexm3/efm32/isr-stubs.s79 \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/micro/cortexm3/efm32/led.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol/zigbee/app/framework/../util/common/library.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/micro/generic/mem-util.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/micro/cortexm3/efm32/mfg-token.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/micro/cortexm3/efm32/micro-common.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/micro/cortexm3/efm32/micro.c \
./znet-cli.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/micro/generic/random.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol/zigbee/app/framework/../util/security/security-address-cache.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/ember-base-configuration.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/micro/cortexm3/efm32/sleep-efm32.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/micro/generic/token-def.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/micro/cortexm3/efm32/token.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/micro/cortexm3/efm32/ext-device.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol/zigbee/app/framework/../util/zigbee-framework/zigbee-device-common.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol/zigbee/app/framework/../util/zigbee-framework/zigbee-device-library.c \
  ../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/micro/cortexm3/efm32/bootloader-interface-app.c \
  ../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/micro/cortexm3/efm32/bootloader-interface.c \
  ../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/plugin/serial/cortexm/efm32/com.c \
  ../../../../../SiliconLabs/ZigbeeSiliconV3/platform/bootloader/api/btl_interface.c \
  ../../../../../SiliconLabs/ZigbeeSiliconV3/platform/bootloader/api/btl_interface_storage.c \
  ../../../../../SiliconLabs/ZigbeeSiliconV3/platform/emdrv/uartdrv/src/uartdrv.c \
 \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform\base\hal\plugin\adc\adc-efr32.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\plugin\aes-cmac\aes-cmac.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform\base\hal\plugin\antenna-stub\antenna-stub.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\plugin\basic\basic.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\stack\framework\ccm-star.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform\radio\rail_lib\plugin\coexistence\protocol\ieee802154\coexistence-802154.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform\radio\rail_lib\plugin\coexistence\protocol\ieee802154\coulomb-counter-802154.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\plugin\counters\counters-cli.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\plugin\counters\counters-ota.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\plugin\counters\counters-soc.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\segger\systemview\SEGGER\SEGGER_RTT.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform\base\hal\plugin\debug-jtag\debug-jtag-efr32.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform\base\hal\plugin\serial\ember-printf.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform\base\hal\micro\cortexm3\efm32\hal-config.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform\base\hal\micro\cortexm3\efm32\hal-config-gpio.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform\service\mpu\src\sl_mpu.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform\service\power_manager\src\sl_power_manager.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform\service\power_manager\src\sl_power_manager_debug.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform\service\power_manager\src\sl_power_manager_hal_s0_s1.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform\service\power_manager\src\sl_power_manager_hal_s2.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform\common\src\sl_slist.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\plugin\identify\identify.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\plugin\identify\identify-cli.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\plugin\interpan\interpan.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\plugin\interpan\interpan-cli.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\plugin\interpan\interpan-soc.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\crypto\sl_component\se_manager\src\sl_se_manager.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\crypto\sl_component\se_manager\src\sl_se_manager_cipher.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\crypto\sl_component\se_manager\src\sl_se_manager_entropy.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\crypto\sl_component\se_manager\src\sl_se_manager_hash.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\crypto\sl_component\se_manager\src\sl_se_manager_key_derivation.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\crypto\sl_component\se_manager\src\sl_se_manager_key_handling.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\crypto\sl_component\se_manager\src\sl_se_manager_signature.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\crypto\sl_component\se_manager\src\sl_se_manager_util.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\sl_crypto\src\aes_aes.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\sl_crypto\src\crypto_aes.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\sl_crypto\src\crypto_ble.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\sl_crypto\src\crypto_ecp.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\sl_crypto\src\crypto_gcm.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\sl_crypto\src\crypto_management.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\sl_crypto\src\crypto_sha.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\sl_crypto\src\cryptoacc_aes.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\sl_crypto\src\cryptoacc_ccm.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\sl_crypto\src\cryptoacc_cmac.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\sl_crypto\src\cryptoacc_ecp.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\sl_crypto\src\cryptoacc_gcm.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\sl_crypto\src\cryptoacc_management.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\sl_crypto\src\cryptoacc_sha.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\sl_crypto\src\cryptoacc_trng.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\sl_crypto\src\entropy_adc.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\sl_crypto\src\entropy_rail.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\sl_crypto\src\radioaes.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\sl_crypto\src\radioaes_aes.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\sl_crypto\src\radioaes_ble.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\sl_crypto\src\se_aes.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\sl_crypto\src\se_ccm.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\sl_crypto\src\se_cmac.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\sl_crypto\src\se_ecp.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\sl_crypto\src\se_gcm.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\sl_crypto\src\se_jpake.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\sl_crypto\src\se_management.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\sl_crypto\src\se_sha.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\sl_crypto\src\se_trng.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\sl_crypto\src\shax.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\sl_crypto\src\sl_mbedtls.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\sl_crypto\src\trng.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\aes.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\aesni.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\arc4.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\aria.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\asn1parse.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\asn1write.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\base64.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\bignum.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\blowfish.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\camellia.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\ccm.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\certs.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\chacha20.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\chachapoly.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\cipher.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\cipher_wrap.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\cmac.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\ctr_drbg.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\debug.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\des.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\dhm.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\ecdh.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\ecdsa.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\ecjpake.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\ecp.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\ecp_curves.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\entropy.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\entropy_poll.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\error.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\gcm.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\havege.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\hkdf.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\hmac_drbg.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\md.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\md2.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\md4.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\md5.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\md_wrap.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\memory_buffer_alloc.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\net_sockets.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\nist_kw.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\oid.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\padlock.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\pem.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\pk.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\pk_wrap.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\pkcs11.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\pkcs12.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\pkcs5.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\pkparse.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\pkwrite.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\platform_util.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\poly1305.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\ripemd160.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\rsa.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\rsa_internal.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\sha1.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\sha256.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\sha512.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\ssl_cache.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\ssl_ciphersuites.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\ssl_cli.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\ssl_cookie.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\ssl_srv.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\ssl_ticket.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\ssl_tls.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\threading.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\timing.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\version.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\version_features.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\x509.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\x509_create.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\x509_crl.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\x509_crt.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\x509_csr.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\x509write_crt.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\x509write_csr.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/util\third_party\mbedtls\library\xtea.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\plugin\network-steering\network-steering.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\plugin\network-steering\network-steering-cli.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\plugin\network-steering\network-steering-v2.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\plugin\network-steering\network-steering-soc.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform\emdrv\nvm3\src\nvm3_lock.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform\emdrv\nvm3\src\nvm3_default.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform\emdrv\nvm3\src\nvm3_hal_flash.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\plugin\on-off\on-off.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\plugin\reporting\reporting.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\plugin\reporting\reporting-cli.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\plugin\reporting\reporting-default-configuration.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\plugin\scan-dispatch\scan-dispatch.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\plugin\scenes\scenes.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\plugin\scenes\scenes-cli.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform\base\hal\plugin\serial\serial.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\plugin\simple-main\simple-main.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\stack\framework\strong-random-api.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\plugin\update-tc-link-key\update-tc-link-key.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\plugin\update-tc-link-key\update-tc-link-key-cli.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\cli\core-cli.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\cli\network-cli.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\cli\option-cli.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\cli\plugin-cli.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\cli\security-cli.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\cli\zcl-cli.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\cli\zdo-cli.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\security\af-node.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\security\af-security-common.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\security\af-trust-center.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\security\crypto-state.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\util\af-event.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\util\af-main-common.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\util\attribute-size.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\util\attribute-storage.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\util\attribute-table.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\util\client-api.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\util\message.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\util\multi-network.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\util\print.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\util\print-formatter.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\util\process-cluster-message.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\util\process-global-message.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\util\service-discovery-common.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\util\time-util.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\util\util.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\util\af-main-soc.c \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\app\framework\util\service-discovery-soc.c \
 \
Z3LightSoc_callbacks.c \ \

LIB_FILES = \
 \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\build\binding-table-library-cortexm3-gcc-efr32mg21-rail\binding-table-library.a \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\build\cbke-163k1-stub-library-cortexm3-gcc-efr32mg21-rail\cbke-163k1-stub-library.a \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\build\cbke-283k1-stub-library-cortexm3-gcc-efr32mg21-rail\cbke-283k1-stub-library.a \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\build\cbke-stub-library-cortexm3-gcc-efr32mg21-rail\cbke-stub-library.a \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\build\cbke-library-dsa-sign-stub-cortexm3-gcc-efr32mg21-rail\cbke-library-dsa-sign-stub.a \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\build\cbke-library-dsa-verify-stub-cortexm3-gcc-efr32mg21-rail\cbke-library-dsa-verify-stub.a \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\build\cbke-library-dsa-verify-283k1-stub-cortexm3-gcc-efr32mg21-rail\cbke-library-dsa-verify-283k1-stub.a \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\build\debug-basic-library-cortexm3-gcc-efr32mg21-rail\debug-basic-library.a \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\build\debug-extended-stub-library-cortexm3-gcc-efr32mg21-rail\debug-extended-stub-library.a \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\build\end-device-bind-stub-library-cortexm3-gcc-efr32mg21-rail\end-device-bind-stub-library.a \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\build\gp-stub-library-cortexm3-gcc-efr32mg21-rail\gp-stub-library.a \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\build\hal-library-cortexm3-gcc-efr32mg21-rail\hal-library.a \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\build\install-code-library-stub-cortexm3-gcc-efr32mg21-rail\install-code-library-stub.a \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\build\multi-network-stub-library-cortexm3-gcc-efr32mg21-rail\multi-network-stub-library.a \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\build\multi-pan-stub-library-cortexm3-gcc-efr32mg21-rail\multi-pan-stub-library.a \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform\emdrv\nvm3\lib\libnvm3_CM33_gcc.a \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\build\packet-validate-stub-library-cortexm3-gcc-efr32mg21-rail\packet-validate-stub-library.a \
../../../../../SiliconLabs/ZigbeeSiliconV3/platform\radio\rail_lib\autogen\librail_release\librail_efr32xg21_gcc_release.a \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\build\security-library-link-keys-stub-cortexm3-gcc-efr32mg21-rail\security-library-link-keys-stub.a \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\build\sim-eeprom2-to-nvm3-upgrade-stub-library-cortexm3-gcc-efr32mg21-rail\sim-eeprom2-to-nvm3-upgrade-stub-library.a \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\build\source-route-library-cortexm3-gcc-efr32mg21-rail\source-route-library.a \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\build\zigbee-pro-stack-cortexm3-gcc-efr32mg21-rail\zigbee-pro-stack.a \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\build\zigbee-r22-support-stub-library-cortexm3-gcc-efr32mg21-rail\zigbee-r22-support-stub-library.a \
../../../../../SiliconLabs/ZigbeeSiliconV3/protocol\zigbee\build\zll-stub-library-cortexm3-gcc-efr32mg21-rail\zll-stub-library.a \
 \
 \

CDEFS = -DAPP_BTL \
-DCORTEXM3 \
-DCORTEXM3_EFR32 \
-DCORTEXM3_EFR32_MICRO \
-DCORTEXM3_EFM32_MICRO \
-DEFR32_SERIES2_CONFIG1_MICRO \
-DEFR32MG21 \
-DEFR32MG21B010F768IM32 \
-DATTRIBUTE_STORAGE_CONFIGURATION=\"Z3LightSoc_endpoint_config.h\" \
-DCONFIGURATION_HEADER=\"app/framework/util/config.h\" \
-DGENERATED_TOKEN_HEADER=\"Z3LightSoc_tokens.h\" \
-DPLATFORM_HEADER=\"platform/base/hal/micro/cortexm3/compiler/gcc.h\" \
-DZA_GENERATED_HEADER=\"Z3LightSoc.h\" \
-DPSSTORE_SIZE=0 \
-DLONGTOKEN_SIZE=0 \
-DLOCKBITS_IN_MAINFLASH_SIZE=8192 \
  -DHAL_CONFIG=1 \
  -DEMBER_AF_USE_HWCONF \
  -DNO_LED=1 \
  -DEMBER_AF_API_EMBER_TYPES=\"stack/include/ember-types.h\" \
  -DEMBER_AF_API_DEBUG_PRINT=\"app/framework/util/print.h\" \
  -DEMBER_AF_API_AF_HEADER=\"app/framework/include/af.h\" \
  -DEMBER_AF_API_AF_SECURITY_HEADER=\"app/framework/security/af-security.h\" \
  -DEMBER_AF_API_NEIGHBOR_HEADER=\"stack/include/stack-info.h\" \
  -DEMBER_STACK_ZIGBEE \
  -DMBEDTLS_CONFIG_FILE=\"mbedtls-config-generated.h\" \
  -DUSE_NVM3 \
  -DNVM3_DEFAULT_NVM_SIZE=NVM3_FLASH_PAGES*FLASH_PAGE_SIZE \
  -DEMLIB_USER_CONFIG \
  -DSL_CATALOG_POWER_MANAGER_PRESENT \
  -DAPPLICATION_TOKEN_HEADER=\"znet-token.h\" \
  -DAPPLICATION_MFG_TOKEN_HEADER=\"znet-mfg-token.h\" \
  -DMBEDTLS_DEVICE_ACCELERATION_CONFIG_FILE=\"configs/config-device-acceleration.h\" \
  -DMBEDTLS_DEVICE_ACCELERATION_CONFIG_APP_FILE=\"config-device-acceleration-app.h\" \
  -DNVM3_FLASH_PAGES=4 \
  -DNVM3_DEFAULT_CACHE_SIZE=200 \
  -DNVM3_MAX_OBJECT_SIZE=254 \
  -DNVM3_DEFAULT_REPACK_HEADROOM=0 \
  -DPHY_RAIL=1 \
  -DMBEDTLS_DEVICE_ACCELERATION_CONFIG_FILE=\"configs/config-device-acceleration.h\" \
  -DMBEDTLS_DEVICE_ACCELERATION_CONFIG_APP_FILE=\"config-device-acceleration-app.h\" \
  -DNVM3_FLASH_PAGES=4 \
  -DNVM3_DEFAULT_CACHE_SIZE=200 \
  -DNVM3_MAX_OBJECT_SIZE=254 \
  -DNVM3_DEFAULT_REPACK_HEADROOM=0 \
  -DPHY_RAIL=1 \
 \

ASMDEFS = -DAPP_BTL \
-DCORTEXM3 \
-DCORTEXM3_EFR32 \
-DCORTEXM3_EFR32_MICRO \
-DCORTEXM3_EFM32_MICRO \
-DEFR32_SERIES2_CONFIG1_MICRO \
-DEFR32MG21 \
-DEFR32MG21B010F768IM32 \
-DATTRIBUTE_STORAGE_CONFIGURATION=\"Z3LightSoc_endpoint_config.h\" \
-DCONFIGURATION_HEADER=\"app/framework/util/config.h\" \
-DGENERATED_TOKEN_HEADER=\"Z3LightSoc_tokens.h\" \
-DPLATFORM_HEADER=\"platform/base/hal/micro/cortexm3/compiler/gcc.h\" \
-DZA_GENERATED_HEADER=\"Z3LightSoc.h\" \
-DPSSTORE_SIZE=0 \
-DLONGTOKEN_SIZE=0 \
-DLOCKBITS_IN_MAINFLASH_SIZE=8192 \
  -DHAL_CONFIG=1 \
  -DEMBER_AF_USE_HWCONF \
  -DNO_LED=1 \
  -DEMBER_AF_API_EMBER_TYPES=\"stack/include/ember-types.h\" \
  -DEMBER_AF_API_DEBUG_PRINT=\"app/framework/util/print.h\" \
  -DEMBER_AF_API_AF_HEADER=\"app/framework/include/af.h\" \
  -DEMBER_AF_API_AF_SECURITY_HEADER=\"app/framework/security/af-security.h\" \
  -DEMBER_AF_API_NEIGHBOR_HEADER=\"stack/include/stack-info.h\" \
  -DEMBER_STACK_ZIGBEE \
  -DMBEDTLS_CONFIG_FILE=\"mbedtls-config-generated.h\" \
  -DUSE_NVM3 \
  -DNVM3_DEFAULT_NVM_SIZE=NVM3_FLASH_PAGES*FLASH_PAGE_SIZE \
  -DEMLIB_USER_CONFIG \
  -DSL_CATALOG_POWER_MANAGER_PRESENT \
  -DAPPLICATION_TOKEN_HEADER=\"znet-token.h\" \
  -DAPPLICATION_MFG_TOKEN_HEADER=\"znet-mfg-token.h\" \
  -DMBEDTLS_DEVICE_ACCELERATION_CONFIG_FILE=\"configs/config-device-acceleration.h\" \
  -DMBEDTLS_DEVICE_ACCELERATION_CONFIG_APP_FILE=\"config-device-acceleration-app.h\" \
  -DNVM3_FLASH_PAGES=4 \
  -DNVM3_DEFAULT_CACHE_SIZE=200 \
  -DNVM3_MAX_OBJECT_SIZE=254 \
  -DNVM3_DEFAULT_REPACK_HEADROOM=0 \
  -DPHY_RAIL=1 \
  -DMBEDTLS_DEVICE_ACCELERATION_CONFIG_FILE=\"configs/config-device-acceleration.h\" \
  -DMBEDTLS_DEVICE_ACCELERATION_CONFIG_APP_FILE=\"config-device-acceleration-app.h\" \
  -DNVM3_FLASH_PAGES=4 \
  -DNVM3_DEFAULT_CACHE_SIZE=200 \
  -DNVM3_MAX_OBJECT_SIZE=254 \
  -DNVM3_DEFAULT_REPACK_HEADROOM=0 \
  -DPHY_RAIL=1 \
 \

CINC = -I./ \
-I$(ARM_IAR7_DIR)/ARM/INC \
-I../../../../../SiliconLabs/ZigbeeSiliconV3 \
-I../../../../../SiliconLabs/ZigbeeSiliconV3/protocol/zigbee/app/framework \
-I../../../../../SiliconLabs/ZigbeeSiliconV3/protocol/zigbee/app/framework/../.. \
-I../../../../../SiliconLabs/ZigbeeSiliconV3/protocol/zigbee/app/framework/../../stack \
-I../../../../../SiliconLabs/ZigbeeSiliconV3/protocol/zigbee/app/framework/../util \
-I../../../../../SiliconLabs/ZigbeeSiliconV3/protocol/zigbee/app/framework/include \
-I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal \
-I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/plugin \
-I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/.. \
-I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/micro/cortexm3/efm32 \
-I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/micro/cortexm3/efm32/config \
-I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/micro/cortexm3/efm32/efr32 \
-I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../CMSIS/Include \
-I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../Device/SiliconLabs/EFR32MG21/Include \
-I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../emdrv/common/inc \
-I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../emdrv/config \
-I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../emdrv/dmadrv/inc \
-I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../emdrv/gpiointerrupt/inc \
-I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../service/sleeptimer/inc \
-I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../service/sleeptimer/config \
-I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../common/inc \
-I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../emdrv/sleep/inc \
-I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../emdrv/spidrv/inc \
-I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../emdrv/tempdrv/inc \
-I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../emdrv/uartdrv/inc \
-I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../emdrv/ustimer/inc \
-I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../emlib/inc \
-I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../middleware/glib \
-I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../middleware/glib/glib \
-I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../radio/rail_lib/plugin \
-I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/../../radio/mac \
-I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/halconfig/inc/hal-config \
-I../../../../../SiliconLabs/ZigbeeSiliconV3/hardware/module/config \
-I../../../../../SiliconLabs/ZigbeeSiliconV3/hardware/kit/common/halconfig \
-I../../../../../SiliconLabs/ZigbeeSiliconV3/hardware/kit/common/bsp \
  -Ihal-config \
  -I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/base/hal/micro/cortexm3/efm32/config/segger \
  -I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/bootloader \
  -I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/emdrv/nvm3/inc \
  -I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/radio/rail_lib/chip/efr32/efr32xg2x \
  -I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/radio/rail_lib/common \
  -I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/radio/rail_lib/plugin/coexistence/common \
  -I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/radio/rail_lib/plugin/coexistence/hal/efr32 \
  -I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154 \
  -I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/radio/rail_lib/protocol/ble \
  -I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/radio/rail_lib/protocol/ieee802154 \
  -I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/radio/rail_lib/protocol/zwave \
  -I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/service/mpu/inc \
  -I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/service/power_manager/inc \
  -I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/service/sleeptimer/inc \
  -I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/service/sleeptimer/src \
  -I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/common/inc \
  -I../../../../../SiliconLabs/ZigbeeSiliconV3/platform/radio/mac \
  -I../../../../../SiliconLabs/ZigbeeSiliconV3/util/silicon_labs/silabs_core \
  -I../../../../../SiliconLabs/ZigbeeSiliconV3/util/plugin/plugin-common/mbedtls \
  -I../../../../../SiliconLabs/ZigbeeSiliconV3/util/third_party/crypto/sl_component/se_manager/inc \
  -I../../../../../SiliconLabs/ZigbeeSiliconV3/util/third_party/crypto/sl_component/se_manager/src \
  -I../../../../../SiliconLabs/ZigbeeSiliconV3/util/third_party/mbedtls \
  -I../../../../../SiliconLabs/ZigbeeSiliconV3/util/third_party/mbedtls/include \
  -I../../../../../SiliconLabs/ZigbeeSiliconV3/util/third_party/mbedtls/include/mbedtls \
  -I../../../../../SiliconLabs/ZigbeeSiliconV3/util/third_party/mbedtls/sl_crypto/include \
  -I../../../../../SiliconLabs/ZigbeeSiliconV3/util/third_party/mbedtls/sl_crypto/src/cryptoacc/include \
  -I../../../../../SiliconLabs/ZigbeeSiliconV3/util/third_party/mbedtls/sl_crypto/src/cryptoacc/src \
  -I../../../../../SiliconLabs/ZigbeeSiliconV3/util/third_party/segger/systemview/SEGGER \
 \

TARGET = Z3LightSoc

CSOURCES = $(filter %.c, $(SOURCE_FILES))
ASMSOURCES = $(filter %.s79, $(SOURCE_FILES))
ASMSOURCES2 = $(filter %.s, $(SOURCE_FILES))

COBJS = $(addprefix $(OUTPUT_DIR)/,$(CSOURCES:.c=.o))
ASMOBJS = $(addprefix $(OUTPUT_DIR)/,$(ASMSOURCES:.s79=.o))
ASMOBJS2 = $(addprefix $(OUTPUT_DIR)/,$(ASMSOURCES2:.s=.o))

OUTPUT_DIRS = $(sort $(dir $(COBJS)) $(dir $(ASMOBJS)) $(dir $(ASMOBJS2)))

ARCHITECTUREID = efr32~family[m]~series[2]~device_configuration[1]~performance[b]~radio[010]~flash[768k]~temp[i]~package[m]~pins[32]~!module+none+gcc

# GNU ARM compiler
ifeq ($(findstring +gcc,$(ARCHITECTUREID)), +gcc)
$(info GCC Build)
	# Add linker circular reference as the order of objects may matter for any libraries used
	GROUP_START =-Wl,--start-group
	GROUP_END =-Wl,--end-group

	CCFLAGS = -g3 \
    -gdwarf-2 \
    -mcpu=cortex-m4 \
    -mthumb \
    -std=gnu99 \
    -Os  \
    -Wall  \
    -c  \
    -fmessage-length=0  \
    -ffunction-sections  \
    -fdata-sections  \
    -mfpu=fpv4-sp-d16  \
    -mfloat-abi=softfp \
	$(CDEFS) \
	$(CINC) \

	ASMFLAGS = -c \
	-g3 \
	-gdwarf-2 \
	-mcpu=cortex-m4 \
	-mthumb \
	-c \
	-x assembler-with-cpp \
	$(CINC) \
	$(ASMDEFS)

	LDFLAGS = -g3 \
	-gdwarf-2 \
	-mcpu=cortex-m4 \
	-mthumb -T "$(GLOBAL_BASE_DIR)/hal/micro/cortexm3/efm32/gcc-cfg.ld" \
	-L"$(GLOBAL_BASE_DIR)/hal/micro/cortexm3/" \
	-Xlinker --defsym="SIMEEPROM_SIZE=32768" \
	-Xlinker --defsym="PSSTORE_SIZE=0" \
	-Xlinker --defsym="LONGTOKEN_SIZE=0" \
	-Xlinker --defsym="LOCKBITS_IN_MAINFLASH_SIZE=8192" \
	-Xlinker --defsym="FLASH_SIZE=786432" \
	-Xlinker --defsym="RAM_SIZE=65536" \
	-Xlinker --defsym="FLASH_PAGE_SIZE=8192" \
	-Xlinker --defsym="APP_BTL=1" \
	-Xlinker --defsym="EMBER_MALLOC_HEAP_SIZE=0" \
	-Xlinker --defsym="HEADER_SIZE=512" \
	-Xlinker --defsym="BTL_SIZE=16384" \
	-Xlinker --gc-sections \
	-Xlinker -Map="$(PROJECTNAME).map" \
	-mfpu=fpv4-sp-d16 \
	-mfloat-abi=softfp --specs=nano.specs -u _printf_float \
	-Wl,--start-group -lgcc -lc -lnosys   -Wl,--end-group

	ARCHFLAGS = r

	ELFTOOLFLAGS_BIN = -O binary
	ELFTOOLFLAGS_HEX = -O ihex
	ELFTOOLFLAGS_S37 = -O srec

	ifeq ($(OS),Windows_NT)
		ARCH = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc-ar.exe
		AS = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc.exe
		CC = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc.exe
		ELFTOOL = $(ARM_GNU_DIR)/bin/arm-none-eabi-objcopy.exe
		LD = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc.exe
	else
		ARCH = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc-ar
		AS = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc
		CC = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc
		ELFTOOL = $(ARM_GNU_DIR)/bin/arm-none-eabi-objcopy
		LD = $(ARM_GNU_DIR)/bin/arm-none-eabi-gcc
	endif

endif

# IAR 7.xx toolchain
ifeq ($(findstring +iar,$(ARCHITECTUREID)), +iar)
$(info IAR Build)

	# IAR is not sensitive to linker lib order thus no groups needed.
	GROUP_START =
	GROUP_END =
	CINC += -I$(ARM_IAR6_DIR)/ARM/INC

	ifndef ARM_IAR7_DIR
	$(error ARM_IAR7_DIR is not set. Please define ARM_IAR7_DIR pointing to your IAR 7.xx installation folder.)
	endif

	CCFLAGS = --cpu=cortex-m3 \
	--cpu_mode=thumb \
	--diag_suppress=Pa050 \
	-e \
	--endian=little \
	--fpu=none \
	--no_path_in_file_macros \
	--separate_cluster_for_initialized_variables \
	--dlib_config=$(ARM_IAR7_DIR)/ARM/inc/c/DLib_Config_Normal.h \
	--debug \
	--dependencies=m $*.d \
	-Ohz \
	$(CDEFS) \
	$(CINC)

	ASMFLAGS = --cpu cortex-M3 \
	--fpu None \
	-s+ \
	"-M<>" \
	-w+ \
	-t2 \
	-r \
	$(CINC) \
	$(ASMDEFS)

	LDFLAGS = --entry __iar_program_start \
	--diag_suppress=Lp012 \
	--config $(GLOBAL_BASE_DIR)/hal/micro/cortexm3/efm32/iar-cfg.icf \
	--config_def APP_BTL=1 \
	--config_def EMBER_MALLOC_HEAP_SIZE=0

	ARCH = $(JAMEXE_PREFIX) $(ARM_IAR7_DIR)/arm/bin/iarchive.exe
	AS = $(JAMEXE_PREFIX) $(ARM_IAR7_DIR)/arm/bin/iasmarm.exe
	CC = $(JAMEXE_PREFIX) $(ARM_IAR7_DIR)/arm/bin/iccarm.exe
	ELFTOOL = $(JAMEXE_PREFIX) $(ARM_IAR7_DIR)/arm/bin/ielftool.exe
	LD = $(JAMEXE_PREFIX) $(ARM_IAR7_DIR)/arm/bin/ilinkarm.exe

	# No archiver arguments needed for IAR.
	ARCHFLAGS =

	ELFTOOLFLAGS_BIN = --bin
	ELFTOOLFLAGS_HEX = --ihex
	ELFTOOLFLAGS_S37 = --srec --srec-s3only

endif

.PHONY: all clean PROLOGUE

all: PROLOGUE $(OUTPUT_DIRS) $(COBJS) $(ASMOBJS) $(ASMOBJS2) $(LIB_FILES)
	@echo 'Linking...'
	@$(LD) $(GROUP_START) $(LDFLAGS) $(COBJS) $(ASMOBJS) $(ASMOBJS2) $(LIB_FILES) $(GROUP_END) -o $(OUTPUT_DIR)/$(TARGET).out
	@$(ELFTOOL) $(OUTPUT_DIR)/$(TARGET).out $(ELFTOOLFLAGS_BIN) $(OUTPUT_DIR)/$(TARGET).bin
	@$(ELFTOOL) $(OUTPUT_DIR)/$(TARGET).out $(ELFTOOLFLAGS_HEX) $(OUTPUT_DIR)/$(TARGET).hex
	@$(ELFTOOL) $(OUTPUT_DIR)/$(TARGET).out $(ELFTOOLFLAGS_S37) $(OUTPUT_DIR)/$(TARGET).s37
	@echo 'Done.'

PROLOGUE:
#	@echo $(COBJS)
#	@echo $(ASMOBJS)
#	@echo $(ASMOBJS2)

$(OUTPUT_DIRS):
	@mkdir -p $@

$(COBJS): %.o:
	@echo 'Building $(notdir $(@:%.o=%.c))...'
	@$(CC) $(CCFLAGS) -o $@ $(filter %$(@:$(OUTPUT_DIR)/%.o=%.c),$(CSOURCES)) > /dev/null \

$(ASMOBJS): %.o:
	@echo 'Building $(notdir $(@:%.o=%.s79))...'
	@$(AS) $(ASMFLAGS) -o $@ $(filter %$(@:$(OUTPUT_DIR)/%.o=%.s79),$(ASMSOURCES)) > /dev/null

$(ASMOBJS2): %.o:
	@echo 'Building $(notdir $(@:%.o=%.s))...'
	@$(AS) $(ASMFLAGS) -o $@ $(filter %$(@:$(OUTPUT_DIR)/%.o=%.s),$(ASMSOURCES2)) > /dev/null

clean:
	$(RM) -r $(COBJS)
	$(RM) -r $(ASMOBJS)
	$(RM) -r $(ASMOBJS2)
	$(RM) -r $(OUTPUT_DIR)
