package com.google.android.gms.internal.ads;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'zzb' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class zzgym {
    public static final zzgym zza;
    public static final zzgym zzb;
    public static final zzgym zzc;
    public static final zzgym zzd;
    public static final zzgym zze;
    public static final zzgym zzf;
    public static final zzgym zzg;
    public static final zzgym zzh;
    public static final zzgym zzi;
    public static final zzgym zzj;
    private static final zzgym[] zzk;
    private final Class zzl;

    static {
        zzgym zzgymVar = new zzgym("VOID", 0, Void.class, Void.class, null);
        zza = zzgymVar;
        Class cls = Integer.TYPE;
        zzgym zzgymVar2 = new zzgym("INT", 1, cls, Integer.class, 0);
        zzb = zzgymVar2;
        zzgym zzgymVar3 = new zzgym("LONG", 2, Long.TYPE, Long.class, 0L);
        zzc = zzgymVar3;
        zzgym zzgymVar4 = new zzgym("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(0.0f));
        zzd = zzgymVar4;
        zzgym zzgymVar5 = new zzgym("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        zze = zzgymVar5;
        zzgym zzgymVar6 = new zzgym("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        zzf = zzgymVar6;
        zzgym zzgymVar7 = new zzgym("STRING", 6, String.class, String.class, "");
        zzg = zzgymVar7;
        zzgym zzgymVar8 = new zzgym("BYTE_STRING", 7, zzgwn.class, zzgwn.class, zzgwn.zzb);
        zzh = zzgymVar8;
        zzgym zzgymVar9 = new zzgym("ENUM", 8, cls, Integer.class, null);
        zzi = zzgymVar9;
        zzgym zzgymVar10 = new zzgym("MESSAGE", 9, Object.class, Object.class, null);
        zzj = zzgymVar10;
        zzk = new zzgym[]{zzgymVar, zzgymVar2, zzgymVar3, zzgymVar4, zzgymVar5, zzgymVar6, zzgymVar7, zzgymVar8, zzgymVar9, zzgymVar10};
    }

    private zzgym(String str, int i, Class cls, Class cls2, Object obj) {
        super(str, i);
        this.zzl = cls2;
    }

    public static zzgym[] values() {
        return (zzgym[]) zzk.clone();
    }

    public final Class zza() {
        return this.zzl;
    }
}
