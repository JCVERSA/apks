package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.internal.measurement.zzcf;
import com.google.android.gms.measurement.internal.c;
import com.google.android.gms.measurement.internal.e;
import com.google.android.gms.measurement.internal.j;
import com.google.android.gms.measurement.internal.zzac;
import com.google.android.gms.measurement.internal.zzau;
import com.google.android.gms.measurement.internal.zzaw;
import com.transsion.livecaption.constant.ICode;
import java.io.ByteArrayInputStream;
import java.math.BigInteger;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicLong;
import javax.security.auth.x500.X500Principal;

public final class c9j extends boi {
    public static final String[] g = {"firebase_", "google_", "ga_"};
    public static final String[] h = {"_err"};
    public SecureRandom c;
    public final AtomicLong d;
    public int e;
    public Integer f;

    public c9j(e eVar) {
        super(eVar);
        this.f = null;
        this.d = new AtomicLong(0L);
    }

    public static boolean U(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith("_");
    }

    public static boolean V(String str) {
        wd8.f(str);
        return str.charAt(0) != '_' || str.equals("_ep");
    }

    public static boolean W(Context context) {
        ActivityInfo receiverInfo;
        wd8.l(context);
        try {
            PackageManager packageManager = context.getPackageManager();
            return (packageManager == null || (receiverInfo = packageManager.getReceiverInfo(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementReceiver"), 0)) == null || !receiverInfo.enabled) ? false : true;
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }

    public static boolean X(Context context, boolean z) {
        wd8.l(context);
        return g0(context, "com.google.android.gms.measurement.AppMeasurementJobService");
    }

    public static boolean Y(String str) {
        return !h[0].equals(str);
    }

    public static final boolean b0(Bundle bundle, int i) {
        if (bundle.getLong("_err") != 0) {
            return false;
        }
        bundle.putLong("_err", i);
        return true;
    }

    public static final boolean c0(String str) {
        wd8.l(str);
        return str.matches("^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$");
    }

    public static boolean f0(String str, String[] strArr) {
        wd8.l(strArr);
        for (String str2 : strArr) {
            if (x8j.a(str, str2)) {
                return true;
            }
        }
        return false;
    }

    public static boolean g0(Context context, String str) {
        ServiceInfo serviceInfo;
        try {
            PackageManager packageManager = context.getPackageManager();
            return (packageManager == null || (serviceInfo = packageManager.getServiceInfo(new ComponentName(context, str), 0)) == null || !serviceInfo.enabled) ? false : true;
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }

    public static long o0(byte[] bArr) {
        wd8.l(bArr);
        int length = bArr.length;
        int i = 0;
        wd8.o(length > 0);
        long j = 0;
        for (int i2 = length - 1; i2 >= 0 && i2 >= bArr.length - 8; i2--) {
            j += (((long) bArr[i2]) & 255) << i;
            i += 8;
        }
        return j;
    }

    public static MessageDigest s() {
        for (int i = 0; i < 2; i++) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                if (messageDigest != null) {
                    return messageDigest;
                }
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        return null;
    }

    public static ArrayList u(List list) {
        if (list == null) {
            return new ArrayList(0);
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzac zzacVar = (zzac) it.next();
            Bundle bundle = new Bundle();
            bundle.putString("app_id", zzacVar.zza);
            bundle.putString("origin", zzacVar.zzb);
            bundle.putLong("creation_timestamp", zzacVar.zzd);
            bundle.putString("name", zzacVar.zzc.zzb);
            mpi.b(bundle, wd8.l(zzacVar.zzc.zza()));
            bundle.putBoolean("active", zzacVar.zze);
            String str = zzacVar.zzf;
            if (str != null) {
                bundle.putString("trigger_event_name", str);
            }
            zzaw zzawVar = zzacVar.zzg;
            if (zzawVar != null) {
                bundle.putString("timed_out_event_name", zzawVar.zza);
                zzau zzauVar = zzawVar.zzb;
                if (zzauVar != null) {
                    bundle.putBundle("timed_out_event_params", zzauVar.zzc());
                }
            }
            bundle.putLong("trigger_timeout", zzacVar.zzh);
            zzaw zzawVar2 = zzacVar.zzi;
            if (zzawVar2 != null) {
                bundle.putString("triggered_event_name", zzawVar2.zza);
                zzau zzauVar2 = zzawVar2.zzb;
                if (zzauVar2 != null) {
                    bundle.putBundle("triggered_event_params", zzauVar2.zzc());
                }
            }
            bundle.putLong("triggered_timestamp", zzacVar.zzc.zzc);
            bundle.putLong("time_to_live", zzacVar.zzj);
            zzaw zzawVar3 = zzacVar.zzk;
            if (zzawVar3 != null) {
                bundle.putString("expired_event_name", zzawVar3.zza);
                zzau zzauVar3 = zzawVar3.zzb;
                if (zzauVar3 != null) {
                    bundle.putBundle("expired_event_params", zzauVar3.zzc());
                }
            }
            arrayList.add(bundle);
        }
        return arrayList;
    }

    public static void x(u2j u2jVar, Bundle bundle, boolean z) {
        if (bundle != null && u2jVar != null) {
            if (!bundle.containsKey("_sc") || z) {
                String str = u2jVar.a;
                if (str != null) {
                    bundle.putString("_sn", str);
                } else {
                    bundle.remove("_sn");
                }
                String str2 = u2jVar.b;
                if (str2 != null) {
                    bundle.putString("_sc", str2);
                } else {
                    bundle.remove("_sc");
                }
                bundle.putLong("_si", u2jVar.c);
                return;
            }
            z = false;
        }
        if (bundle != null && u2jVar == null && z) {
            bundle.remove("_sn");
            bundle.remove("_sc");
            bundle.remove("_si");
        }
    }

    public final void A(Bundle bundle, String str, Object obj) {
        if (bundle == null) {
            return;
        }
        if (obj instanceof Long) {
            bundle.putLong(str, ((Long) obj).longValue());
            return;
        }
        if (obj instanceof String) {
            bundle.putString(str, String.valueOf(obj));
            return;
        }
        if (obj instanceof Double) {
            bundle.putDouble(str, ((Double) obj).doubleValue());
        } else if (obj instanceof Bundle[]) {
            bundle.putParcelableArray(str, (Bundle[]) obj);
        } else if (str != null) {
            this.a.b().w().c("Not putting event parameter. Invalid value type. name, type", this.a.D().d(str), obj != null ? obj.getClass().getSimpleName() : null);
        }
    }

    public final void B(zzcf zzcfVar, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("r", z);
        try {
            zzcfVar.zzd(bundle);
        } catch (RemoteException e) {
            this.a.b().v().b("Error returning boolean value to wrapper", e);
        }
    }

    public final void C(zzcf zzcfVar, ArrayList arrayList) {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("r", arrayList);
        try {
            zzcfVar.zzd(bundle);
        } catch (RemoteException e) {
            this.a.b().v().b("Error returning bundle list to wrapper", e);
        }
    }

    public final void D(zzcf zzcfVar, Bundle bundle) {
        try {
            zzcfVar.zzd(bundle);
        } catch (RemoteException e) {
            this.a.b().v().b("Error returning bundle value to wrapper", e);
        }
    }

    public final void E(zzcf zzcfVar, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("r", bArr);
        try {
            zzcfVar.zzd(bundle);
        } catch (RemoteException e) {
            this.a.b().v().b("Error returning byte array to wrapper", e);
        }
    }

    public final void F(zzcf zzcfVar, int i) {
        Bundle bundle = new Bundle();
        bundle.putInt("r", i);
        try {
            zzcfVar.zzd(bundle);
        } catch (RemoteException e) {
            this.a.b().v().b("Error returning int value to wrapper", e);
        }
    }

    public final void G(zzcf zzcfVar, long j) {
        Bundle bundle = new Bundle();
        bundle.putLong("r", j);
        try {
            zzcfVar.zzd(bundle);
        } catch (RemoteException e) {
            this.a.b().v().b("Error returning long value to wrapper", e);
        }
    }

    public final void H(zzcf zzcfVar, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("r", str);
        try {
            zzcfVar.zzd(bundle);
        } catch (RemoteException e) {
            this.a.b().v().b("Error returning string value to wrapper", e);
        }
    }

    public final void I(String str, String str2, String str3, Bundle bundle, List list, boolean z) {
        int i;
        int iM;
        if (bundle == null) {
            return;
        }
        this.a.z();
        int i2 = 0;
        for (String str4 : new TreeSet(bundle.keySet())) {
            if (list == null || !list.contains(str4)) {
                int iK0 = !z ? k0(str4) : 0;
                if (iK0 == 0) {
                    iK0 = j0(str4);
                }
                i = iK0;
            } else {
                i = 0;
            }
            if (i != 0) {
                w(bundle, i, str4, str4, i == 3 ? str4 : null);
                bundle.remove(str4);
            } else {
                if (S(bundle.get(str4))) {
                    this.a.b().w().d("Nested Bundle parameters are not allowed; discarded. event name, param name, child param name", str2, str3, str4);
                    iM = 22;
                } else {
                    iM = M(str, str2, str4, bundle.get(str4), bundle, list, z, false);
                }
                if (iM != 0 && !"_ev".equals(str4)) {
                    w(bundle, iM, str4, str4, bundle.get(str4));
                    bundle.remove(str4);
                } else if (V(str4) && !f0(str4, jri.d) && (i2 = i2 + 1) > 0) {
                    this.a.b().r().c("Item cannot contain custom parameters", this.a.D().c(str2), this.a.D().b(bundle));
                    b0(bundle, 23);
                    bundle.remove(str4);
                }
            }
        }
    }

    public final boolean J(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            if (c0(str)) {
                return true;
            }
            if (this.a.q()) {
                this.a.b().r().b("Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id", c.y(str));
            }
            return false;
        }
        if (TextUtils.isEmpty(str2)) {
            if (this.a.q()) {
                this.a.b().r().a("Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI");
            }
            return false;
        }
        if (c0(str2)) {
            return true;
        }
        this.a.b().r().b("Invalid admob_app_id. Analytics disabled.", c.y(str2));
        return false;
    }

    public final boolean K(String str, int i, String str2) {
        if (str2 == null) {
            this.a.b().r().b("Name is required and can't be null. Type", str);
            return false;
        }
        if (str2.codePointCount(0, str2.length()) <= i) {
            return true;
        }
        this.a.b().r().d("Name is too long. Type, maximum supported length, name", str, Integer.valueOf(i), str2);
        return false;
    }

    public final boolean L(String str, String[] strArr, String[] strArr2, String str2) {
        if (str2 == null) {
            this.a.b().r().b("Name is required and can't be null. Type", str);
            return false;
        }
        wd8.l(str2);
        String[] strArr3 = g;
        for (int i = 0; i < 3; i++) {
            if (str2.startsWith(strArr3[i])) {
                this.a.b().r().c("Name starts with reserved prefix. Type, name", str, str2);
                return false;
            }
        }
        if (strArr == null || !f0(str2, strArr)) {
            return true;
        }
        if (strArr2 != null && f0(str2, strArr2)) {
            return true;
        }
        this.a.b().r().c("Name is reserved. Type, name", str, str2);
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00a9  */
    public final int M(String str, String str2, String str3, Object obj, Bundle bundle, List list, boolean z, boolean z2) {
        int i;
        int i2;
        int size;
        g();
        if (!S(obj)) {
            i = 0;
        } else {
            if (!z2) {
                return 21;
            }
            if (!f0(str3, jri.c)) {
                return 20;
            }
            j jVarL = this.a.L();
            jVarL.g();
            jVarL.h();
            if (jVarL.A() && jVarL.a.N().m0() < 200900) {
                return 25;
            }
            this.a.z();
            boolean z3 = obj instanceof Parcelable[];
            if (z3) {
                size = ((Parcelable[]) obj).length;
            } else if (obj instanceof ArrayList) {
                size = ((ArrayList) obj).size();
            } else {
                i = 0;
            }
            if (size > 200) {
                this.a.b().w().d("Parameter array is too long; discarded. Value kind, name, array length", "param", str3, Integer.valueOf(size));
                this.a.z();
                if (z3) {
                    Parcelable[] parcelableArr = (Parcelable[]) obj;
                    if (parcelableArr.length > 200) {
                        bundle.putParcelableArray(str3, (Parcelable[]) Arrays.copyOf(parcelableArr, 200));
                    }
                } else if (obj instanceof ArrayList) {
                    ArrayList arrayList = (ArrayList) obj;
                    if (arrayList.size() > 200) {
                        bundle.putParcelableArrayList(str3, new ArrayList<>(arrayList.subList(0, 200)));
                    }
                }
                i = 17;
            } else {
                i = 0;
            }
        }
        if (U(str2) || U(str3)) {
            this.a.z();
            i2 = 256;
        } else {
            this.a.z();
            i2 = 100;
        }
        if (N("param", str3, i2, obj)) {
            return i;
        }
        if (!z2) {
            return 4;
        }
        if (obj instanceof Bundle) {
            I(str, str2, str3, (Bundle) obj, list, z);
        } else if (obj instanceof Parcelable[]) {
            for (Parcelable parcelable : (Parcelable[]) obj) {
                if (!(parcelable instanceof Bundle)) {
                    this.a.b().w().c("All Parcelable[] elements must be of type Bundle. Value type, name", parcelable.getClass(), str3);
                    return 4;
                }
                I(str, str2, str3, (Bundle) parcelable, list, z);
            }
        } else {
            if (!(obj instanceof ArrayList)) {
                return 4;
            }
            ArrayList arrayList2 = (ArrayList) obj;
            int size2 = arrayList2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                Object obj2 = arrayList2.get(i3);
                if (!(obj2 instanceof Bundle)) {
                    this.a.b().w().c("All ArrayList elements must be of type Bundle. Value type, name", obj2 != null ? obj2.getClass() : "null", str3);
                    return 4;
                }
                I(str, str2, str3, (Bundle) obj2, list, z);
            }
        }
        return i;
    }

    public final boolean N(String str, String str2, int i, Object obj) {
        if (obj != null && !(obj instanceof Long) && !(obj instanceof Float) && !(obj instanceof Integer) && !(obj instanceof Byte) && !(obj instanceof Short) && !(obj instanceof Boolean) && !(obj instanceof Double)) {
            if (!(obj instanceof String) && !(obj instanceof Character) && !(obj instanceof CharSequence)) {
                return false;
            }
            String string = obj.toString();
            if (string.codePointCount(0, string.length()) > i) {
                this.a.b().w().d("Value is too long; discarded. Value kind, name, value length", str, str2, Integer.valueOf(string.length()));
                return false;
            }
        }
        return true;
    }

    public final boolean O(String str, String str2) {
        if (str2 == null) {
            this.a.b().r().b("Name is required and can't be null. Type", str);
            return false;
        }
        if (str2.length() == 0) {
            this.a.b().r().b("Name is required and can't be empty. Type", str);
            return false;
        }
        int iCodePointAt = str2.codePointAt(0);
        if (!Character.isLetter(iCodePointAt)) {
            if (iCodePointAt != 95) {
                this.a.b().r().c("Name must start with a letter or _ (underscore). Type, name", str, str2);
                return false;
            }
            iCodePointAt = 95;
        }
        int length = str2.length();
        int iCharCount = Character.charCount(iCodePointAt);
        while (iCharCount < length) {
            int iCodePointAt2 = str2.codePointAt(iCharCount);
            if (iCodePointAt2 != 95 && !Character.isLetterOrDigit(iCodePointAt2)) {
                this.a.b().r().c("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                return false;
            }
            iCharCount += Character.charCount(iCodePointAt2);
        }
        return true;
    }

    public final boolean P(String str, String str2) {
        if (str2 == null) {
            this.a.b().r().b("Name is required and can't be null. Type", str);
            return false;
        }
        if (str2.length() == 0) {
            this.a.b().r().b("Name is required and can't be empty. Type", str);
            return false;
        }
        int iCodePointAt = str2.codePointAt(0);
        if (!Character.isLetter(iCodePointAt)) {
            this.a.b().r().c("Name must start with a letter. Type, name", str, str2);
            return false;
        }
        int length = str2.length();
        int iCharCount = Character.charCount(iCodePointAt);
        while (iCharCount < length) {
            int iCodePointAt2 = str2.codePointAt(iCharCount);
            if (iCodePointAt2 != 95 && !Character.isLetterOrDigit(iCodePointAt2)) {
                this.a.b().r().c("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                return false;
            }
            iCharCount += Character.charCount(iCodePointAt2);
        }
        return true;
    }

    public final boolean Q(String str) {
        g();
        if (mpc.a(this.a.e()).a(str) == 0) {
            return true;
        }
        this.a.b().p().b("Permission not granted", str);
        return false;
    }

    public final boolean R(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String strP = this.a.z().p();
        this.a.d();
        return strP.equals(str);
    }

    public final boolean S(Object obj) {
        return (obj instanceof Parcelable[]) || (obj instanceof ArrayList) || (obj instanceof Bundle);
    }

    public final boolean T(Context context, String str) {
        Signature[] signatureArr;
        X500Principal x500Principal = new X500Principal("CN=Android Debug,O=Android,C=US");
        try {
            PackageInfo packageInfoF = mpc.a(context).f(str, 64);
            if (packageInfoF == null || (signatureArr = packageInfoF.signatures) == null || signatureArr.length <= 0) {
                return true;
            }
            return ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(signatureArr[0].toByteArray()))).getSubjectX500Principal().equals(x500Principal);
        } catch (PackageManager.NameNotFoundException e) {
            this.a.b().q().b("Package name not found", e);
            return true;
        } catch (CertificateException e2) {
            this.a.b().q().b("Error obtaining certificate", e2);
            return true;
        }
    }

    public final boolean Z(String str, String str2, String str3, String str4) {
        boolean zIsEmpty = TextUtils.isEmpty(str);
        boolean zIsEmpty2 = TextUtils.isEmpty(str2);
        if (!zIsEmpty && !zIsEmpty2) {
            wd8.l(str);
            return !str.equals(str2);
        }
        if (zIsEmpty && zIsEmpty2) {
            if (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4)) {
                return !TextUtils.isEmpty(str4);
            }
            return !str3.equals(str4);
        }
        if (zIsEmpty) {
            return TextUtils.isEmpty(str3) || !str3.equals(str4);
        }
        if (TextUtils.isEmpty(str4)) {
            return false;
        }
        return TextUtils.isEmpty(str3) || !str3.equals(str4);
    }

    public final byte[] a0(Parcelable parcelable) {
        if (parcelable == null) {
            return null;
        }
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelable.writeToParcel(parcelObtain, 0);
            return parcelObtain.marshall();
        } finally {
            parcelObtain.recycle();
        }
    }

    public final int d0(String str) {
        if ("_ldl".equals(str)) {
            this.a.z();
            return 2048;
        }
        if ("_id".equals(str)) {
            this.a.z();
            return 256;
        }
        if ("_lgclid".equals(str)) {
            this.a.z();
            return 100;
        }
        this.a.z();
        return 36;
    }

    public final Object e0(int i, Object obj, boolean z, boolean z2) {
        if (obj == null) {
            return null;
        }
        if ((obj instanceof Long) || (obj instanceof Double)) {
            return obj;
        }
        if (obj instanceof Integer) {
            return Long.valueOf(((Integer) obj).intValue());
        }
        if (obj instanceof Byte) {
            return Long.valueOf(((Byte) obj).byteValue());
        }
        if (obj instanceof Short) {
            return Long.valueOf(((Short) obj).shortValue());
        }
        if (obj instanceof Boolean) {
            return Long.valueOf(true != ((Boolean) obj).booleanValue() ? 0L : 1L);
        }
        if (obj instanceof Float) {
            return Double.valueOf(((Float) obj).doubleValue());
        }
        if ((obj instanceof String) || (obj instanceof Character) || (obj instanceof CharSequence)) {
            return q(obj.toString(), i, z);
        }
        if (!z2 || (!(obj instanceof Bundle[]) && !(obj instanceof Parcelable[]))) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Parcelable parcelable : (Parcelable[]) obj) {
            if (parcelable instanceof Bundle) {
                Bundle bundleR0 = r0((Bundle) parcelable);
                if (!bundleR0.isEmpty()) {
                    arrayList.add(bundleR0);
                }
            }
        }
        return arrayList.toArray(new Bundle[arrayList.size()]);
    }

    @Override
    public final void h() {
        g();
        SecureRandom secureRandom = new SecureRandom();
        long jNextLong = secureRandom.nextLong();
        if (jNextLong == 0) {
            jNextLong = secureRandom.nextLong();
            if (jNextLong == 0) {
                this.a.b().v().a("Utils falling back to Random for random id");
            }
        }
        this.d.set(jNextLong);
    }

    public final int h0(String str, Object obj) {
        return "_ldl".equals(str) ? N("user property referrer", str, d0(str), obj) : N("user property", str, d0(str), obj) ? 0 : 7;
    }

    @Override
    public final boolean i() {
        return true;
    }

    public final int i0(String str) {
        if (!O(NotificationCompat.CATEGORY_EVENT, str)) {
            return 2;
        }
        if (!L(NotificationCompat.CATEGORY_EVENT, kqi.a, kqi.b, str)) {
            return 13;
        }
        this.a.z();
        return !K(NotificationCompat.CATEGORY_EVENT, 40, str) ? 2 : 0;
    }

    public final int j0(String str) {
        if (!O("event param", str)) {
            return 3;
        }
        if (!L("event param", null, null, str)) {
            return 14;
        }
        this.a.z();
        return !K("event param", 40, str) ? 3 : 0;
    }

    public final int k0(String str) {
        if (!P("event param", str)) {
            return 3;
        }
        if (!L("event param", null, null, str)) {
            return 14;
        }
        this.a.z();
        return !K("event param", 40, str) ? 3 : 0;
    }

    public final int l0(String str) {
        if (!O("user property", str)) {
            return 6;
        }
        if (!L("user property", zri.a, null, str)) {
            return 15;
        }
        this.a.z();
        return !K("user property", 24, str) ? 6 : 0;
    }

    public final int m0() {
        if (this.f == null) {
            this.f = Integer.valueOf(aj4.g().b(this.a.e()) / 1000);
        }
        return this.f.intValue();
    }

    public final Object n(String str, Object obj) {
        int i = 256;
        if ("_ev".equals(str)) {
            this.a.z();
            return e0(256, obj, true, true);
        }
        if (U(str)) {
            this.a.z();
        } else {
            this.a.z();
            i = 100;
        }
        return e0(i, obj, false, true);
    }

    public final int n0(int i) {
        return aj4.g().i(this.a.e(), 12451000);
    }

    public final Object o(String str, Object obj) {
        return "_ldl".equals(str) ? e0(d0(str), obj, true, false) : e0(d0(str), obj, false, false);
    }

    public final String p() {
        byte[] bArr = new byte[16];
        t().nextBytes(bArr);
        return String.format(Locale.US, "%032x", new BigInteger(1, bArr));
    }

    public final long p0() {
        long andIncrement;
        long j;
        if (this.d.get() != 0) {
            synchronized (this.d) {
                this.d.compareAndSet(-1L, 1L);
                andIncrement = this.d.getAndIncrement();
            }
            return andIncrement;
        }
        synchronized (this.d) {
            long jNextLong = new Random(System.nanoTime() ^ this.a.c().currentTimeMillis()).nextLong();
            int i = this.e + 1;
            this.e = i;
            j = jNextLong + ((long) i);
        }
        return j;
    }

    public final String q(String str, int i, boolean z) {
        if (str == null) {
            return null;
        }
        if (str.codePointCount(0, str.length()) <= i) {
            return str;
        }
        if (z) {
            return String.valueOf(str.substring(0, str.offsetByCodePoints(0, i))).concat("...");
        }
        return null;
    }

    public final Bundle q0(Uri uri) {
        String queryParameter;
        String queryParameter2;
        String queryParameter3;
        String queryParameter4;
        String queryParameter5;
        String queryParameter6;
        String queryParameter7;
        if (uri != null) {
            try {
                if (uri.isHierarchical()) {
                    queryParameter2 = uri.getQueryParameter("utm_campaign");
                    queryParameter3 = uri.getQueryParameter("utm_source");
                    queryParameter4 = uri.getQueryParameter("utm_medium");
                    queryParameter5 = uri.getQueryParameter("gclid");
                    queryParameter6 = uri.getQueryParameter("utm_id");
                    queryParameter7 = uri.getQueryParameter("dclid");
                    queryParameter = uri.getQueryParameter("srsltid");
                } else {
                    queryParameter = null;
                    queryParameter2 = null;
                    queryParameter3 = null;
                    queryParameter4 = null;
                    queryParameter5 = null;
                    queryParameter6 = null;
                    queryParameter7 = null;
                }
                if (TextUtils.isEmpty(queryParameter2) && TextUtils.isEmpty(queryParameter3) && TextUtils.isEmpty(queryParameter4) && TextUtils.isEmpty(queryParameter5) && TextUtils.isEmpty(queryParameter6) && TextUtils.isEmpty(queryParameter7) && TextUtils.isEmpty(queryParameter)) {
                    return null;
                }
                Bundle bundle = new Bundle();
                if (!TextUtils.isEmpty(queryParameter2)) {
                    bundle.putString("campaign", queryParameter2);
                }
                if (!TextUtils.isEmpty(queryParameter3)) {
                    bundle.putString("source", queryParameter3);
                }
                if (!TextUtils.isEmpty(queryParameter4)) {
                    bundle.putString("medium", queryParameter4);
                }
                if (!TextUtils.isEmpty(queryParameter5)) {
                    bundle.putString("gclid", queryParameter5);
                }
                String queryParameter8 = uri.getQueryParameter("utm_term");
                if (!TextUtils.isEmpty(queryParameter8)) {
                    bundle.putString("term", queryParameter8);
                }
                String queryParameter9 = uri.getQueryParameter("utm_content");
                if (!TextUtils.isEmpty(queryParameter9)) {
                    bundle.putString(ICode.CALL.CALL_KEY_CONTENT, queryParameter9);
                }
                String queryParameter10 = uri.getQueryParameter("aclid");
                if (!TextUtils.isEmpty(queryParameter10)) {
                    bundle.putString("aclid", queryParameter10);
                }
                String queryParameter11 = uri.getQueryParameter("cp1");
                if (!TextUtils.isEmpty(queryParameter11)) {
                    bundle.putString("cp1", queryParameter11);
                }
                String queryParameter12 = uri.getQueryParameter("anid");
                if (!TextUtils.isEmpty(queryParameter12)) {
                    bundle.putString("anid", queryParameter12);
                }
                if (!TextUtils.isEmpty(queryParameter6)) {
                    bundle.putString("campaign_id", queryParameter6);
                }
                if (!TextUtils.isEmpty(queryParameter7)) {
                    bundle.putString("dclid", queryParameter7);
                }
                String queryParameter13 = uri.getQueryParameter("utm_source_platform");
                if (!TextUtils.isEmpty(queryParameter13)) {
                    bundle.putString("source_platform", queryParameter13);
                }
                String queryParameter14 = uri.getQueryParameter("utm_creative_format");
                if (!TextUtils.isEmpty(queryParameter14)) {
                    bundle.putString("creative_format", queryParameter14);
                }
                String queryParameter15 = uri.getQueryParameter("utm_marketing_tactic");
                if (!TextUtils.isEmpty(queryParameter15)) {
                    bundle.putString("marketing_tactic", queryParameter15);
                }
                if (!TextUtils.isEmpty(queryParameter)) {
                    bundle.putString("srsltid", queryParameter);
                }
                return bundle;
            } catch (UnsupportedOperationException e) {
                this.a.b().v().b("Install referrer url isn't a hierarchical URI", e);
            }
        }
        return null;
    }

    public final URL r(long j, String str, String str2, long j2) {
        try {
            wd8.f(str2);
            wd8.f(str);
            String strConcat = String.format("https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=%s&rdid=%s&bundleid=%s&retry=%s", String.format("v%s.%s", 73000L, Integer.valueOf(m0())), str2, str, Long.valueOf(j2));
            if (str.equals(this.a.z().q())) {
                strConcat = strConcat.concat("&ddl_test=1");
            }
            return new URL(strConcat);
        } catch (IllegalArgumentException | MalformedURLException e) {
            this.a.b().q().b("Failed to create BOW URL for Deferred Deep Link. exception", e.getMessage());
            return null;
        }
    }

    public final Bundle r0(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                Object objN = n(str, bundle.get(str));
                if (objN == null) {
                    this.a.b().w().b("Param value can't be null", this.a.D().d(str));
                } else {
                    A(bundle2, str, objN);
                }
            }
        }
        return bundle2;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:41:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:51:0x0108 A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:41:0x00c8, please report this as an issue */
    public final Bundle s0(String str, String str2, Bundle bundle, List list, boolean z) {
        int i;
        int i2;
        String str3;
        int i3;
        boolean zF0 = f0(str2, kqi.d);
        if (bundle == null) {
            return null;
        }
        Bundle bundle2 = new Bundle(bundle);
        int iJ = this.a.z().j();
        int i4 = 0;
        for (String str4 : new TreeSet(bundle.keySet())) {
            if (list == null || !list.contains(str4)) {
                int iK0 = !z ? k0(str4) : 0;
                if (iK0 == 0) {
                    iK0 = j0(str4);
                }
                i = iK0;
            } else {
                i = 0;
            }
            if (i != 0) {
                w(bundle2, i, str4, str4, i == 3 ? str4 : null);
                bundle2.remove(str4);
                i2 = iJ;
            } else {
                i2 = iJ;
                int iM = M(str, str2, str4, bundle.get(str4), bundle2, list, z, zF0);
                if (iM == 17) {
                    w(bundle2, 17, str4, str4, Boolean.FALSE);
                } else {
                    if (iM != 0) {
                        str3 = str4;
                        if (!"_ev".equals(str3)) {
                            w(bundle2, iM, iM == 21 ? str2 : str3, str3, bundle.get(str3));
                            bundle2.remove(str3);
                        }
                    }
                    if (!V(str3)) {
                        i3 = i4 + 1;
                        if (i3 > i2) {
                            this.a.b().r().c("Event can't contain more than " + i2 + " params", this.a.D().c(str2), this.a.D().b(bundle));
                            b0(bundle2, 5);
                            bundle2.remove(str3);
                        }
                        i4 = i3;
                    }
                }
                str3 = str4;
                if (!V(str3)) {
                    i3 = i4 + 1;
                    if (i3 > i2) {
                        this.a.b().r().c("Event can't contain more than " + i2 + " params", this.a.D().c(str2), this.a.D().b(bundle));
                        b0(bundle2, 5);
                        bundle2.remove(str3);
                    }
                    i4 = i3;
                }
            }
            iJ = i2;
        }
        return bundle2;
    }

