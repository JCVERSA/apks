package com.google.android.gms.internal.measurement;

import com.google.android.libraries.places.api.model.PlaceTypes;
import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

final class zzml {
    static final boolean zza;
    private static final Unsafe zzb;
    private static final Class<?> zzc;
    private static final boolean zzd;
    private static final boolean zze;
    private static final zzb zzf;
    private static final boolean zzg;
    private static final boolean zzh;
    private static final long zzi;

    private static final class zza extends zzb {
        zza(Unsafe unsafe) {
            super(unsafe);
        }

        @Override
        public final double zza(Object obj, long j10) {
            return Double.longBitsToDouble(zze(obj, j10));
        }

        @Override
        public final float zzb(Object obj, long j10) {
            return Float.intBitsToFloat(zzd(obj, j10));
        }

        @Override
        public final boolean zzc(Object obj, long j10) {
            return zzml.zza ? zzml.zzf(obj, j10) : zzml.zzg(obj, j10);
        }

        @Override
        public final void zza(Object obj, long j10, boolean z10) {
            if (zzml.zza) {
                zzml.zza(obj, j10, z10);
            } else {
                zzml.zzb(obj, j10, z10);
            }
        }

        @Override
        public final void zza(Object obj, long j10, byte b10) {
            if (!zzml.zza) {
                zzml.zzd(obj, j10, b10);
            } else {
                zzml.zzc(obj, j10, b10);
            }
        }

        @Override
        public final void zza(Object obj, long j10, double d10) {
            zza(obj, j10, Double.doubleToLongBits(d10));
        }

        @Override
        public final void zza(Object obj, long j10, float f10) {
            zza(obj, j10, Float.floatToIntBits(f10));
        }
    }

    private static abstract class zzb {
        Unsafe zza;

        zzb(Unsafe unsafe) {
            this.zza = unsafe;
        }

        public abstract double zza(Object obj, long j10);

        public abstract void zza(Object obj, long j10, byte b10);

        public abstract void zza(Object obj, long j10, double d10);

        public abstract void zza(Object obj, long j10, float f10);

        public final void zza(Object obj, long j10, int i10) {
            this.zza.putInt(obj, j10, i10);
        }

        public abstract void zza(Object obj, long j10, boolean z10);

        public abstract float zzb(Object obj, long j10);

        public final boolean zzb() {
            Unsafe unsafe = this.zza;
            if (unsafe == null) {
                return false;
            }
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                cls.getMethod("getLong", Object.class, Long.TYPE);
                return zzml.zze() != null;
            } catch (Throwable th2) {
                zzml.zza(th2);
                return false;
            }
        }

        public abstract boolean zzc(Object obj, long j10);

        public final int zzd(Object obj, long j10) {
            return this.zza.getInt(obj, j10);
        }

        public final long zze(Object obj, long j10) {
            return this.zza.getLong(obj, j10);
        }

        public final void zza(Object obj, long j10, long j11) {
            this.zza.putLong(obj, j10, j11);
        }

