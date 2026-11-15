package com.transsion.apiinvoke.invoke;

import com.transsion.apiinvoke.common.ApiInvokeLog;
import java.io.Serializable;
import java.lang.reflect.Method;
import java.util.Objects;

public class InvokePath implements Serializable {
    private static transient String PROCESS_NAME = "";
    private static final long serialVersionUID = -3803708500940316736L;
    public String channelName;
    public String process;

    public static class Publish extends InvokePath {
        private static final long serialVersionUID = -5511928676282247128L;
        public String apiName;
        public String matcher;

        @Override
        public String toString() {
            return "Publish{process='" + this.process + "', channelName='" + this.channelName + "', matcher='" + this.matcher + "', apiName='" + this.apiName + "'}";
        }
    }

    public static class Request extends InvokePath {
        private static final long serialVersionUID = 1957684268421834390L;
        public String apiName;
        public String method;

        @Override
        public String toString() {
            return "RequestPath{process='" + this.process + "', channelName='" + this.channelName + "', apiName='" + this.apiName + "', method='" + this.method + "'}";
        }
    }

    public InvokePath() {
        initProcessName(this);
    }

    public static InvokePath create(String str) {
        return new InvokePath(str);
    }

    public static InvokePath createPublish(String str, String str2, String str3) {
        Publish publish = new Publish();
        initProcessName(publish);
        publish.channelName = str;
        publish.apiName = str2;
        publish.matcher = str3;
        return publish;
    }

    public static InvokePath createRequest(String str, String str2, String str3) {
        Request request = new Request();
        initProcessName(request);
        request.channelName = str;
        request.apiName = str2;
        request.method = str3;
        return request;
    }

    private static String getCurrentProcessNameByActivityThread() {
        String str = null;
        try {
            Method declaredMethod = Class.forName("android.app.ActivityThread", false, InvokePath.class.getClassLoader()).getDeclaredMethod("currentProcessName", null);
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(null, null);
            str = objInvoke instanceof String ? (String) objInvoke : null;
            ApiInvokeLog.logInfo("Config", "getCurrentProcessNameByActivityThread processName =" + str);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return str;
    }

    private static void initProcessName(InvokePath invokePath) {
        synchronized (InvokePath.class) {
            try {
                String str = PROCESS_NAME;
                if (str == null || "".equals(str)) {
                    PROCESS_NAME = getCurrentProcessNameByActivityThread();
                }
                invokePath.process = PROCESS_NAME;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public String channelName() {
        return this.channelName;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        InvokePath invokePath = (InvokePath) obj;
        return Objects.equals(this.process, invokePath.process) && Objects.equals(this.channelName, invokePath.channelName);
    }

    public int hashCode() {
        return Objects.hash(this.process, this.channelName);
    }

    public String process() {
        return this.process;
    }

    public String toString() {
        return "InvokePath{channelName='" + this.channelName + "', process='" + this.process + "'}";
    }

    private InvokePath(String str) {
        this.channelName = str;
        initProcessName(this);
    }

    private InvokePath(String str, String str2) {
        this.process = str;
        this.channelName = str2;
    }

    public static InvokePath createPublish(String str, String str2, String str3, String str4) {
        Publish publish = new Publish();
        publish.process = str;
        publish.channelName = str2;
        publish.apiName = str3;
        publish.matcher = str4;
        return publish;
    }
}
