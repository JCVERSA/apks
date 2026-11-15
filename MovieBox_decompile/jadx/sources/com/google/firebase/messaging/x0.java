package com.google.firebase.messaging;

import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.Executor;

final class x0 {

    private final SharedPreferences f31351a;

    private final String f31352b;

    private final String f31353c;

    private final Executor f31355e;

    final ArrayDeque f31354d = new ArrayDeque();

    private boolean f31356f = false;

    private x0(SharedPreferences sharedPreferences, String str, String str2, Executor executor) {
        this.f31351a = sharedPreferences;
        this.f31352b = str;
        this.f31353c = str2;
        this.f31355e = executor;
    }

    private boolean c(boolean z10) {
        if (z10 && !this.f31356f) {
            j();
        }
        return z10;
    }

    static x0 d(SharedPreferences sharedPreferences, String str, String str2, Executor executor) {
        x0 x0Var = new x0(sharedPreferences, str, str2, executor);
        x0Var.e();
        return x0Var;
    }

    private void e() {
        synchronized (this.f31354d) {
            try {
                this.f31354d.clear();
                String string = this.f31351a.getString(this.f31352b, "");
                if (!TextUtils.isEmpty(string) && string.contains(this.f31353c)) {
                    String[] strArrSplit = string.split(this.f31353c, -1);
                    if (strArrSplit.length == 0) {
                        Log.e("FirebaseMessaging", "Corrupted queue. Please check the queue contents and item separator provided");
                    }
                    for (String str : strArrSplit) {
                        if (!TextUtils.isEmpty(str)) {
                            this.f31354d.add(str);
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void i() {
        synchronized (this.f31354d) {
            this.f31351a.edit().putString(this.f31352b, h()).commit();
        }
    }

    private void j() {
        this.f31355e.execute(new Runnable() {
            @Override
            public final void run() {
                this.f31349a.i();
            }
        });
    }

    public boolean b(String str) {
        boolean zC;
        if (TextUtils.isEmpty(str) || str.contains(this.f31353c)) {
            return false;
        }
        synchronized (this.f31354d) {
            zC = c(this.f31354d.add(str));
        }
        return zC;
    }

    public String f() {
        String str;
        synchronized (this.f31354d) {
            str = (String) this.f31354d.peek();
        }
        return str;
    }

    public boolean g(Object obj) {
        boolean zC;
        synchronized (this.f31354d) {
            zC = c(this.f31354d.remove(obj));
        }
        return zC;
    }

    public String h() {
        StringBuilder sb2 = new StringBuilder();
        Iterator it = this.f31354d.iterator();
        while (it.hasNext()) {
            sb2.append((String) it.next());
            sb2.append(this.f31353c);
        }
        return sb2.toString();
    }
}
