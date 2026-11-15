package com.mbridge.msdk.mbnative.controller;

import android.os.Handler;
import android.view.View;
import android.view.ViewTreeObserver;
import com.mbridge.msdk.foundation.tools.b1;
import com.mbridge.msdk.foundation.tools.o0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

public class c {

    private WeakReference<ViewTreeObserver> f35500a;

    private List<View> f35501b;

    private ViewTreeObserver.OnPreDrawListener f35502c;

    private d f35503d;

    private Handler f35504e;

    private boolean f35505f;

    private int f35506g;

    class a implements ViewTreeObserver.OnPreDrawListener {
        a() {
        }

        @Override
        public boolean onPreDraw() {
            c.this.b();
            return true;
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override
        public void run() {
            c.this.d();
        }
    }

    class RunnableC0483c implements Runnable {

        final View f35509a;

        RunnableC0483c(View view) {
            this.f35509a = view;
        }

        @Override
        public void run() {
            ViewTreeObserver viewTreeObserver = this.f35509a.getViewTreeObserver();
            if (viewTreeObserver == null || viewTreeObserver.isAlive()) {
                c.this.f35500a = new WeakReference(viewTreeObserver);
                if (c.this.f35502c != null) {
                    viewTreeObserver.addOnPreDrawListener(c.this.f35502c);
                }
            }
        }
    }

    public interface d {
        void a(ArrayList<View> arrayList, ArrayList<View> arrayList2);
    }

    public c(List<View> list, d dVar, Handler handler, int i10) {
        ArrayList arrayList = new ArrayList();
        this.f35501b = arrayList;
        this.f35502c = null;
        this.f35503d = dVar;
        this.f35504e = handler;
        this.f35506g = i10;
        if (list != null) {
            this.f35501b = list;
        } else {
            arrayList.clear();
        }
        c();
    }

    public void d() {
        try {
            this.f35505f = false;
            List<View> list = this.f35501b;
            if (list == null || list.size() <= 0) {
                return;
            }
            ArrayList<View> arrayList = new ArrayList<>();
            ArrayList<View> arrayList2 = new ArrayList<>();
            for (int i10 = 0; i10 < this.f35501b.size(); i10++) {
                View view = this.f35501b.get(i10);
                if (b(view)) {
                    arrayList.add(view);
                } else {
                    arrayList2.add(view);
                }
            }
            d dVar = this.f35503d;
            if (dVar != null) {
                dVar.a(arrayList, arrayList2);
            }
            if (arrayList.size() > 0) {
                a();
            }
            arrayList.clear();
            arrayList2.clear();
        } catch (Exception unused) {
        }
    }

    public void b() {
        if (this.f35505f) {
            return;
        }
        Handler handler = this.f35504e;
        if (handler != null) {
            if (this.f35506g == 1) {
                d();
            } else {
                handler.postDelayed(new b(), 100L);
            }
        }
        this.f35505f = true;
    }

    private void c() {
        try {
            b();
        } catch (Throwable th2) {
            o0.b("ImpressionTracker", th2.getMessage(), th2);
        }
        try {
            this.f35502c = new a();
        } catch (Throwable th3) {
            o0.b("ImpressionTracker", th3.getMessage(), th3);
        }
    }

    public void a(View view) {
        View viewA;
        View view2;
        if (view != null) {
            viewA = f.a(view.getContext(), view);
            this.f35501b.add(view);
        } else {
            List<View> list = this.f35501b;
            viewA = null;
            if (list != null && list.size() > 0) {
                for (int i10 = 0; i10 < this.f35501b.size() && ((view2 = this.f35501b.get(i10)) == null || (viewA = f.a(view2.getContext(), view2)) == null); i10++) {
                }
            }
        }
        if (viewA == null) {
            return;
        }
        viewA.post(new RunnableC0483c(viewA));
    }

    private boolean b(View view) {
        return !b1.a(view, this.f35506g);
    }

    public void a() {
        try {
            this.f35505f = false;
            WeakReference<ViewTreeObserver> weakReference = this.f35500a;
            if (weakReference != null && weakReference.get() != null) {
                ViewTreeObserver viewTreeObserver = this.f35500a.get();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnPreDrawListener(this.f35502c);
                }
                this.f35500a.clear();
            }
            this.f35503d = null;
            this.f35502c = null;
            List<View> list = this.f35501b;
            if (list != null) {
                list.clear();
            }
            this.f35501b = null;
        } catch (Throwable unused) {
        }
    }
}
