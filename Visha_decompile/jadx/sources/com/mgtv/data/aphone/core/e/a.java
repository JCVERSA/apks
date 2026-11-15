package com.mgtv.data.aphone.core.e;

import android.app.Activity;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class a implements com.mgtv.data.aphone.core.d.b {
    private static a a;
    private List<com.mgtv.data.aphone.core.d.b> b = new ArrayList();

    public static a a() {
        if (a == null) {
            a = new a();
        }
        return a;
    }

    @Override
    public void b(Activity activity) {
        Iterator<com.mgtv.data.aphone.core.d.b> it = this.b.iterator();
        while (it.hasNext()) {
            it.next().b(activity);
        }
    }

    @Override
    public void c(Activity activity) {
        Iterator<com.mgtv.data.aphone.core.d.b> it = this.b.iterator();
        while (it.hasNext()) {
            it.next().c(activity);
        }
    }

    @Override
    public void d(Activity activity) {
        Iterator<com.mgtv.data.aphone.core.d.b> it = this.b.iterator();
        while (it.hasNext()) {
            it.next().d(activity);
        }
    }

    @Override
    public void e(Activity activity) {
        Iterator<com.mgtv.data.aphone.core.d.b> it = this.b.iterator();
        while (it.hasNext()) {
            it.next().e(activity);
        }
    }

    @Override
    public void b(Activity activity, Bundle bundle) {
        Iterator<com.mgtv.data.aphone.core.d.b> it = this.b.iterator();
        while (it.hasNext()) {
            it.next().b(activity, bundle);
        }
    }

    public void a(com.mgtv.data.aphone.core.d.b bVar) {
        this.b.add(bVar);
    }

    @Override
    public void a(Activity activity) {
        Iterator<com.mgtv.data.aphone.core.d.b> it = this.b.iterator();
        while (it.hasNext()) {
            it.next().a(activity);
        }
    }

    @Override
    public void a(Activity activity, Bundle bundle) {
        Iterator<com.mgtv.data.aphone.core.d.b> it = this.b.iterator();
        while (it.hasNext()) {
            it.next().a(activity, bundle);
        }
    }
}
