package com.transsion.letswitch.service.api;

import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\b\bf\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\u0005H&J\"\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\nH&J\"\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\u0007H&J\"\u0010\f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\rH&J \u0010\u000e\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0005H&J \u0010\u0010\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\rH&J \u0010\u0011\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\nH&J \u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0007H&J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0015"}, d2 = {"Lcom/transsion/letswitch/service/api/ISettings;", "", "putInt", "", "type", "", "key", "", ES6Iterator.VALUE_PROPERTY, "putLong", "", "putString", "putFloat", "", "getInt", "def", "getFloat", "getLong", "getString", "canWrite", "Companion", "api_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface ISettings {
    public static final String API_NAME_SETTINGS = "SettingsApiService";

    public static final Companion INSTANCE = Companion.$$INSTANCE;
    public static final String METHOD_NAME_CAN_WRITE = "canWrite";
    public static final String METHOD_NAME_GET_FLOAT = "getFloat";
    public static final String METHOD_NAME_GET_INT = "getInt";
    public static final String METHOD_NAME_GET_LONG = "getLong";
    public static final String METHOD_NAME_GET_STRING = "getString";
    public static final String METHOD_NAME_PUT_FLOAT = "putFloat";
    public static final String METHOD_NAME_PUT_INT = "putInt";
    public static final String METHOD_NAME_PUT_LONG = "putLong";
    public static final String METHOD_NAME_PUT_STRING = "putString";
    public static final int TYPE_GLOBAL = 0;
    public static final int TYPE_SECURE = 2;
    public static final int TYPE_SYSTEM = 1;

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\f\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/transsion/letswitch/service/api/ISettings$Companion;", "", MethodDecl.initName, "()V", "API_NAME_SETTINGS", "", "TYPE_GLOBAL", "", "TYPE_SYSTEM", "TYPE_SECURE", "METHOD_NAME_PUT_INT", "METHOD_NAME_PUT_LONG", "METHOD_NAME_PUT_STRING", "METHOD_NAME_PUT_FLOAT", "METHOD_NAME_GET_INT", "METHOD_NAME_GET_FLOAT", "METHOD_NAME_GET_LONG", "METHOD_NAME_GET_STRING", "METHOD_NAME_CAN_WRITE", "api_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        static final Companion $$INSTANCE = new Companion();
        public static final String API_NAME_SETTINGS = "SettingsApiService";
        public static final String METHOD_NAME_CAN_WRITE = "canWrite";
        public static final String METHOD_NAME_GET_FLOAT = "getFloat";
        public static final String METHOD_NAME_GET_INT = "getInt";
        public static final String METHOD_NAME_GET_LONG = "getLong";
        public static final String METHOD_NAME_GET_STRING = "getString";
        public static final String METHOD_NAME_PUT_FLOAT = "putFloat";
        public static final String METHOD_NAME_PUT_INT = "putInt";
        public static final String METHOD_NAME_PUT_LONG = "putLong";
        public static final String METHOD_NAME_PUT_STRING = "putString";
        public static final int TYPE_GLOBAL = 0;
        public static final int TYPE_SECURE = 2;
        public static final int TYPE_SYSTEM = 1;

        private Companion() {
        }
    }

    boolean canWrite(int type);

    float getFloat(int type, String key, float def);

    int getInt(int type, String key, int def);

    long getLong(int type, String key, long def);

    String getString(int type, String key, String def);

    boolean putFloat(int type, String key, float value);

    boolean putInt(int type, String key, int value);

    boolean putLong(int type, String key, long value);

    boolean putString(int type, String key, String value);
}
