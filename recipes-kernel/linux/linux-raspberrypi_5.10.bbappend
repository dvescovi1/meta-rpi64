FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

LINUX_VERSION = "5.10.110"

SRCREV_machine = ""
SRCREV_kmeta = ""

SRCREV = "89c0af71c9cf157a865afb526e9ebc21aadd531b"

SRC_URI = "\
    git://github.com/raspberrypi/linux.git;branch=${LINUX_RPI_BRANCH} \
    file://ikconfig.cfg \
"

KERNEL_DEVICETREE = " \
    ${RPI_KERNEL_DEVICETREE} \
    ${RPI_KERNEL_DEVICETREE_OVERLAYS} \
"

RPI_KERNEL_DEVICETREE = " \
    broadcom/bcm2711-rpi-400.dtb \
    broadcom/bcm2711-rpi-4-b.dtb \
    broadcom/bcm2711-rpi-cm4.dtb \
"

RPI_KERNEL_DEVICETREE_OVERLAYS = " \
    overlays/act-led.dtbo \
    overlays/adafruit18.dtbo \
    overlays/adafruit-st7735r.dtbo \
    overlays/adau1977-adc.dtbo \
    overlays/adau7002-simple.dtbo \
    overlays/ads1015.dtbo \
    overlays/ads1115.dtbo \
    overlays/ads7846.dtbo \
    overlays/adv7282m.dtbo \
    overlays/adv728x-m.dtbo \
    overlays/akkordion-iqdacplus.dtbo \
    overlays/allo-boss2-dac-audio.dtbo \
    overlays/allo-boss-dac-pcm512x-audio.dtbo \
    overlays/allo-digione.dtbo \
    overlays/allo-katana-dac-audio.dtbo \
    overlays/allo-piano-dac-pcm512x-audio.dtbo \
    overlays/allo-piano-dac-plus-pcm512x-audio.dtbo \
    overlays/anyspi.dtbo \
    overlays/apds9960.dtbo \
    overlays/applepi-dac.dtbo \
    overlays/at86rf233.dtbo \
    overlays/audioinjector-addons.dtbo \
    overlays/audioinjector-isolated-soundcard.dtbo \
    overlays/audioinjector-ultra.dtbo \
    overlays/audioinjector-wm8731-audio.dtbo \
    overlays/audiosense-pi.dtbo \
    overlays/audremap.dtbo \
    overlays/balena-fin.dtbo \
    overlays/cap1106.dtbo \
    overlays/chipdip-dac.dtbo \
    overlays/cma.dtbo \
    overlays/cutiepi-panel.dtbo \
    overlays/dht11.dtbo \
    overlays/dionaudio-loco.dtbo \
    overlays/dionaudio-loco-v2.dtbo \
    overlays/disable-bt.dtbo \
    overlays/disable-wifi.dtbo \
    overlays/dpi18cpadhi.dtbo \
    overlays/dpi18.dtbo \
    overlays/dpi24.dtbo \
    overlays/draws.dtbo \
    overlays/dwc2.dtbo \
    overlays/dwc-otg.dtbo \
    overlays/edt-ft5406.dtbo \
    overlays/enc28j60.dtbo \
    overlays/enc28j60-spi2.dtbo \
    overlays/exc3000.dtbo \
    overlays/fbtft.dtbo \
    overlays/fe-pi-audio.dtbo \
    overlays/fsm-demo.dtbo \
    overlays/ghost-amp.dtbo \
    overlays/goodix.dtbo \
    overlays/googlevoicehat-soundcard.dtbo \
    overlays/gpio-fan.dtbo \
    overlays/gpio-ir.dtbo \
    overlays/gpio-ir-tx.dtbo \
    overlays/gpio-key.dtbo \
    overlays/gpio-led.dtbo \
    overlays/gpio-no-bank0-irq.dtbo \
    overlays/gpio-no-irq.dtbo \
    overlays/gpio-poweroff.dtbo \
    overlays/gpio-shutdown.dtbo \
    overlays/hd44780-lcd.dtbo \
    overlays/hdmi-backlight-hwhack-gpio.dtbo \
    overlays/hifiberry-amp100.dtbo \
    overlays/hifiberry-amp.dtbo \
    overlays/hifiberry-dac.dtbo \
    overlays/hifiberry-dacplusadc.dtbo \
    overlays/hifiberry-dacplusadcpro.dtbo \
    overlays/hifiberry-dacplusdsp.dtbo \
    overlays/hifiberry-dacplushd.dtbo \
    overlays/hifiberry-dacplus.dtbo \
    overlays/hifiberry-digi.dtbo \
    overlays/hifiberry-digi-pro.dtbo \
    overlays/highperi.dtbo \
    overlays/hy28a.dtbo \
    overlays/hy28b-2017.dtbo \
    overlays/hy28b.dtbo \
    overlays/i2c0.dtbo \
    overlays/i2c1.dtbo \
    overlays/i2c3.dtbo \
    overlays/i2c4.dtbo \
    overlays/i2c5.dtbo \
    overlays/i2c6.dtbo \
    overlays/i2c-bcm2708.dtbo \
    overlays/i2c-gpio.dtbo \
    overlays/i2c-mux.dtbo \
    overlays/i2c-pwm-pca9685a.dtbo \
    overlays/i2c-rtc-gpio.dtbo \
    overlays/i2c-rtc.dtbo \
    overlays/i2c-sensor.dtbo \
    overlays/i2s-gpio28-31.dtbo \
    overlays/ilitek251x.dtbo \
    overlays/imx219.dtbo \
    overlays/imx290.dtbo \
    overlays/imx378.dtbo \
    overlays/imx477.dtbo \
    overlays/imx519.dtbo \
    overlays/iqaudio-codec.dtbo \
    overlays/iqaudio-dac.dtbo \
    overlays/iqaudio-dacplus.dtbo \
    overlays/iqaudio-digi-wm8804-audio.dtbo \
    overlays/irs1125.dtbo \
    overlays/i-sabre-q2m.dtbo \
    overlays/jedec-spi-nor.dtbo \
    overlays/justboom-both.dtbo \
    overlays/justboom-dac.dtbo \
    overlays/justboom-digi.dtbo \
    overlays/ltc294x.dtbo \
    overlays/max98357a.dtbo \
    overlays/maxtherm.dtbo \
    overlays/mbed-dac.dtbo \
    overlays/mcp23017.dtbo \
    overlays/mcp23s17.dtbo \
    overlays/mcp2515-can0.dtbo \
    overlays/mcp2515-can1.dtbo \
    overlays/mcp2515.dtbo \
    overlays/mcp251xfd.dtbo \
    overlays/mcp3008.dtbo \
    overlays/mcp3202.dtbo \
    overlays/mcp342x.dtbo \
    overlays/media-center.dtbo \
    overlays/merus-amp.dtbo \
    overlays/midi-uart0.dtbo \
    overlays/midi-uart1.dtbo \
    overlays/midi-uart2.dtbo \
    overlays/midi-uart3.dtbo \
    overlays/midi-uart4.dtbo \
    overlays/midi-uart5.dtbo \
    overlays/minipitft13.dtbo \
    overlays/miniuart-bt.dtbo \
    overlays/mlx90640.dtbo \
    overlays/mmc.dtbo \
    overlays/mpu6050.dtbo \
    overlays/mz61581.dtbo \
    overlays/ov5647.dtbo \
    overlays/ov7251.dtbo \
    overlays/ov9281.dtbo \
    overlays/papirus.dtbo \
    overlays/pca953x.dtbo \
    overlays/pcie-32bit-dma.dtbo \
    overlays/pibell.dtbo \
    overlays/pifacedigital.dtbo \
    overlays/pifi-40.dtbo \
    overlays/pifi-dac-hd.dtbo \
    overlays/pifi-dac-zero.dtbo \
    overlays/pifi-mini-210.dtbo \
    overlays/piglow.dtbo \
    overlays/piscreen2r.dtbo \
    overlays/piscreen.dtbo \
    overlays/pisound.dtbo \
    overlays/pitft22.dtbo \
    overlays/pitft28-capacitive.dtbo \
    overlays/pitft28-resistive.dtbo \
    overlays/pitft35-resistive.dtbo \
    overlays/pps-gpio.dtbo \
    overlays/pwm-2chan.dtbo \
    overlays/pwm-ir-tx.dtbo \
    overlays/pwm.dtbo \
    overlays/qca7000.dtbo \
    overlays/qca7000-uart0.dtbo \
    overlays/rotary-encoder.dtbo \
    overlays/rpi-backlight.dtbo \
    overlays/rpi-cirrus-wm5102.dtbo \
    overlays/rpi-dac.dtbo \
    overlays/rpi-display.dtbo \
    overlays/rpi-ft5406.dtbo \
    overlays/rpi-poe.dtbo \
    overlays/rpi-poe-plus.dtbo \
    overlays/rpi-proto.dtbo \
    overlays/rpi-sense.dtbo \
    overlays/rpi-tv.dtbo \
    overlays/rpivid-v4l2.dtbo \
    overlays/rra-digidac1-wm8741-audio.dtbo \
    overlays/sainsmart18.dtbo \
    overlays/sc16is750-i2c.dtbo \
    overlays/sc16is752-i2c.dtbo \
    overlays/sc16is752-spi0.dtbo \
    overlays/sc16is752-spi1.dtbo \
    overlays/sdhost.dtbo \
    overlays/sdio.dtbo \
    overlays/seeed-can-fd-hat-v1.dtbo \
    overlays/seeed-can-fd-hat-v2.dtbo \
    overlays/sh1106-spi.dtbo \
    overlays/si446x-spi0.dtbo \
    overlays/smi-dev.dtbo \
    overlays/smi-nand.dtbo \
    overlays/smi.dtbo \
    overlays/spi0-0cs.dtbo \
    overlays/spi0-1cs.dtbo \
    overlays/spi0-2cs.dtbo \
    overlays/spi1-1cs.dtbo \
    overlays/spi1-2cs.dtbo \
    overlays/spi1-3cs.dtbo \
    overlays/spi2-1cs.dtbo \
    overlays/spi2-2cs.dtbo \
    overlays/spi2-3cs.dtbo \
    overlays/spi3-1cs.dtbo \
    overlays/spi3-2cs.dtbo \
    overlays/spi4-1cs.dtbo \
    overlays/spi4-2cs.dtbo \
    overlays/spi5-1cs.dtbo \
    overlays/spi5-2cs.dtbo \
    overlays/spi6-1cs.dtbo \
    overlays/spi6-2cs.dtbo \
    overlays/spi-gpio35-39.dtbo \
    overlays/spi-gpio40-45.dtbo \
    overlays/spi-rtc.dtbo \
    overlays/ssd1306.dtbo \
    overlays/ssd1306-spi.dtbo \
    overlays/ssd1331-spi.dtbo \
    overlays/ssd1351-spi.dtbo \
    overlays/superaudioboard.dtbo \
    overlays/sx150x.dtbo \
    overlays/tc358743-audio.dtbo \
    overlays/tc358743.dtbo \
    overlays/tinylcd35.dtbo \
    overlays/tpm-slb9670.dtbo \
    overlays/uart0.dtbo \
    overlays/uart1.dtbo \
    overlays/uart2.dtbo \
    overlays/uart3.dtbo \
    overlays/uart4.dtbo \
    overlays/uart5.dtbo \
    overlays/udrc.dtbo \
    overlays/ugreen-dabboard.dtbo \
    overlays/upstream.dtbo \
    overlays/upstream-pi4.dtbo \
    overlays/vc4-fkms-v3d.dtbo \
    overlays/vc4-fkms-v3d-pi4.dtbo \
    overlays/vc4-kms-dpi-generic.dtbo \
    overlays/vc4-kms-dpi-panel.dtbo \
    overlays/vc4-kms-dsi-7inch.dtbo \
    overlays/vc4-kms-dsi-lt070me05000.dtbo \
    overlays/vc4-kms-dsi-lt070me05000-v2.dtbo \
    overlays/vc4-kms-kippah-7inch.dtbo \
    overlays/vc4-kms-v3d.dtbo \
    overlays/vc4-kms-v3d-pi4.dtbo \
    overlays/vc4-kms-vga666.dtbo \
    overlays/vga666.dtbo \
    overlays/vl805.dtbo \
    overlays/w1-gpio.dtbo \
    overlays/w1-gpio-pullup.dtbo \
    overlays/w5500.dtbo \
    overlays/wittypi.dtbo \
    overlays/wm8960-soundcard.dtbo \
"
