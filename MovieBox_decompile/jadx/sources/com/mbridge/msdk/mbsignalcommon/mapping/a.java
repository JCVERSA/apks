package com.mbridge.msdk.mbsignalcommon.mapping;

public class a extends Throwable {

    private Class<?> f35667a;

    private String f35668b;

    public a(String str) {
        super(str);
    }

    public void a(Class<?> cls) {
        this.f35667a = cls;
    }

    @Override
    public String toString() {
        if (getCause() == null) {
            return super.toString();
        }
        return getClass().getName() + ": " + getCause();
    }

    public a(Exception exc) {
        super(exc);
    }

    public void a(String str) {
        this.f35668b = str;
    }
}
