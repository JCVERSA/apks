package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzbn;
import defpackage.f7f;
import java.util.List;

public abstract class zzed extends zzbn implements zzee {
    public zzed() {
        super("com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                zzaw zzawVar = (zzaw) f7f.a(parcel, zzaw.CREATOR);
                zzq zzqVar = (zzq) f7f.a(parcel, zzq.CREATOR);
                f7f.c(parcel);
                zzk(zzawVar, zzqVar);
                parcel2.writeNoException();
                return true;
            case 2:
                zzlc zzlcVar = (zzlc) f7f.a(parcel, zzlc.CREATOR);
                zzq zzqVar2 = (zzq) f7f.a(parcel, zzq.CREATOR);
                f7f.c(parcel);
                zzt(zzlcVar, zzqVar2);
                parcel2.writeNoException();
                return true;
            case 3:
            case 8:
            default:
                return false;
            case 4:
                zzq zzqVar3 = (zzq) f7f.a(parcel, zzq.CREATOR);
                f7f.c(parcel);
                zzj(zzqVar3);
                parcel2.writeNoException();
                return true;
            case 5:
                zzaw zzawVar2 = (zzaw) f7f.a(parcel, zzaw.CREATOR);
                String string = parcel.readString();
                String string2 = parcel.readString();
                f7f.c(parcel);
                zzl(zzawVar2, string, string2);
                parcel2.writeNoException();
                return true;
            case 6:
                zzq zzqVar4 = (zzq) f7f.a(parcel, zzq.CREATOR);
                f7f.c(parcel);
                zzs(zzqVar4);
                parcel2.writeNoException();
                return true;
            case 7:
                zzq zzqVar5 = (zzq) f7f.a(parcel, zzq.CREATOR);
                boolean zG = f7f.g(parcel);
                f7f.c(parcel);
                List listZze = zze(zzqVar5, zG);
                parcel2.writeNoException();
                parcel2.writeTypedList(listZze);
                return true;
            case 9:
                zzaw zzawVar3 = (zzaw) f7f.a(parcel, zzaw.CREATOR);
                String string3 = parcel.readString();
                f7f.c(parcel);
                byte[] bArrZzu = zzu(zzawVar3, string3);
                parcel2.writeNoException();
                parcel2.writeByteArray(bArrZzu);
                return true;
            case 10:
                long j = parcel.readLong();
                String string4 = parcel.readString();
                String string5 = parcel.readString();
                String string6 = parcel.readString();
                f7f.c(parcel);
                zzq(j, string4, string5, string6);
                parcel2.writeNoException();
                return true;
            case 11:
                zzq zzqVar6 = (zzq) f7f.a(parcel, zzq.CREATOR);
                f7f.c(parcel);
                String strZzd = zzd(zzqVar6);
                parcel2.writeNoException();
                parcel2.writeString(strZzd);
                return true;
            case 12:
                zzac zzacVar = (zzac) f7f.a(parcel, zzac.CREATOR);
                zzq zzqVar7 = (zzq) f7f.a(parcel, zzq.CREATOR);
                f7f.c(parcel);
                zzn(zzacVar, zzqVar7);
                parcel2.writeNoException();
                return true;
            case 13:
                zzac zzacVar2 = (zzac) f7f.a(parcel, zzac.CREATOR);
                f7f.c(parcel);
                zzo(zzacVar2);
                parcel2.writeNoException();
                return true;
            case 14:
                String string7 = parcel.readString();
                String string8 = parcel.readString();
                boolean zG2 = f7f.g(parcel);
                zzq zzqVar8 = (zzq) f7f.a(parcel, zzq.CREATOR);
                f7f.c(parcel);
                List listZzh = zzh(string7, string8, zG2, zzqVar8);
                parcel2.writeNoException();
                parcel2.writeTypedList(listZzh);
                return true;
            case 15:
                String string9 = parcel.readString();
                String string10 = parcel.readString();
                String string11 = parcel.readString();
                boolean zG3 = f7f.g(parcel);
                f7f.c(parcel);
                List listZzi = zzi(string9, string10, string11, zG3);
                parcel2.writeNoException();
                parcel2.writeTypedList(listZzi);
                return true;
            case 16:
                String string12 = parcel.readString();
                String string13 = parcel.readString();
                zzq zzqVar9 = (zzq) f7f.a(parcel, zzq.CREATOR);
                f7f.c(parcel);
                List listZzf = zzf(string12, string13, zzqVar9);
                parcel2.writeNoException();
                parcel2.writeTypedList(listZzf);
                return true;
            case 17:
                String string14 = parcel.readString();
                String string15 = parcel.readString();
                String string16 = parcel.readString();
                f7f.c(parcel);
                List listZzg = zzg(string14, string15, string16);
                parcel2.writeNoException();
                parcel2.writeTypedList(listZzg);
                return true;
            case 18:
                zzq zzqVar10 = (zzq) f7f.a(parcel, zzq.CREATOR);
                f7f.c(parcel);
                zzm(zzqVar10);
                parcel2.writeNoException();
                return true;
            case 19:
                Bundle bundle = (Bundle) f7f.a(parcel, Bundle.CREATOR);
                zzq zzqVar11 = (zzq) f7f.a(parcel, zzq.CREATOR);
                f7f.c(parcel);
                zzr(bundle, zzqVar11);
                parcel2.writeNoException();
                return true;
            case 20:
                zzq zzqVar12 = (zzq) f7f.a(parcel, zzq.CREATOR);
                f7f.c(parcel);
                zzp(zzqVar12);
                parcel2.writeNoException();
                return true;
        }
    }
}
