package com.google.android.libraries.places.internal;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

final class zzatm extends zzarw implements RandomAccess, zzauc, zzavo {
    private static final zzatm zza = new zzatm(new float[0], 0, false);
    private float[] zzb;
    private int zzc;

    zzatm() {
        this(new float[10], 0, true);
    }

    private final String zzf(int i10) {
        return "Index:" + i10 + ", Size:" + this.zzc;
    }

    private final void zzg(int i10) {
        if (i10 < 0 || i10 >= this.zzc) {
            throw new IndexOutOfBoundsException(zzf(i10));
        }
    }

    @Override
    public final void add(int i10, Object obj) {
        int i11;
        float fFloatValue = ((Float) obj).floatValue();
        zza();
        if (i10 < 0 || i10 > (i11 = this.zzc)) {
            throw new IndexOutOfBoundsException(zzf(i10));
        }
        int i12 = i10 + 1;
        float[] fArr = this.zzb;
        if (i11 < fArr.length) {
            System.arraycopy(fArr, i10, fArr, i12, i11 - i10);
        } else {
            float[] fArr2 = new float[((i11 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i10);
            System.arraycopy(this.zzb, i10, fArr2, i12, this.zzc - i10);
            this.zzb = fArr2;
        }
        this.zzb[i10] = fFloatValue;
        this.zzc++;
        ((AbstractList) this).modCount++;
    }

    @Override
    public final boolean addAll(Collection collection) {
        zza();
        byte[] bArr = zzaud.zzd;
        collection.getClass();
        if (!(collection instanceof zzatm)) {
            return super.addAll(collection);
        }
        zzatm zzatmVar = (zzatm) collection;
        int i10 = zzatmVar.zzc;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.zzc;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        float[] fArr = this.zzb;
        if (i12 > fArr.length) {
            this.zzb = Arrays.copyOf(fArr, i12);
        }
        System.arraycopy(zzatmVar.zzb, 0, this.zzb, this.zzc, zzatmVar.zzc);
        this.zzc = i12;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzatm)) {
            return super.equals(obj);
        }
        zzatm zzatmVar = (zzatm) obj;
        if (this.zzc != zzatmVar.zzc) {
            return false;
        }
        float[] fArr = zzatmVar.zzb;
        for (int i10 = 0; i10 < this.zzc; i10++) {
            if (Float.floatToIntBits(this.zzb[i10]) != Float.floatToIntBits(fArr[i10])) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final Object get(int i10) {
        zzg(i10);
        return Float.valueOf(this.zzb[i10]);
    }

    @Override
    public final int hashCode() {
        int iFloatToIntBits = 1;
        for (int i10 = 0; i10 < this.zzc; i10++) {
            iFloatToIntBits = (iFloatToIntBits * 31) + Float.floatToIntBits(this.zzb[i10]);
        }
        return iFloatToIntBits;
    }

    @Override
    public final int indexOf(Object obj) {
        if (!(obj instanceof Float)) {
            return -1;
        }
        float fFloatValue = ((Float) obj).floatValue();
        int i10 = this.zzc;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.zzb[i11] == fFloatValue) {
                return i11;
            }
        }
        return -1;
    }

    @Override
    public final Object remove(int i10) {
        zza();
        zzg(i10);
        float[] fArr = this.zzb;
        float f10 = fArr[i10];
        int i11 = this.zzc;
        if (i10 < i11 - 1) {
            System.arraycopy(fArr, i10 + 1, fArr, i10, (i11 - i10) - 1);
        }
        this.zzc--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f10);
    }

    @Override
    protected final void removeRange(int i10, int i11) {
        zza();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        float[] fArr = this.zzb;
        System.arraycopy(fArr, i11, fArr, i10, this.zzc - i11);
        this.zzc -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    @Override
    public final Object set(int i10, Object obj) {
        float fFloatValue = ((Float) obj).floatValue();
        zza();
        zzg(i10);
        float[] fArr = this.zzb;
        float f10 = fArr[i10];
        fArr[i10] = fFloatValue;
        return Float.valueOf(f10);
    }

    @Override
    public final int size() {
        return this.zzc;
    }

    @Override
    public final zzauc zzd(int i10) {
        if (i10 >= this.zzc) {
            return new zzatm(Arrays.copyOf(this.zzb, i10), this.zzc, true);
        }
        throw new IllegalArgumentException();
    }

    public final void zze(float f10) {
        zza();
        int i10 = this.zzc;
        float[] fArr = this.zzb;
        if (i10 == fArr.length) {
            float[] fArr2 = new float[((i10 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i10);
            this.zzb = fArr2;
        }
        float[] fArr3 = this.zzb;
        int i11 = this.zzc;
        this.zzc = i11 + 1;
        fArr3[i11] = f10;
    }

    private zzatm(float[] fArr, int i10, boolean z10) {
        super(z10);
        this.zzb = fArr;
        this.zzc = i10;
    }

    @Override
    public final boolean add(Object obj) {
        zze(((Float) obj).floatValue());
        return true;
    }
}
