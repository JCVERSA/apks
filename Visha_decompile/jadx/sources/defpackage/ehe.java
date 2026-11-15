package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import com.google.android.gms.internal.ads.zzfww;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.Iterator;

public final class ehe implements rae {
    public final rae a;
    public final vge b;
    public bhe g;
    public erj h;
    public boolean i;
    public int d = 0;
    public int e = 0;
    public byte[] f = kfh.c;
    public final u4h c = new u4h();

    public ehe(rae raeVar, vge vgeVar) {
        this.a = raeVar;
        this.b = vgeVar;
    }

    public static void h(ehe eheVar, long j, int i, qge qgeVar) {
        n7g.b(eheVar.h);
        zzfww zzfwwVar = qgeVar.a;
        long j2 = qgeVar.c;
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>(zzfwwVar.size());
        Iterator<E> it = zzfwwVar.iterator();
        while (it.hasNext()) {
            arrayList.add(((fyf) it.next()).a());
        }
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("c", arrayList);
        bundle.putLong("d", j2);
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeBundle(bundle);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        u4h u4hVar = eheVar.c;
        int length = bArrMarshall.length;
        u4hVar.j(bArrMarshall, length);
        rae raeVar = eheVar.a;
        raeVar.d(u4hVar, length);
        long j3 = qgeVar.b;
        if (j3 == C.TIME_UNSET) {
            n7g.f(eheVar.h.t == Long.MAX_VALUE);
        } else {
            long j4 = eheVar.h.t;
            j = j4 == Long.MAX_VALUE ? j + j3 : j3 + j4;
        }
        raeVar.g(j, i | 1, length, 0, null);
    }

    @Override
    public final int a(k8j k8jVar, int i, boolean z) {
        return pae.a(this, k8jVar, i, z);
    }

    @Override
    public final void b(u4h u4hVar, int i, int i2) {
        if (this.g == null) {
            this.a.b(u4hVar, i, i2);
            return;
        }
        j(i);
        u4hVar.h(this.f, this.e, i);
        this.e += i;
    }

    @Override
    public final void c(long j) {
    }

    @Override
    public final void d(u4h u4hVar, int i) {
        pae.b(this, u4hVar, i);
    }

    @Override
    public final int e(k8j k8jVar, int i, boolean z, int i2) throws EOFException {
        if (this.g == null) {
            return this.a.e(k8jVar, i, z, 0);
        }
        j(i);
        int iB = k8jVar.b(this.f, this.e, i);
        if (iB != -1) {
            this.e += iB;
            return iB;
        }
        if (z) {
            return -1;
        }
        throw new EOFException();
    }

    @Override
    public final void f(erj erjVar) {
        String str = erjVar.o;
        str.getClass();
        n7g.d(bue.b(str) == 3);
        if (!erjVar.equals(this.h)) {
            this.h = erjVar;
            vge vgeVar = this.b;
            this.g = vgeVar.b(erjVar) ? vgeVar.c(erjVar) : null;
        }
        if (this.g == null) {
            this.a.f(erjVar);
            return;
        }
        rae raeVar = this.a;
        gpj gpjVarB = erjVar.b();
        gpjVarB.E(MimeTypes.APPLICATION_MEDIA3_CUES);
        gpjVarB.c(str);
        gpjVarB.I(Long.MAX_VALUE);
        gpjVarB.g(this.b.a(erjVar));
        raeVar.f(gpjVarB.K());
    }

    @Override
    public final void g(final long j, final int i, int i2, int i3, qae qaeVar) {
        if (this.g == null) {
            this.a.g(j, i, i2, i3, qaeVar);
            return;
        }
        n7g.e(qaeVar == null, "DRM on subtitles is not supported");
        int i4 = (this.e - i3) - i2;
        try {
            this.g.a(this.f, i4, i2, wge.a(), new qfg() {
                @Override
                public final void zza(Object obj) {
                    ehe.h(this.a, j, i, (qge) obj);
                }
            });
        } catch (RuntimeException e) {
            if (!this.i) {
                throw e;
            }
            zrg.g("SubtitleTranscodingTO", "Parsing subtitles failed, ignoring sample.", e);
        }
        int i5 = i4 + i2;
        this.d = i5;
        if (i5 == this.e) {
            this.d = 0;
            this.e = 0;
        }
    }

    public final void i(boolean z) {
        this.i = true;
    }

    public final void j(int i) {
        int length = this.f.length;
        int i2 = this.e;
        if (length - i2 >= i) {
            return;
        }
        int i3 = i2 - this.d;
        int iMax = Math.max(i3 + i3, i + i3);
        byte[] bArr = this.f;
        byte[] bArr2 = iMax <= bArr.length ? bArr : new byte[iMax];
        System.arraycopy(bArr, this.d, bArr2, 0, i3);
        this.d = 0;
        this.e = i3;
        this.f = bArr2;
    }
}
