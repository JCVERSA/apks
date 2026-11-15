package com.bykv.vk.openvk.Sj.Sj.Sj.vS;

import android.content.Context;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup;
import c6.b;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

public class TKC extends HiB implements SurfaceHolder.Callback, a {

    private static final ArrayList f19539c = new ArrayList();

    private WeakReference f19540a;

    private b f19541b;

    public TKC(Context context) {
        super(context);
        a();
    }

    private void a() {
        b bVar = new b(this);
        this.f19541b = bVar;
        f19539c.add(bVar);
    }

    @Override
    public void Sj(c6.a aVar) {
        this.f19540a = new WeakReference(aVar);
        SurfaceHolder holder = getHolder();
        holder.setFormat(-3);
        Iterator it = f19539c.iterator();
        while (it.hasNext()) {
            b bVar = (b) it.next();
            if (bVar != null && bVar.a() == null) {
                holder.removeCallback(bVar);
                it.remove();
            }
        }
        holder.addCallback(this.f19541b);
    }

    @Override
    protected void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
    }

    @Override
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i10, int i11, int i12) {
        WeakReference weakReference = this.f19540a;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        ((c6.a) this.f19540a.get()).Sj(surfaceHolder, i10, i11, i12);
    }

    @Override
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        WeakReference weakReference = this.f19540a;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        ((c6.a) this.f19540a.get()).Sj(surfaceHolder);
    }

    @Override
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        WeakReference weakReference = this.f19540a;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        ((c6.a) this.f19540a.get()).sP(surfaceHolder);
    }

    @Override
    public void Sj(int i10, int i11) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.height = i11;
        layoutParams.width = i10;
        setLayoutParams(layoutParams);
    }

    @Override
    public View getView() {
        return this;
    }

    public void setWindowVisibilityChangedListener(a.InterfaceC0167a interfaceC0167a) {
    }
}
