package com.yandex.mobile.ads.impl;

import android.os.Bundle;
import android.os.Parcel;
import androidx.annotation.Nullable;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;

public final class j70 implements o32 {
    private final iv a = new iv();
    private final r32 b = new r32();
    private final ArrayDeque c = new ArrayDeque();
    private int d;
    private boolean e;

    public class a extends s32 {
        public a() {
        }

        @Override
        public final void h() {
            j70.this.a(this);
        }
    }

    public static final class b implements n32 {
        private final long b;
        private final kk0<hv> c;

        public b(long j, kk0<hv> kk0Var) {
            this.b = j;
            this.c = kk0Var;
        }

        @Override
        public final int a() {
            return 1;
        }

        @Override
        public final List<hv> b(long j) {
            return j >= this.b ? this.c : kk0.h();
        }

        @Override
        public final long a(int i) {
            if (i == 0) {
                return this.b;
            }
            throw new IllegalArgumentException();
        }

        @Override
        public final int a(long j) {
            return this.b > j ? 0 : -1;
        }
    }

    public j70() {
        for (int i = 0; i < 2; i++) {
            this.c.addFirst(new a());
        }
        this.d = 0;
    }

    @Override
    @Nullable
    public final r32 b() throws qy {
        if (this.e) {
            throw new IllegalStateException();
        }
        if (this.d != 0) {
            return null;
        }
        this.d = 1;
        return this.b;
    }

    @Override
    public final void flush() {
        if (this.e) {
            throw new IllegalStateException();
        }
        this.b.b();
        this.d = 0;
    }

    @Override
    public final void release() {
        this.e = true;
    }

    @Override
    public final void a(long j) {
    }

    @Override
    @Nullable
    public final s32 a() throws qy {
        if (!this.e) {
            if (this.d != 2 || this.c.isEmpty()) {
                return null;
            }
            s32 s32Var = (s32) this.c.removeFirst();
            if (this.b.f()) {
                s32Var.b(4);
            } else {
                r32 r32Var = this.b;
                long j = r32Var.f;
                iv ivVar = this.a;
                ByteBuffer byteBuffer = r32Var.d;
                byteBuffer.getClass();
                byte[] bArrArray = byteBuffer.array();
                ivVar.getClass();
                Parcel parcelObtain = Parcel.obtain();
                parcelObtain.unmarshall(bArrArray, 0, bArrArray.length);
                parcelObtain.setDataPosition(0);
                Bundle bundle = parcelObtain.readBundle(Bundle.class.getClassLoader());
                parcelObtain.recycle();
                ArrayList parcelableArrayList = bundle.getParcelableArrayList("c");
                parcelableArrayList.getClass();
                s32Var.a(this.b.f, new b(j, lm.a(hv.t, parcelableArrayList)), 0L);
            }
            this.b.b();
            this.d = 0;
            return s32Var;
        }
        throw new IllegalStateException();
    }

    @Override
    public final void a(r32 r32Var) throws qy {
        if (!this.e) {
            if (this.d == 1) {
                if (this.b == r32Var) {
                    this.d = 2;
                    return;
                }
                throw new IllegalArgumentException();
            }
            throw new IllegalStateException();
        }
        throw new IllegalStateException();
    }

    public void a(s32 s32Var) {
        if (this.c.size() < 2) {
            if (!this.c.contains(s32Var)) {
                s32Var.b();
                this.c.addFirst(s32Var);
                return;
            }
            throw new IllegalArgumentException();
        }
        throw new IllegalStateException();
    }
}
