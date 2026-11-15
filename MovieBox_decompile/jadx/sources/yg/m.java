package yg;

import android.net.Network;
import android.net.NetworkCapabilities;

public interface m {
    void onConnected();

    void onConnected(Network network, NetworkCapabilities networkCapabilities);

    void onDisconnected();

    public static final class a {
        public static void a(m mVar) {
        }
    }
}
