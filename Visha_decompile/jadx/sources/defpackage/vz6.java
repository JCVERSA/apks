package defpackage;

public interface vz6 {
    default void onConnect(int i) {
        if (i == 1) {
            onWifi();
            return;
        }
        if (i == 2 || i == 3 || i == 4 || i == 5) {
            onMobile();
        } else {
            unknowNet();
        }
    }

    default void onDisconnect() {
    }

    default void onMobile() {
    }

    default void onWifi() {
    }

    default void unknowNet() {
    }
}
