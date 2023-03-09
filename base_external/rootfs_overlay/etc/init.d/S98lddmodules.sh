#! /bin/sh

# Init script, loads/unloads scull, faulty, and hello world modules on start/stop

case "$1" in
    start)
        
        echo "Running scull loader script..."
        scull_load
        echo "Done!"

        echo "Running faulty module loader script..."
        module_load faulty
        echo "Done!"

        echo "Running hello world loader script..."
        modprobe hello.ko
        echo "Done!"

        ;;
    stop)

        echo "Running scull unloader script..."
        scull_unload
        echo "Done!"

        echo "Running faulty module unloader script..."
        module_unload faulty
        echo "Done!"

        echo "Running hello world unloader script..."
        rmmod hello.ko
        echo "Done!"

        ;;
    *)
        echo "Usage: $0 {start|stop}"
    exit 1
esac

exit 0