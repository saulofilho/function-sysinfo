function sysinfo
    set_color magenta
    echo "========================================= System Information ========================================="
    echo
    set_color cyan
    echo "Data: " (set_color green)(date "+%d/%m/%Y %H:%M:%S")
    echo
    set_color cyan
    echo "Nome do Host: " (set_color green)(hostname)
    echo
    set_color cyan
    echo "Sistema Operacional: "
    set_color green
    sw_vers
    echo
    set_color cyan
    echo "Modelo do Mac: " (set_color green)(sysctl -n hw.model)
    echo
    set_color cyan
    echo "CPU: " (set_color green)(sysctl -n machdep.cpu.brand_string)
    echo
    set_color cyan
    echo "Núcleos: " (set_color green)(sysctl -n hw.ncpu)
    echo
    set memsize (sysctl -n hw.memsize)
    set ram_gb (math $memsize / 1024 / 1024 / 1024)
    set_color cyan
    echo "Memória RAM: " (set_color green)"$ram_gb GB"
    echo
    set_color cyan
    echo "Espaço em Disco: "
    set_color green
    df -h /
    echo
    set_color magenta
    echo "========================================================================================================"
end
