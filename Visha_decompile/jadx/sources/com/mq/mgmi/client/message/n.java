package com.mq.mgmi.client.message;

import defpackage.qn6;

public class n extends Exception {
    private static final long serialVersionUID = 300;
    public int a;
    private Throwable b;

    public n(int i) {
        this.a = i;
    }

    @Override
    public Throwable getCause() {
        return this.b;
    }

    @Override
    public String getMessage() {
        return qn6.b(this.a);
    }

    @Override
    public String toString() {
        String str = getMessage() + " (" + this.a + ")";
        if (this.b == null) {
            return str;
        }
        return str + " - " + this.b.toString();
    }

    public n(int i, Throwable th) {
        this.a = i;
        this.b = th;
    }

    public n(Throwable th) {
        this.a = 0;
        this.b = th;
    }
}
