package com.journeyapps.barcodescanner.camera;

import af.q;
import android.graphics.Rect;
import java.util.List;

public class m {

    private q f33171a;

    private int f33172b;

    private boolean f33173c = false;

    private PreviewScalingStrategy f33174d = new n();

    public m(int i10, q qVar) {
        this.f33172b = i10;
        this.f33171a = qVar;
    }

    public q a(List list, boolean z10) {
        return this.f33174d.b(list, b(z10));
    }

    public q b(boolean z10) {
        q qVar = this.f33171a;
        if (qVar == null) {
            return null;
        }
        return z10 ? qVar.d() : qVar;
    }

    public int c() {
        return this.f33172b;
    }

    public Rect d(q qVar) {
        return this.f33174d.d(qVar, this.f33171a);
    }

    public void e(PreviewScalingStrategy previewScalingStrategy) {
        this.f33174d = previewScalingStrategy;
    }
}
