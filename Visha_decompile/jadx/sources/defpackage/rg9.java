package defpackage;

import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.Executor;

public final class rg9 {
    public final SharedPreferences a;
    public final String b;
    public final String c;
    public final Executor e;
    public final ArrayDeque d = new ArrayDeque();
    public boolean f = false;

    public rg9(SharedPreferences sharedPreferences, String str, String str2, Executor executor) {
        this.a = sharedPreferences;
        this.b = str;
        this.c = str2;
        this.e = executor;
    }

    public static rg9 c(SharedPreferences sharedPreferences, String str, String str2, Executor executor) {
        rg9 rg9Var = new rg9(sharedPreferences, str, str2, executor);
        rg9Var.d();
        return rg9Var;
    }

    public final boolean b(boolean z) {
        if (z && !this.f) {
            i();
        }
        return z;
    }

    public final void d() {
        synchronized (this.d) {
            try {
                this.d.clear();
                String string = this.a.getString(this.b, "");
                if (!TextUtils.isEmpty(string) && string.contains(this.c)) {
                    String[] strArrSplit = string.split(this.c, -1);
                    if (strArrSplit.length == 0) {
                        Log.e("FirebaseMessaging", "Corrupted queue. Please check the queue contents and item separator provided");
                    }
                    for (String str : strArrSplit) {
                        if (!TextUtils.isEmpty(str)) {
                            this.d.add(str);
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public String e() {
        String str;
        synchronized (this.d) {
            str = (String) this.d.peek();
        }
        return str;
    }

    public boolean f(Object obj) {
        boolean zB;
        synchronized (this.d) {
            zB = b(this.d.remove(obj));
        }
        return zB;
    }

    public String g() {
        StringBuilder sb = new StringBuilder();
        Iterator it = this.d.iterator();
        while (it.hasNext()) {
            sb.append((String) it.next());
            sb.append(this.c);
        }
        return sb.toString();
    }

    public final void h() {
        synchronized (this.d) {
            this.a.edit().putString(this.b, g()).commit();
        }
    }

    public final void i() {
        this.e.execute(new Runnable() {
            @Override
            public final void run() {
                this.b.h();
            }
        });
    }
}
