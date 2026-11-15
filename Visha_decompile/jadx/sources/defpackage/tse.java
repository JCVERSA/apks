package defpackage;

import android.content.Context;
import android.content.pm.ApkChecksum;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$OnChecksumsReadyListener;
import android.os.Build;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.internal.ads.e0;
import com.google.android.gms.internal.ads.h;
import com.google.android.gms.internal.ads.k;
import com.google.android.gms.internal.ads.n8;
import com.google.android.gms.internal.ads.t;
import java.io.ByteArrayInputStream;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

public final class tse extends tte {
    public static final ute l = new ute();
    public final k i;
    public final Context j;
    public final dqe k;

    public tse(e0 e0Var, String str, String str2, ooe ooeVar, int i, int i2, Context context, h hVar, k kVar, dqe dqeVar) {
        super(e0Var, "I6IO+LQt3rQ7IR+La1Wf05vP+T+JXIE2+dXiYoVRp9J6etcZYK5uAv7Y0XaXL0/V", "0eX3+h8Ltl5Zobd4L6G06UqDuFfRlHQ71PPApHgzDdE=", ooeVar, i, 27);
        this.j = context;
        this.i = kVar;
        this.k = dqeVar;
    }

    @Override
    public final void a() {
        int i;
        wpe wpeVarC;
        wpe wpeVar;
        ute uteVar = l;
        Context context = this.j;
        AtomicReference atomicReferenceA = uteVar.a(context.getPackageName());
        synchronized (atomicReferenceA) {
            try {
                wpe wpeVar2 = (wpe) atomicReferenceA.get();
                if (wpeVar2 == null || jse.d(wpeVar2.b) || wpeVar2.b.equals(ExifInterface.LONGITUDE_EAST) || wpeVar2.b.equals("0000000000000000000000000000000000000000000000000000000000000000")) {
                    if (jse.d(null)) {
                        jse.d(null);
                        i = 3;
                    } else {
                        i = 5;
                    }
                    if (this.k != null) {
                        wpeVarC = c();
                    } else {
                        boolean z = false;
                        if (i == 3 && !this.i.e0()) {
                            z = true;
                        }
                        Boolean boolValueOf = Boolean.valueOf(z);
                        Boolean bool = (Boolean) zzbd.zzc().b(cye.H2);
                        String strB = ((Boolean) zzbd.zzc().b(cye.G2)).booleanValue() ? b() : null;
                        if (bool.booleanValue() && this.b.o() && jse.d(strB)) {
                            strB = d();
                        }
                        wpe wpeVar3 = new wpe((String) this.f.invoke(null, context, boolValueOf, strB));
                        if (jse.d(wpeVar3.b) || wpeVar3.b.equals(ExifInterface.LONGITUDE_EAST)) {
                            int i2 = i - 1;
                            if (i2 == 3) {
                                String strD = d();
                                if (!jse.d(strD)) {
                                    wpeVar3.b = strD;
                                }
                            } else if (i2 == 4) {
                                throw null;
                            }
                        }
                        wpeVarC = wpeVar3;
                    }
                    atomicReferenceA.set(wpeVarC);
                }
                wpeVar = (wpe) atomicReferenceA.get();
            } catch (Throwable th) {
                throw th;
            }
        }
        ooe ooeVar = this.e;
        synchronized (ooeVar) {
            if (wpeVar != null) {
                try {
                    ooeVar.v0(wpeVar.b);
                    ooeVar.R(wpeVar.c);
                    ooeVar.T(wpeVar.d);
                    ooeVar.i0(wpeVar.e);
                    ooeVar.u0(wpeVar.f);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public final String b() {
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            byte[] bArrF = jse.f((String) zzbd.zzc().b(cye.I2));
            ArrayList arrayList = new ArrayList();
            arrayList.add(certificateFactory.generateCertificate(new ByteArrayInputStream(bArrF)));
            if (!Build.TYPE.equals("user")) {
                arrayList.add(certificateFactory.generateCertificate(new ByteArrayInputStream(jse.f((String) zzbd.zzc().b(cye.J2)))));
            }
            Context context = this.j;
            String packageName = context.getPackageName();
            this.b.j();
            if (Build.VERSION.SDK_INT <= 30 && !Build.VERSION.CODENAME.equals(ExifInterface.LATITUDE_SOUTH)) {
                return null;
            }
            final n8 n8VarH = n8.h();
            context.getPackageManager().requestChecksums(packageName, false, 8, arrayList, new PackageManager$OnChecksumsReadyListener() {
                public final void onChecksumsReady(List list) {
                    n8 n8Var = n8VarH;
                    if (list == null) {
                        n8Var.zzc(null);
                        return;
                    }
                    try {
                        int size = list.size();
                        for (int i = 0; i < size; i++) {
                            ApkChecksum apkChecksumA = ype.a(list.get(i));
                            if (apkChecksumA.getType() == 8) {
                                n8Var.zzc(jse.b(apkChecksumA.getValue()));
                                return;
                            }
                        }
                        n8Var.zzc(null);
                    } catch (Throwable unused) {
                        n8Var.zzc(null);
                    }
                }
            });
            return (String) n8VarH.get();
        } catch (PackageManager.NameNotFoundException | InterruptedException | NoClassDefFoundError | CertificateEncodingException | CertificateException | ExecutionException unused) {
            return null;
        }
    }

    public final wpe c() {
        int iB0;
        String str;
        if (((Boolean) zzbd.zzc().b(cye.T2)).booleanValue()) {
            iB0 = ((Integer) zzbd.zzc().b(cye.Y2)).intValue();
        } else {
            iB0 = this.i.b0();
        }
        wpe wpeVar = new wpe((String) this.f.invoke(null, this.j, Boolean.FALSE, ""));
        dqe dqeVar = this.k;
        if (dqeVar == null || dqeVar.a() == null) {
            str = ExifInterface.LONGITUDE_EAST;
        } else {
            try {
                str = (String) dqeVar.a().get(iB0, TimeUnit.MILLISECONDS);
            } catch (InterruptedException | ExecutionException | TimeoutException unused) {
                str = ExifInterface.LONGITUDE_EAST;
            }
        }
        wpeVar.b = str;
        return wpeVar;
    }

    public final String d() {
        try {
            e0 e0Var = this.b;
            if (e0Var.k() != null) {
                e0Var.k().get();
            }
            t tVarC = e0Var.c();
            if (tVarC == null || !tVarC.H0()) {
                return null;
            }
            return tVarC.T0();
        } catch (InterruptedException | ExecutionException unused) {
            return null;
        }
    }
}