    public final SecureRandom t() {
        g();
        if (this.c == null) {
            this.c = new SecureRandom();
        }
        return this.c;
    }

    public final zzaw t0(String str, String str2, Bundle bundle, String str3, long j, boolean z, boolean z2) {
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        if (i0(str2) != 0) {
            this.a.b().q().b("Invalid conditional property event name", this.a.D().e(str2));
            throw new IllegalArgumentException();
        }
        Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
        bundle2.putString("_o", str3);
        Bundle bundleS0 = s0(str, str2, bundle2, s71.a("_o"), true);
        if (z) {
            bundleS0 = r0(bundleS0);
        }
        wd8.l(bundleS0);
        return new zzaw(str2, new zzau(bundleS0), str3, j);
    }

    public final void v(Bundle bundle, long j) {
        long j2 = bundle.getLong("_et");
        if (j2 != 0) {
            this.a.b().v().b("Params already contained engagement", Long.valueOf(j2));
        } else {
            j2 = 0;
        }
        bundle.putLong("_et", j + j2);
    }

    public final void w(Bundle bundle, int i, String str, String str2, Object obj) {
        if (b0(bundle, i)) {
            this.a.z();
            bundle.putString("_ev", q(str, 40, true));
            if (obj != null) {
                wd8.l(bundle);
                if ((obj instanceof String) || (obj instanceof CharSequence)) {
                    bundle.putLong("_el", obj.toString().length());
                }
            }
        }
    }

    public final void y(Bundle bundle, Bundle bundle2) {
        if (bundle2 == null) {
            return;
        }
        for (String str : bundle2.keySet()) {
            if (!bundle.containsKey(str)) {
                this.a.N().A(bundle, str, bundle2.get(str));
            }
        }
    }

    public final void z(z8j z8jVar, String str, int i, String str2, String str3, int i2) {
        Bundle bundle = new Bundle();
        b0(bundle, i);
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            bundle.putString(str2, str3);
        }
        if (i == 6 || i == 7 || i == 2) {
            bundle.putLong("_el", i2);
        }
        z8jVar.a(str, "_err", bundle);
    }
}
