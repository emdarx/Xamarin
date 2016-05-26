while true; do
    echo "Killed Xamarin"
    kill -9 $(pgrep telegram-cli)
    sleep 2000
done