        public final boolean zza() {
            Unsafe unsafe = this.zza;
            if (unsafe == null) {
                return false;
            }
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                cls.getMethod("arrayBaseOffset", Class.class);
                cls.getMethod("arrayIndexScale", Class.class);
                Class<?> cls2 = Long.TYPE;
                cls.getMethod("getInt", Object.class, cls2);
                cls.getMethod("putInt", Object.class, cls2, Integer.TYPE);
                cls.getMethod("getLong", Object.class, cls2);
                cls.getMethod("putLong", Object.class, cls2, cls2);
                cls.getMethod("getObject", Object.class, cls2);
                cls.getMethod("putObject", Object.class, cls2, Object.class);
                return true;
            } catch (Throwable th2) {
                zzml.zza(th2);
                return false;
            }
        }
    }

    private static final class zzc extends zzb {
        zzc(Unsafe unsafe) {
            super(unsafe);
        }

        @Override
        public final double zza(Object obj, long j10) {
            return Double.longBitsToDouble(zze(obj, j10));
        }

        @Override
        public final float zzb(Object obj, long j10) {
            return Float.intBitsToFloat(zzd(obj, j10));
        }

        @Override
        public final boolean zzc(Object obj, long j10) {
            return zzml.zza ? zzml.zzf(obj, j10) : zzml.zzg(obj, j10);
        }

        @Override
        public final void zza(Object obj, long j10, boolean z10) {
            if (zzml.zza) {
                zzml.zza(obj, j10, z10);
            } else {
                zzml.zzb(obj, j10, z10);
            }
        }

        @Override
        public final void zza(Object obj, long j10, byte b10) {
            if (!zzml.zza) {
                zzml.zzd(obj, j10, b10);
            } else {
                zzml.zzc(obj, j10, b10);
            }
        }

        @Override
        public final void zza(Object obj, long j10, double d10) {
            zza(obj, j10, Double.doubleToLongBits(d10));
        }

        @Override
        public final void zza(Object obj, long j10, float f10) {
            zza(obj, j10, Float.floatToIntBits(f10));
        }
    }

    /* JADX WARN: Code duplicated, block: B:8:0x002e  */
    static {
        zzb zzaVar;
        Unsafe unsafeZzb = zzb();
        zzb = unsafeZzb;
        zzc = zzih.zza();
        boolean zZzd = zzd(Long.TYPE);
        zzd = zZzd;
        boolean zZzd2 = zzd(Integer.TYPE);
        zze = zZzd2;
        if (unsafeZzb == null) {
            zzaVar = null;
        } else if (zZzd) {
            zzaVar = new zzc(unsafeZzb);
        } else if (zZzd2) {
            zzaVar = new zza(unsafeZzb);
        } else {
            zzaVar = null;
        }
        zzf = zzaVar;
        zzg = zzaVar == null ? false : zzaVar.zzb();
        zzh = zzaVar == null ? false : zzaVar.zza();
        zzi = zzb(byte[].class);
        zzb(boolean[].class);
        zzc(boolean[].class);
        zzb(int[].class);
        zzc(int[].class);
        zzb(long[].class);
        zzc(long[].class);
        zzb(float[].class);
        zzc(float[].class);
        zzb(double[].class);
        zzc(double[].class);
        zzb(Object[].class);
        zzc(Object[].class);
        Field fieldZze = zze();
        if (fieldZze != null && zzaVar != null) {
            zzaVar.zza.objectFieldOffset(fieldZze);
        }
        zza = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    private zzml() {
    }

    private static int zzc(Class<?> cls) {
        if (zzh) {
            return zzf.zza.arrayIndexScale(cls);
        }
        return -1;
    }

    static long zzd(Object obj, long j10) {
        return zzf.zze(obj, j10);
    }

    static Object zze(Object obj, long j10) {
        return zzf.zza.getObject(obj, j10);
    }

    static boolean zzf(Object obj, long j10) {
        return ((byte) (zzc(obj, (-4) & j10) >>> ((int) (((~j10) & 3) << 3)))) != 0;
    }

    static boolean zzg(Object obj, long j10) {
        return ((byte) (zzc(obj, (-4) & j10) >>> ((int) ((j10 & 3) << 3)))) != 0;
    }

    static boolean zzh(Object obj, long j10) {
        return zzf.zzc(obj, j10);
    }

    static float zzb(Object obj, long j10) {
        return zzf.zzb(obj, j10);
    }

    public static void zzd(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        int i10 = (((int) j10) & 3) << 3;
        zza(obj, j11, ((255 & b10) << i10) | (zzc(obj, j11) & (~(255 << i10))));
    }

    static double zza(Object obj, long j10) {
        return zzf.zza(obj, j10);
    }

    private static int zzb(Class<?> cls) {
        if (zzh) {
            return zzf.zza.arrayBaseOffset(cls);
        }
        return -1;
    }

    static int zzc(Object obj, long j10) {
        return zzf.zzd(obj, j10);
    }

    public static Field zze() {
        Field fieldZza = zza((Class<?>) Buffer.class, "effectiveDirectAddress");
        if (fieldZza != null) {
            return fieldZza;
        }
        Field fieldZza2 = zza((Class<?>) Buffer.class, PlaceTypes.ADDRESS);
        if (fieldZza2 == null || fieldZza2.getType() != Long.TYPE) {
            return null;
        }
        return fieldZza2;
    }

    static <T> T zza(Class<T> cls) {
        try {
            return (T) zzb.allocateInstance(cls);
        } catch (InstantiationException e10) {
            throw new IllegalStateException(e10);
        }
    }

    static void zzc(Object obj, long j10, boolean z10) {
        zzf.zza(obj, j10, z10);
    }

    private static boolean zzd(Class<?> cls) {
        try {
            Class<?> cls2 = zzc;
            Class<?> cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class<?> cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    static Unsafe zzb() {
        try {
            return (Unsafe) AccessController.doPrivileged(new zzmn());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void zzc(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        int iZzc = zzc(obj, j11);
        int i10 = ((~((int) j10)) & 3) << 3;
        zza(obj, j11, ((255 & b10) << i10) | (iZzc & (~(255 << i10))));
    }

    private static Field zza(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    static void zza(Throwable th2) {
        Logger.getLogger(zzml.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: " + String.valueOf(th2));
    }

    static void zzb(Object obj, long j10, boolean z10) {
        zzd(obj, j10, z10 ? (byte) 1 : (byte) 0);
    }

    static boolean zzc() {
        return zzh;
    }

    static void zza(Object obj, long j10, boolean z10) {
        zzc(obj, j10, z10 ? (byte) 1 : (byte) 0);
    }

    static void zza(byte[] bArr, long j10, byte b10) {
        zzf.zza((Object) bArr, zzi + j10, b10);
    }

    static void zza(Object obj, long j10, double d10) {
        zzf.zza(obj, j10, d10);
    }

    static void zza(Object obj, long j10, float f10) {
        zzf.zza(obj, j10, f10);
    }

    static void zza(Object obj, long j10, int i10) {
        zzf.zza(obj, j10, i10);
    }

    static boolean zzd() {
        return zzg;
    }

    static void zza(Object obj, long j10, long j11) {
        zzf.zza(obj, j10, j11);
    }

    static void zza(Object obj, long j10, Object obj2) {
        zzf.zza.putObject(obj, j10, obj2);
    }
}
