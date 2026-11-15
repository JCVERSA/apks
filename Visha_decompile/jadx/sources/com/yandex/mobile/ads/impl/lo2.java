package com.yandex.mobile.ads.impl;

import android.os.AsyncTask;
import java.util.concurrent.ThreadPoolExecutor;

public abstract class lo2 extends AsyncTask<Object, Void, String> {
    private a a;
    protected final b b;

    public interface a {
    }

    public interface b {
    }

    public lo2(b bVar) {
        this.b = bVar;
    }

    public final void a(a aVar) {
        this.a = aVar;
    }

    @Override
    public void onPostExecute(String str) {
        a aVar = this.a;
        if (aVar != null) {
            ((po2) aVar).a();
        }
    }

    public final void a(ThreadPoolExecutor threadPoolExecutor) {
        executeOnExecutor(threadPoolExecutor, new Object[0]);
    }
}
