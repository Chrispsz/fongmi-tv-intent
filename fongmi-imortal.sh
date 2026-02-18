#!/bin/bash
# fongmi-imortal.sh → chmod +x → ./fongmi-imortal.sh
clear
echo "🔥 FongMi TV - Imortal Mode"

read -p "📱 IP da TV/Box: " IP

echo "🔗 Conectando..."
adb connect $IP:5555

echo "⚙️ Configurando..."
adb -s $IP:5555 shell "settings put global battery_saver_constants 0 && dumpsys deviceidle disable"
adb -s $IP:5555 shell "cmd appops set com.fongmi.android.tv RUN_IN_BACKGROUND ignore"
adb -s $IP:5555 shell "cmd appops set com.fongmi.android.tv RUN_ANY_IN_BACKGROUND ignore"

echo "🔄 Reiniciando app..."
adb -s $IP:5555 shell am force-stop com.fongmi.android.tv

echo ""
echo "✅ FongMi IMORTAL!"
echo "📋 Verificar: adb -s $IP:5555 shell cmd appops get com.fongmi.android.tv RUN_IN_BACKGROUND"
