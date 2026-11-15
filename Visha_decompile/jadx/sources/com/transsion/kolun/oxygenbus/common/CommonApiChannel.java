package com.transsion.kolun.oxygenbus.common;

import android.content.ComponentName;
import com.transsion.apiinvoke.common.router.ChannelEntity;

public final class CommonApiChannel {
    private static final String API_SERVICE_CLASS = "com.transsion.apiinvoke.ipc.connect.CommonRouterApiService";
    private String[] apiServices;
    private String channelName;
    private ComponentName componentName;
    private String packageName;
    private int pid;

    public CommonApiChannel(String str, int i, String[] strArr) {
        this(str + "#" + i, str, i, strArr);
    }

    public String[] apiServices() {
        return this.apiServices;
    }

    public String channelName() {
        return this.channelName;
    }

    public String packageName() {
        return this.packageName;
    }

    public int pid() {
        return this.pid;
    }

    public ComponentName serviceComponent() {
        return this.componentName;
    }

    public ChannelEntity toChannelEntity() {
        return ChannelEntity.createChannel(this.channelName, this.packageName, API_SERVICE_CLASS, this.apiServices);
    }

    public CommonApiChannel(String str, String str2, int i, String[] strArr) {
        this.packageName = str2;
        this.pid = i;
        this.apiServices = strArr;
        this.channelName = str;
        this.componentName = new ComponentName(str2, API_SERVICE_CLASS);
    }
}
