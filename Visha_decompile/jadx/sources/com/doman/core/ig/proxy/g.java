package com.doman.core.ig.proxy;

import android.os.Binder;

final class g extends Binder {
    MqttService a;
    String b;

    public g(MqttService mqttService) {
        this.a = mqttService;
    }
}
