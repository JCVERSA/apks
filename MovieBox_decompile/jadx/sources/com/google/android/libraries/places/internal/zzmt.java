package com.google.android.libraries.places.internal;

public final class zzmt {
    public static int zza(int i10, int i11, String str) {
        String strZzb;
        if (i10 >= 0 && i10 < i11) {
            return i10;
        }
        if (i10 < 0) {
            strZzb = zznb.zzb("%s (%s) must not be negative", "index", Integer.valueOf(i10));
        } else {
            if (i11 < 0) {
                throw new IllegalArgumentException("negative size: " + i11);
            }
            strZzb = zznb.zzb("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i10), Integer.valueOf(i11));
        }
        throw new IndexOutOfBoundsException(strZzb);
    }

    public static int zzb(int i10, int i11, String str) {
        if (i10 < 0 || i10 > i11) {
            throw new IndexOutOfBoundsException(zzt(i10, i11, "index"));
        }
        return i10;
    }

    public static Object zzc(Object obj, Object obj2) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException((String) obj2);
    }

    public static Object zzd(Object obj, String str, Object obj2) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(zznb.zzb(str, obj2));
    }

    public static void zze(boolean z10) {
        if (!z10) {
            throw new IllegalArgumentException();
        }
    }

    public static void zzf(boolean z10, Object obj) {
        if (!z10) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static void zzg(boolean z10, String str, char c10) {
        if (!z10) {
            throw new IllegalArgumentException(zznb.zzb(str, Character.valueOf(c10)));
        }
    }

    public static void zzh(boolean z10, String str, int i10) {
        if (!z10) {
            throw new IllegalArgumentException(zznb.zzb(str, Integer.valueOf(i10)));
        }
    }

    public static void zzi(boolean z10, String str, long j10) {
        if (!z10) {
            throw new IllegalArgumentException(zznb.zzb(str, Long.valueOf(j10)));
        }
    }

    public static void zzj(boolean z10, String str, Object obj) {
        if (!z10) {
            throw new IllegalArgumentException(zznb.zzb(str, obj));
        }
    }

    public static void zzk(boolean z10, String str, int i10, Object obj) {
        if (!z10) {
            throw new IllegalArgumentException(zznb.zzb(str, 4800, obj));
        }
    }

    public static void zzl(boolean z10, String str, Object obj, Object obj2) {
        if (!z10) {
            throw new IllegalArgumentException(zznb.zzb(str, obj, obj2));
        }
    }

    public static void zzm(boolean z10, String str, Object obj, Object obj2, Object obj3) {
        if (!z10) {
            throw new IllegalArgumentException(zznb.zzb(str, obj, obj2, obj3));
        }
    }

    public static void zzn(int i10, int i11, int i12) {
        String strZzt;
        if (i10 < 0 || i11 < i10 || i11 > i12) {
            if (i10 < 0 || i10 > i12) {
                strZzt = zzt(i10, i12, "start index");
            } else {
                strZzt = (i11 < 0 || i11 > i12) ? zzt(i11, i12, "end index") : zznb.zzb("end index (%s) must not be less than start index (%s)", Integer.valueOf(i11), Integer.valueOf(i10));
            }
            throw new IndexOutOfBoundsException(strZzt);
        }
    }

    public static void zzo(boolean z10) {
        if (!z10) {
            throw new IllegalStateException();
        }
    }

    public static void zzp(boolean z10, Object obj) {
        if (!z10) {
            throw new IllegalStateException((String) obj);
        }
    }

    public static void zzq(boolean z10, String str, int i10) {
        if (!z10) {
            throw new IllegalStateException(zznb.zzb(str, Integer.valueOf(i10)));
        }
    }

    public static void zzr(boolean z10, String str, Object obj) {
        if (!z10) {
            throw new IllegalStateException(zznb.zzb(str, obj));
        }
    }

    public static void zzs(boolean z10, String str, Object obj, Object obj2, Object obj3) {
        if (!z10) {
            throw new IllegalStateException(zznb.zzb(str, obj, obj2, obj3));
        }
    }

    private static String zzt(int i10, int i11, String str) {
        if (i10 < 0) {
            return zznb.zzb("%s (%s) must not be negative", str, Integer.valueOf(i10));
        }
        if (i11 >= 0) {
            return zznb.zzb("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i10), Integer.valueOf(i11));
        }
        throw new IllegalArgumentException("negative size: " + i11);
    }
}
