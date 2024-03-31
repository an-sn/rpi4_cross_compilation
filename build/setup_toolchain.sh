download_rpi4_toolchain(){
    echo "Downloading RPI-4 32-bit toolchain..."
    # wget https://developer.arm.com/-/media/Files/downloads/gnu/13.2.rel1/binrel/arm-gnu-toolchain-13.2.rel1-aarch64-arm-none-eabi.tar.xz
    echo "Toolchain downloaded successfully!"
}

for arg in "$@"; do
    case $arg in
        --32_bit)
            echo "Setting up toolchain for 32-bit architecture!"
            ;;
        --64_bit)
            echo "Setting up toolchain for 64-bit architecture!"
            ;;
        *)
            echo "Unknown option: $arg"
            ;;
    esac
done

cwd=$(pwd)
root_dir=$(git rev-parse --show-toplevel)
echo "Creating toolchain directory..."
cd ${root_dir}/build
rm -rf toolchain/
mkdir toolchain/
cd toolchain/
download_rpi4_toolchain
cd ${cwd}