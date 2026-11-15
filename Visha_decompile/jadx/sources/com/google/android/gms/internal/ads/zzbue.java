package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzee;
import com.google.android.gms.ads.internal.client.zzm;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.hbf;
import defpackage.z09;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class zzbue extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbue> CREATOR = new hbf();
    public final long zzA;
    public final String zzB;
    public final float zzC;
    public final int zzD;
    public final int zzE;
    public final boolean zzF;
    public final String zzG;
    public final boolean zzH;
    public final String zzI;
    public final boolean zzJ;
    public final int zzK;
    public final Bundle zzL;
    public final String zzM;

    @Nullable
    public final zzee zzN;
    public final boolean zzO;
    public final Bundle zzP;

    @Nullable
    public final String zzQ;

    @Nullable
    public final String zzR;

    @Nullable
    public final String zzS;
    public final boolean zzT;
    public final List zzU;
    public final String zzV;
    public final List zzW;
    public final int zzX;
    public final boolean zzY;
    public final boolean zzZ;
    public final int zza;
    public final boolean zzaa;
    public final ArrayList zzab;
    public final String zzac;
    public final zzblt zzad;

    @Nullable
    public final String zzae;
    public final Bundle zzaf;

    @Nullable
    public final Bundle zzb;
    public final zzm zzc;
    public final com.google.android.gms.ads.internal.client.zzr zzd;
    public final String zze;
    public final ApplicationInfo zzf;

    @Nullable
    public final PackageInfo zzg;
    public final String zzh;
    public final String zzi;
    public final String zzj;
    public final VersionInfoParcel zzk;
    public final Bundle zzl;
    public final int zzm;
    public final List zzn;
    public final Bundle zzo;
    public final boolean zzp;
    public final int zzq;
    public final int zzr;
    public final float zzs;
    public final String zzt;
    public final long zzu;
    public final String zzv;

    @Nullable
    public final List zzw;
    public final String zzx;
    public final zzbfi zzy;
    public final List zzz;

    public zzbue(int i, Bundle bundle, zzm zzmVar, com.google.android.gms.ads.internal.client.zzr zzrVar, String str, ApplicationInfo applicationInfo, PackageInfo packageInfo, String str2, String str3, String str4, VersionInfoParcel versionInfoParcel, Bundle bundle2, int i2, List list, Bundle bundle3, boolean z, int i3, int i4, float f, String str5, long j, String str6, List list2, String str7, zzbfi zzbfiVar, List list3, long j2, String str8, float f2, boolean z2, int i5, int i6, boolean z3, String str9, String str10, boolean z4, int i7, Bundle bundle4, String str11, zzee zzeeVar, boolean z5, Bundle bundle5, @Nullable String str12, @Nullable String str13, @Nullable String str14, boolean z6, List list4, String str15, List list5, int i8, boolean z7, boolean z8, boolean z9, ArrayList arrayList, String str16, zzblt zzbltVar, @Nullable String str17, Bundle bundle6) {
        this.zza = i;
        this.zzb = bundle;
        this.zzc = zzmVar;
        this.zzd = zzrVar;
        this.zze = str;
        this.zzf = applicationInfo;
        this.zzg = packageInfo;
        this.zzh = str2;
        this.zzi = str3;
        this.zzj = str4;
        this.zzk = versionInfoParcel;
        this.zzl = bundle2;
        this.zzm = i2;
        this.zzn = list;
        this.zzz = list3 == null ? Collections.emptyList() : Collections.unmodifiableList(list3);
        this.zzo = bundle3;
        this.zzp = z;
        this.zzq = i3;
        this.zzr = i4;
        this.zzs = f;
        this.zzt = str5;
        this.zzu = j;
        this.zzv = str6;
        this.zzw = list2 == null ? Collections.emptyList() : Collections.unmodifiableList(list2);
        this.zzx = str7;
        this.zzy = zzbfiVar;
        this.zzA = j2;
        this.zzB = str8;
        this.zzC = f2;
        this.zzH = z2;
        this.zzD = i5;
        this.zzE = i6;
        this.zzF = z3;
        this.zzG = str9;
        this.zzI = str10;
        this.zzJ = z4;
        this.zzK = i7;
        this.zzL = bundle4;
        this.zzM = str11;
        this.zzN = zzeeVar;
        this.zzO = z5;
        this.zzP = bundle5;
        this.zzQ = str12;
        this.zzR = str13;
        this.zzS = str14;
        this.zzT = z6;
        this.zzU = list4;
        this.zzV = str15;
        this.zzW = list5;
        this.zzX = i8;
        this.zzY = z7;
        this.zzZ = z8;
        this.zzaa = z9;
        this.zzab = arrayList;
        this.zzac = str16;
        this.zzad = zzbltVar;
        this.zzae = str17;
        this.zzaf = bundle6;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zza;
        int iA = z09.a(parcel);
        z09.s(parcel, 1, i2);
        z09.j(parcel, 2, this.zzb, false);
        z09.B(parcel, 3, this.zzc, i, false);
        z09.B(parcel, 4, this.zzd, i, false);
        z09.D(parcel, 5, this.zze, false);
        z09.B(parcel, 6, this.zzf, i, false);
        z09.B(parcel, 7, this.zzg, i, false);
        z09.D(parcel, 8, this.zzh, false);
        z09.D(parcel, 9, this.zzi, false);
        z09.D(parcel, 10, this.zzj, false);
        z09.B(parcel, 11, this.zzk, i, false);
        z09.j(parcel, 12, this.zzl, false);
        z09.s(parcel, 13, this.zzm);
        z09.F(parcel, 14, this.zzn, false);
        z09.j(parcel, 15, this.zzo, false);
        z09.g(parcel, 16, this.zzp);
        z09.s(parcel, 18, this.zzq);
        z09.s(parcel, 19, this.zzr);
        z09.o(parcel, 20, this.zzs);
        z09.D(parcel, 21, this.zzt, false);
        z09.w(parcel, 25, this.zzu);
        z09.D(parcel, 26, this.zzv, false);
        z09.F(parcel, 27, this.zzw, false);
        z09.D(parcel, 28, this.zzx, false);
        z09.B(parcel, 29, this.zzy, i, false);
        z09.F(parcel, 30, this.zzz, false);
        z09.w(parcel, 31, this.zzA);
        z09.D(parcel, 33, this.zzB, false);
        z09.o(parcel, 34, this.zzC);
        z09.s(parcel, 35, this.zzD);
        z09.s(parcel, 36, this.zzE);
        z09.g(parcel, 37, this.zzF);
        z09.D(parcel, 39, this.zzG, false);
        z09.g(parcel, 40, this.zzH);
        z09.D(parcel, 41, this.zzI, false);
        z09.g(parcel, 42, this.zzJ);
        z09.s(parcel, 43, this.zzK);
        z09.j(parcel, 44, this.zzL, false);
        z09.D(parcel, 45, this.zzM, false);
        z09.B(parcel, 46, this.zzN, i, false);
        z09.g(parcel, 47, this.zzO);
        z09.j(parcel, 48, this.zzP, false);
        z09.D(parcel, 49, this.zzQ, false);
        z09.D(parcel, 50, this.zzR, false);
        z09.D(parcel, 51, this.zzS, false);
        z09.g(parcel, 52, this.zzT);
        z09.u(parcel, 53, this.zzU, false);
        z09.D(parcel, 54, this.zzV, false);
        z09.F(parcel, 55, this.zzW, false);
        z09.s(parcel, 56, this.zzX);
        z09.g(parcel, 57, this.zzY);
        z09.g(parcel, 58, this.zzZ);
        z09.g(parcel, 59, this.zzaa);
        z09.F(parcel, 60, this.zzab, false);
        z09.D(parcel, 61, this.zzac, false);
        z09.B(parcel, 63, this.zzad, i, false);
        z09.D(parcel, 64, this.zzae, false);
        z09.j(parcel, 65, this.zzaf, false);
        z09.b(parcel, iA);
    }
}
