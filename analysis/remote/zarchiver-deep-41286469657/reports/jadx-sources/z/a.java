package z;

import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.util.Log;
import java.util.ArrayList;
import java.util.Objects;

public final class a {

    public static IBinder f2308a = null;

    public static k.c f2309b = null;

    public static boolean f2310c = false;

    public static boolean f2311d = false;

    public static final BinderC0043a f2312e = new BinderC0043a();

    public static final b f2313f = new b();

    public static final ArrayList f2314g = new ArrayList();

    public static final ArrayList f2315h = new ArrayList();

    public static final ArrayList f2316i = new ArrayList();

    public static final Handler f2317j = new Handler(Looper.getMainLooper());

    public class BinderC0043a extends k.b {
    }

    public class b implements IBinder.DeathRecipient {
        @Override
        public final void binderDied() {
            a.d(null, null);
        }
    }

    public class c implements Runnable {

        public final d f2318a;

        public c(d dVar) {
            this.f2318a = dVar;
        }

        @Override
        public final void run() {
            ((f) this.f2318a.f2319a).a();
        }
    }

    public static class d<T> {

        public final T f2319a;

        public final Handler f2320b;

        public d() {
            throw null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public d(Object obj) {
            this.f2319a = obj;
            this.f2320b = null;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            return Objects.equals(this.f2319a, dVar.f2319a) && Objects.equals(this.f2320b, dVar.f2320b);
        }

        public final int hashCode() {
            return Objects.hash(this.f2319a, this.f2320b);
        }
    }

    public interface e {
        void a();
    }

    public interface f {
        void a();
    }

    public interface g {
    }

    public static void a(g gVar) {
        synchronized (f2314g) {
            f2316i.add(new d(gVar));
        }
    }

    public static boolean b(IBinder iBinder, String str) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("moe.shizuku.server.IShizukuService");
            BinderC0043a binderC0043a = f2312e;
            binderC0043a.getClass();
            parcelObtain.writeStrongBinder(binderC0043a);
            parcelObtain.writeString(str);
            boolean zTransact = iBinder.transact(14, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return zTransact;
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    public static boolean c(IBinder iBinder, String str) {
        Bundle bundle = new Bundle();
        bundle.putInt("shizuku:attach-api-version", 13);
        bundle.putString("shizuku:attach-package-name", str);
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("moe.shizuku.server.IShizukuService");
            BinderC0043a binderC0043a = f2312e;
            binderC0043a.getClass();
            parcelObtain.writeStrongBinder(binderC0043a);
            parcelObtain.writeInt(1);
            bundle.writeToParcel(parcelObtain, 0);
            boolean zTransact = iBinder.transact(18, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return zTransact;
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    public static void d(IBinder iBinder, String str) {
        IBinder iBinder2 = f2308a;
        if (iBinder2 == iBinder) {
            return;
        }
        if (iBinder == null) {
            f2308a = null;
            f2309b = null;
            synchronized (f2314g) {
                for (d dVar : f2315h) {
                    if (Looper.myLooper() == Looper.getMainLooper()) {
                        ((e) dVar.f2319a).a();
                    } else {
                        f2317j.post(new z.b(dVar));
                    }
                }
            }
            return;
        }
        if (iBinder2 != null) {
            iBinder2.unlinkToDeath(f2313f, 0);
        }
        f2308a = iBinder;
        int i2 = k.c.a.f1163a;
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("moe.shizuku.server.IShizukuService");
        f2309b = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof k.c)) ? new k.c.a.C0022a(iBinder) : (k.c) iInterfaceQueryLocalInterface;
        try {
            f2308a.linkToDeath(f2313f, 0);
        } catch (Throwable unused) {
            Log.i("ShizukuApplication", "attachApplication");
        }
        try {
            if (!c(f2308a, str) && !b(f2308a, str)) {
                f2311d = true;
            }
            Log.i("ShizukuApplication", "attachApplication");
        } catch (Throwable th) {
            Log.w("ShizukuApplication", Log.getStackTraceString(th));
        }
        if (f2311d) {
            e();
        }
    }

    public static void e() {
        ArrayList<d> arrayList = f2314g;
        synchronized (arrayList) {
            for (d dVar : arrayList) {
                if (Looper.myLooper() == Looper.getMainLooper()) {
                    ((f) dVar.f2319a).a();
                } else {
                    f2317j.post(new c(dVar));
                }
            }
        }
    }
}
