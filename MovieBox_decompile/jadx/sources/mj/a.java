package mj;

import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.bitmap_recycle.LruBitmapPool;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

public final class a extends LruBitmapPool {
    public a(long j10) {
        super(j10);
    }

    @Override
    public Bitmap get(int i10, int i11, Bitmap.Config config) {
        Intrinsics.h(config, "config");
        Bitmap bitmap = super.get(i10, i11, config);
        Intrinsics.g(bitmap, "get(...)");
        if (!bitmap.isRecycled()) {
            return bitmap;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i10, i11, config);
        Intrinsics.e(bitmapCreateBitmap);
        return bitmapCreateBitmap;
    }

    @Override
    public Bitmap getDirty(int i10, int i11, Bitmap.Config config) {
        Intrinsics.h(config, "config");
        Bitmap dirty = super.getDirty(i10, i11, config);
        Intrinsics.g(dirty, "getDirty(...)");
        if (!dirty.isRecycled()) {
            return dirty;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i10, i11, config);
        Intrinsics.e(bitmapCreateBitmap);
        return bitmapCreateBitmap;
    }

    @Override
    public void put(Bitmap bitmap) {
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            super.put(bitmap);
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }
}
