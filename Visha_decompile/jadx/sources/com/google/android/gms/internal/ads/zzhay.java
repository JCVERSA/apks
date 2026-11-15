package com.google.android.gms.internal.ads;

import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTXXX;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'zzc' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class zzhay {
    public static final zzhay zza;
    public static final zzhay zzb;
    public static final zzhay zzc;
    public static final zzhay zzd;
    public static final zzhay zze;
    public static final zzhay zzf;
    public static final zzhay zzg;
    public static final zzhay zzh;
    public static final zzhay zzi;
    public static final zzhay zzj;
    public static final zzhay zzk;
    public static final zzhay zzl;
    public static final zzhay zzm;
    public static final zzhay zzn;
    public static final zzhay zzo;
    public static final zzhay zzp;
    public static final zzhay zzq;
    public static final zzhay zzr;
    private static final zzhay[] zzs;
    private final zzhaz zzt;

    static {
        zzhay zzhayVar = new zzhay("DOUBLE", 0, zzhaz.DOUBLE, 1);
        zza = zzhayVar;
        zzhay zzhayVar2 = new zzhay("FLOAT", 1, zzhaz.FLOAT, 5);
        zzb = zzhayVar2;
        zzhaz zzhazVar = zzhaz.LONG;
        zzhay zzhayVar3 = new zzhay("INT64", 2, zzhazVar, 0);
        zzc = zzhayVar3;
        zzhay zzhayVar4 = new zzhay("UINT64", 3, zzhazVar, 0);
        zzd = zzhayVar4;
        zzhaz zzhazVar2 = zzhaz.INT;
        zzhay zzhayVar5 = new zzhay("INT32", 4, zzhazVar2, 0);
        zze = zzhayVar5;
        zzhay zzhayVar6 = new zzhay("FIXED64", 5, zzhazVar, 1);
        zzf = zzhayVar6;
        zzhay zzhayVar7 = new zzhay("FIXED32", 6, zzhazVar2, 5);
        zzg = zzhayVar7;
        zzhay zzhayVar8 = new zzhay("BOOL", 7, zzhaz.BOOLEAN, 0);
        zzh = zzhayVar8;
        zzhay zzhayVar9 = new zzhay("STRING", 8, zzhaz.STRING, 2);
        zzi = zzhayVar9;
        zzhaz zzhazVar3 = zzhaz.MESSAGE;
        zzhay zzhayVar10 = new zzhay(FrameBodyTXXX.GROUP, 9, zzhazVar3, 3);
        zzj = zzhayVar10;
        zzhay zzhayVar11 = new zzhay("MESSAGE", 10, zzhazVar3, 2);
        zzk = zzhayVar11;
        zzhay zzhayVar12 = new zzhay("BYTES", 11, zzhaz.BYTE_STRING, 2);
        zzl = zzhayVar12;
        zzhay zzhayVar13 = new zzhay("UINT32", 12, zzhazVar2, 0);
        zzm = zzhayVar13;
        zzhay zzhayVar14 = new zzhay("ENUM", 13, zzhaz.ENUM, 0);
        zzn = zzhayVar14;
        zzhay zzhayVar15 = new zzhay("SFIXED32", 14, zzhazVar2, 5);
        zzo = zzhayVar15;
        zzhay zzhayVar16 = new zzhay("SFIXED64", 15, zzhazVar, 1);
        zzp = zzhayVar16;
        zzhay zzhayVar17 = new zzhay("SINT32", 16, zzhazVar2, 0);
        zzq = zzhayVar17;
        zzhay zzhayVar18 = new zzhay("SINT64", 17, zzhazVar, 0);
        zzr = zzhayVar18;
        zzs = new zzhay[]{zzhayVar, zzhayVar2, zzhayVar3, zzhayVar4, zzhayVar5, zzhayVar6, zzhayVar7, zzhayVar8, zzhayVar9, zzhayVar10, zzhayVar11, zzhayVar12, zzhayVar13, zzhayVar14, zzhayVar15, zzhayVar16, zzhayVar17, zzhayVar18};
    }

    private zzhay(String str, int i, zzhaz zzhazVar, int i2) {
        super(str, i);
        this.zzt = zzhazVar;
    }

    public static zzhay[] values() {
        return (zzhay[]) zzs.clone();
    }

    public final zzhaz zza() {
        return this.zzt;
    }
}
