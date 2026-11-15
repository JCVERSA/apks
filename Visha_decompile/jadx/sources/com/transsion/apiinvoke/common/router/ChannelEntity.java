package com.transsion.apiinvoke.common.router;

import java.util.Arrays;
import java.util.Objects;

public class ChannelEntity {
    public boolean autoConnect = true;
    public String channelName;
    public String[] channelService;
    public String className;
    public String packageName;

    public static ChannelEntity createChannel(String str, String str2, String str3, String[] strArr) {
        return createChannel(str, str2, str3, strArr, true);
    }

    public static ChannelEntity createLocalChannel(String str, String[] strArr) {
        ChannelEntity channelEntity = new ChannelEntity();
        channelEntity.channelName = str;
        channelEntity.packageName = "";
        channelEntity.className = "";
        channelEntity.channelService = strArr;
        channelEntity.autoConnect = true;
        return channelEntity;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ChannelEntity channelEntity = (ChannelEntity) obj;
        return this.autoConnect == channelEntity.autoConnect && Objects.equals(this.channelName, channelEntity.channelName) && Objects.equals(this.packageName, channelEntity.packageName) && Objects.equals(this.className, channelEntity.className);
    }

    public int hashCode() {
        return Objects.hash(this.channelName, this.packageName, this.className, Boolean.valueOf(this.autoConnect));
    }

    public boolean isClientConnectChannel() {
        return (!"".equals(this.channelName) && this.channelService == null) || this.channelService.length == 0;
    }

    public boolean isInChannel(String str) {
        String[] strArr = this.channelService;
        if (strArr == null || strArr.length == 0) {
            return false;
        }
        synchronized (strArr) {
            try {
                for (String str2 : this.channelService) {
                    if (str2.equals(str)) {
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public String toString() {
        return "ChannelEntity{channelName='" + this.channelName + "', packageName='" + this.packageName + "', className='" + this.className + "', channelService=" + Arrays.toString(this.channelService) + ", autoConnect=" + this.autoConnect + '}';
    }

    public static ChannelEntity createChannel(String str, String str2, String str3, String[] strArr, boolean z) {
        ChannelEntity channelEntity = new ChannelEntity();
        channelEntity.channelName = str;
        channelEntity.packageName = str2;
        channelEntity.className = str3;
        channelEntity.channelService = strArr;
        channelEntity.autoConnect = z;
        return channelEntity;
    }

    public static ChannelEntity createLocalChannel(String str) {
        ChannelEntity channelEntity = new ChannelEntity();
        channelEntity.channelName = str;
        channelEntity.packageName = "";
        channelEntity.className = "";
        channelEntity.channelService = new String[0];
        channelEntity.autoConnect = true;
        return channelEntity;
    }
}
