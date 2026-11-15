package com.transsion.hubsdk.common.util;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.HashMap;
import java.util.Map;

public class TranGenericReflectionHelper {
    private final String targetClassName;
    private final Map<String, Boolean> existenceCache = new HashMap();
    private final Map<String, Boolean> methodExistenceCache = new HashMap();
    private final Object checkLock = new Object();
    private Boolean classExists = null;

    public TranGenericReflectionHelper(String str) {
        this.targetClassName = str;
    }

    private boolean checkClassExistence() {
        try {
            Class.forName(this.targetClassName);
            return true;
        } catch (ClassNotFoundException | Exception unused) {
            return false;
        }
    }

    private boolean checkFieldExistence(String str) {
        try {
            Class.forName(this.targetClassName).getField(str);
            return true;
        } catch (NoSuchFieldException | Exception unused) {
            return false;
        }
    }

    private boolean checkMethodExistence(String str, Class<?>[] clsArr) {
        try {
            Class.forName(this.targetClassName).getMethod(str, clsArr);
            return true;
        } catch (NoSuchMethodException | Exception unused) {
            return false;
        }
    }

    private String generateMethodSignature(String str, Class<?>[] clsArr) {
        StringBuilder sb = new StringBuilder(str);
        sb.append("(");
        for (int i = 0; i < clsArr.length; i++) {
            if (i > 0) {
                sb.append(StringUtils.COMMA);
            }
            sb.append(clsArr[i].getSimpleName());
        }
        sb.append(")");
        return sb.toString();
    }

    public void clearCache() {
        synchronized (this.checkLock) {
            this.existenceCache.clear();
            this.methodExistenceCache.clear();
            this.classExists = null;
        }
    }

    public String getTargetClassName() {
        return this.targetClassName;
    }

    public boolean isFieldExists(String str) {
        if (this.existenceCache.containsKey(str)) {
            return this.existenceCache.get(str).booleanValue();
        }
        synchronized (this.checkLock) {
            try {
                if (this.existenceCache.containsKey(str)) {
                    return this.existenceCache.get(str).booleanValue();
                }
                if (this.classExists == null) {
                    this.classExists = Boolean.valueOf(checkClassExistence());
                }
                if (!this.classExists.booleanValue()) {
                    this.existenceCache.put(str, Boolean.FALSE);
                    return false;
                }
                boolean zCheckFieldExistence = checkFieldExistence(str);
                this.existenceCache.put(str, Boolean.valueOf(zCheckFieldExistence));
                return zCheckFieldExistence;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean isMethodExists(String str) {
        return isMethodExists(str, new Class[0]);
    }

    public boolean isMethodExists(String str, Class<?>[] clsArr) {
        String strGenerateMethodSignature = generateMethodSignature(str, clsArr);
        if (this.methodExistenceCache.containsKey(strGenerateMethodSignature)) {
            return this.methodExistenceCache.get(strGenerateMethodSignature).booleanValue();
        }
        synchronized (this.checkLock) {
            try {
                if (this.methodExistenceCache.containsKey(strGenerateMethodSignature)) {
                    return this.methodExistenceCache.get(strGenerateMethodSignature).booleanValue();
                }
                if (this.classExists == null) {
                    this.classExists = Boolean.valueOf(checkClassExistence());
                }
                if (!this.classExists.booleanValue()) {
                    this.methodExistenceCache.put(strGenerateMethodSignature, Boolean.FALSE);
                    return false;
                }
                boolean zCheckMethodExistence = checkMethodExistence(str, clsArr);
                this.methodExistenceCache.put(strGenerateMethodSignature, Boolean.valueOf(zCheckMethodExistence));
                return zCheckMethodExistence;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
