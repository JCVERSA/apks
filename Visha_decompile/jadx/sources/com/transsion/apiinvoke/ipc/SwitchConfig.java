package com.transsion.apiinvoke.ipc;

import android.text.TextUtils;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public final class SwitchConfig implements Serializable {
    private static final long serialVersionUID = -7246650522638543533L;
    public InvokeSwitch invokeSwitch;
    public String process;
    public HostItemSwitch publishSwitch;
    public int state;
    public List<String> versions;

    public static final class ApiServiceSwitch implements Serializable {
        private static final long serialVersionUID = -282507951163907909L;
        public String apiName;
        public List<String> methods;

        public boolean containMethod(String str) {
            List<String> list;
            return (TextUtils.isEmpty(str) || (list = this.methods) == null || !list.contains(str)) ? false : true;
        }
    }

    public static final class HostItemSwitch implements Serializable {
        private static final long serialVersionUID = -2969255395085189809L;
        public String apiName;
        public String channel;
        public List<String> dataTypes;

        public boolean containDataType(String str) {
            List<String> list;
            return (TextUtils.isEmpty(str) || (list = this.dataTypes) == null || !Arrays.asList(list).contains(str)) ? false : true;
        }
    }

    public static final class InvokeSwitch implements Serializable {
        private static final long serialVersionUID = 6537947900818021296L;
        public List<ApiServiceSwitch> apiService;
        public String channel;

        public boolean containApiMethod(String str, String str2) {
            List<ApiServiceSwitch> list = this.apiService;
            if (list == null) {
                return false;
            }
            for (ApiServiceSwitch apiServiceSwitch : list) {
                if (TextUtils.equals(apiServiceSwitch.apiName, str) && apiServiceSwitch.containMethod(str2)) {
                    return true;
                }
            }
            return false;
        }

        public boolean containService(String str) {
            List<ApiServiceSwitch> list = this.apiService;
            if (list == null) {
                return false;
            }
            Iterator<ApiServiceSwitch> it = list.iterator();
            while (it.hasNext()) {
                if (TextUtils.equals(it.next().apiName, str)) {
                    return true;
                }
            }
            return false;
        }

        public boolean hasApiService() {
            List<ApiServiceSwitch> list = this.apiService;
            return (list == null || list.isEmpty()) ? false : true;
        }
    }

    public boolean isChannelClosed(String str) {
        if (this.state != 2) {
            return false;
        }
        HostItemSwitch hostItemSwitch = this.publishSwitch;
        if (hostItemSwitch != null && TextUtils.equals(hostItemSwitch.channel, str)) {
            return true;
        }
        InvokeSwitch invokeSwitch = this.invokeSwitch;
        return invokeSwitch != null && TextUtils.equals(invokeSwitch.channel, str);
    }

    public boolean isProcessClosed() {
        return this.state == 1;
    }

    public boolean isServiceClosed(String str, String str2) {
        if (this.state != 3) {
            return false;
        }
        HostItemSwitch hostItemSwitch = this.publishSwitch;
        if (hostItemSwitch != null && TextUtils.equals(hostItemSwitch.channel, str) && TextUtils.equals(this.publishSwitch.apiName, str2)) {
            return true;
        }
        InvokeSwitch invokeSwitch = this.invokeSwitch;
        if (invokeSwitch != null && TextUtils.equals(invokeSwitch.channel, str) && this.invokeSwitch.containService(str2)) {
            return true;
        }
        return isServiceItemClosed(str, str2, null);
    }

    public boolean isServiceItemClosed(String str, String str2, String str3) {
        if (this.state != 4) {
            return false;
        }
        HostItemSwitch hostItemSwitch = this.publishSwitch;
        if (hostItemSwitch != null && TextUtils.equals(hostItemSwitch.channel, str) && TextUtils.equals(this.publishSwitch.apiName, str2) && this.publishSwitch.containDataType(str3)) {
            return true;
        }
        InvokeSwitch invokeSwitch = this.invokeSwitch;
        return invokeSwitch != null && invokeSwitch.containApiMethod(str2, str3);
    }
}
