package com.transsion.apiinvoke.common.router;

import com.transsion.apiinvoke.common.ApiInvokeLog;
import com.transsion.kolun.oxygenbus.common.OxygenBusUtils;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.apache.commons.text.StringSubstitutor;

public class ProcessInfo implements Serializable, Cloneable {
    public static final String DEFAULT_VERSION = "1.2.100";
    public static final String SPLIT_NEW_VERSION = ";";
    public static final String SPLIT_OLD_VERSION = "#";
    private static final long serialVersionUID = -5739013078982899476L;
    private List<String> channels;
    private String packageName;
    private String pid;
    private String process;
    private String version;

    public ProcessInfo(String str) {
        this.pid = "";
        this.process = "";
        this.packageName = "";
        this.version = "";
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        this.channels = copyOnWriteArrayList;
        copyOnWriteArrayList.add(str);
        this.version = DEFAULT_VERSION;
    }

    private static String convertStringArray(List<String> list) {
        StringBuilder sb = new StringBuilder("[");
        for (int i = 0; i < list.size(); i++) {
            if (i > 0) {
                sb.append(StringUtils.COMMA);
            }
            sb.append("\"");
            sb.append(list.get(i));
            sb.append("\"");
        }
        sb.append("]");
        return sb.toString();
    }

    public static int myPid() {
        try {
            return ((Integer) Class.forName("android.os.Process").getDeclaredMethod("myPid", null).invoke(null, null)).intValue();
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            ApiInvokeLog.logError("ProcessInfo", "android.os.Process not found");
            return -1;
        }
    }

    public boolean containChannel(String str) {
        return this.channels.contains(str);
    }

    public List<String> copyChannels() {
        return new ArrayList(this.channels);
    }

    public String packageName() {
        return this.packageName;
    }

    public String pid() {
        return this.pid;
    }

    public boolean pidEquals(String str) {
        String str2 = this.pid;
        return (str2 == null || "".equals(str2) || str == null || !str.equals(pid())) ? false : true;
    }

    public String process() {
        return this.process;
    }

    public void putChannel(String str) {
        if (this.channels.contains(str)) {
            return;
        }
        this.channels.add(str);
    }

    public void setChannels(List<String> list) {
        this.channels.clear();
        this.channels.addAll(list);
    }

    public String toSimpleInfo() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(this.process);
        sb.append(" {version=");
        sb.append(this.version);
        sb.append(StringSubstitutor.DEFAULT_VAR_END);
        if ("0".equals(this.pid)) {
            str = "";
        } else {
            str = " {pid=" + this.pid + StringSubstitutor.DEFAULT_VAR_END;
        }
        sb.append(str);
        return sb.toString();
    }

    public String toString() {
        return "{" + String.format("\"%s\": \"%s\"", "pid", this.pid) + StringUtils.COMMA + String.format("\"%s\": \"%s\"", "process", this.process) + StringUtils.COMMA + String.format("\"%s\": \"%s\"", "packageName", this.packageName) + StringUtils.COMMA + String.format("\"%s\": %s", "channels", convertStringArray(this.channels)) + StringUtils.COMMA + String.format("\"%s\": \"%s\"", "version", this.version) + StringSubstitutor.DEFAULT_VAR_END;
    }

    public String version() {
        return this.version;
    }

    public ProcessInfo m114clone() {
        try {
            ProcessInfo processInfo = (ProcessInfo) super.clone();
            processInfo.pid = this.pid;
            processInfo.process = this.process;
            processInfo.packageName = this.packageName;
            processInfo.channels = this.channels;
            processInfo.version = this.version;
            return processInfo;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public ProcessInfo(String str, String str2, String str3, String str4) {
        this(str, str2, str3, "", str4);
    }

    public ProcessInfo(String str, String str2, String str3, String str4, String str5) {
        this.pid = "";
        this.process = "";
        this.packageName = "";
        this.version = "";
        this.channels = new CopyOnWriteArrayList();
        this.process = str;
        this.pid = str2;
        if (str == null || "".equals(str)) {
            if ("0".equals(str2)) {
                this.process = OxygenBusUtils.APP_SERVICE_CHANNEL;
            } else {
                this.process = str2;
            }
        }
        if (str3 != null && !"".equals(str3)) {
            this.packageName = str3;
        }
        if (str4 != null && !"".equals(str4)) {
            this.channels.add(str4);
        }
        this.version = str5;
    }
}
