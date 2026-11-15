package androidx.loader.app;

import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.collection.y0;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.w0;
import androidx.p009lifecycle.x0;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import kotlin.reflect.KClass;

class b extends androidx.loader.app.a {

    static boolean f9367c = false;

    private final u f9368a;

    private final c f9369b;

    public static class a extends b0 implements androidx.loader.content.a.b {

        private final int f9370l;

        private final Bundle f9371m;

        private final androidx.loader.content.a f9372n;

        private u f9373o;

        private C0079b f9374p;

        private androidx.loader.content.a f9375q;

        a(int i10, Bundle bundle, androidx.loader.content.a aVar, androidx.loader.content.a aVar2) {
            this.f9370l = i10;
            this.f9371m = bundle;
            this.f9372n = aVar;
            this.f9375q = aVar2;
            aVar.registerListener(i10, this);
        }

        @Override
        public void a(androidx.loader.content.a aVar, Object obj) {
            if (b.f9367c) {
                Log.v("LoaderManager", "onLoadComplete: " + this);
            }
            if (Looper.myLooper() == Looper.getMainLooper()) {
                q(obj);
                return;
            }
            if (b.f9367c) {
                Log.w("LoaderManager", "onLoadComplete was incorrectly called on a background thread");
            }
            n(obj);
        }

        @Override
        protected void l() {
            if (b.f9367c) {
                Log.v("LoaderManager", "  Starting: " + this);
            }
            this.f9372n.startLoading();
        }

        @Override
        protected void m() {
            if (b.f9367c) {
                Log.v("LoaderManager", "  Stopping: " + this);
            }
            this.f9372n.stopLoading();
        }

        @Override
        public void o(c0 c0Var) {
            super.o(c0Var);
            this.f9373o = null;
            this.f9374p = null;
        }

        @Override
        public void q(Object obj) {
            super.q(obj);
            androidx.loader.content.a aVar = this.f9375q;
            if (aVar != null) {
                aVar.reset();
                this.f9375q = null;
            }
        }

        androidx.loader.content.a r(boolean z10) {
            if (b.f9367c) {
                Log.v("LoaderManager", "  Destroying: " + this);
            }
            this.f9372n.cancelLoad();
            this.f9372n.abandon();
            C0079b c0079b = this.f9374p;
            if (c0079b != null) {
                o(c0079b);
                if (z10) {
                    c0079b.c();
                }
            }
            this.f9372n.unregisterListener(this);
            if ((c0079b == null || c0079b.b()) && !z10) {
                return this.f9372n;
            }
            this.f9372n.reset();
            return this.f9375q;
        }

        public void s(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.print(str);
            printWriter.print("mId=");
            printWriter.print(this.f9370l);
            printWriter.print(" mArgs=");
            printWriter.println(this.f9371m);
            printWriter.print(str);
            printWriter.print("mLoader=");
            printWriter.println(this.f9372n);
            this.f9372n.dump(str + "  ", fileDescriptor, printWriter, strArr);
            if (this.f9374p != null) {
                printWriter.print(str);
                printWriter.print("mCallbacks=");
                printWriter.println(this.f9374p);
                this.f9374p.a(str + "  ", printWriter);
            }
            printWriter.print(str);
            printWriter.print("mData=");
            printWriter.println(t().dataToString(f()));
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.println(h());
        }

        androidx.loader.content.a t() {
            return this.f9372n;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder(64);
            sb2.append("LoaderInfo{");
            sb2.append(Integer.toHexString(System.identityHashCode(this)));
            sb2.append(" #");
            sb2.append(this.f9370l);
            sb2.append(" : ");
            androidx.core.util.b.a(this.f9372n, sb2);
            sb2.append("}}");
            return sb2.toString();
        }

        void u() {
            u uVar = this.f9373o;
            C0079b c0079b = this.f9374p;
            if (uVar == null || c0079b == null) {
                return;
            }
            super.o(c0079b);
            j(uVar, c0079b);
        }

        androidx.loader.content.a v(u uVar, androidx.loader.app.a.InterfaceC0078a interfaceC0078a) {
            C0079b c0079b = new C0079b(this.f9372n, interfaceC0078a);
            j(uVar, c0079b);
            c0 c0Var = this.f9374p;
            if (c0Var != null) {
                o(c0Var);
            }
            this.f9373o = uVar;
            this.f9374p = c0079b;
            return this.f9372n;
        }
    }

    static class C0079b implements c0 {

        private final androidx.loader.content.a f9376a;

        private final androidx.loader.app.a.InterfaceC0078a f9377b;

        private boolean f9378c = false;

        C0079b(androidx.loader.content.a aVar, androidx.loader.app.a.InterfaceC0078a interfaceC0078a) {
            this.f9376a = aVar;
            this.f9377b = interfaceC0078a;
        }

        public void a(String str, PrintWriter printWriter) {
            printWriter.print(str);
            printWriter.print("mDeliveredData=");
            printWriter.println(this.f9378c);
        }

        boolean b() {
            return this.f9378c;
        }

        void c() {
            if (this.f9378c) {
                if (b.f9367c) {
                    Log.v("LoaderManager", "  Resetting: " + this.f9376a);
                }
                this.f9377b.onLoaderReset(this.f9376a);
            }
        }

        @Override
        public void onChanged(Object obj) {
            if (b.f9367c) {
                Log.v("LoaderManager", "  onLoadFinished in " + this.f9376a + ": " + this.f9376a.dataToString(obj));
            }
            this.f9377b.onLoadFinished(this.f9376a, obj);
            this.f9378c = true;
        }

        public String toString() {
            return this.f9377b.toString();
        }
    }

    static class c extends t0 {

        private static final v0.c f9379c = new a();

        private y0 f9380a = new y0();

        private boolean f9381b = false;

        static class a implements v0.c {
            a() {
            }

            @Override
            public t0 create(Class cls, p1.a aVar) {
                return w0.b(this, cls, aVar);
            }

            @Override
            public t0 create(KClass kClass, p1.a aVar) {
                return w0.c(this, kClass, aVar);
            }

            @Override
            public t0 create(Class cls) {
                return new c();
            }
        }

        c() {
        }

        static c d(x0 x0Var) {
            return (c) new v0(x0Var, f9379c).a(c.class);
        }

        public void b(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            if (this.f9380a.p() > 0) {
                printWriter.print(str);
                printWriter.println("Loaders:");
                String str2 = str + "    ";
                for (int i10 = 0; i10 < this.f9380a.p(); i10++) {
                    a aVar = (a) this.f9380a.q(i10);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(this.f9380a.k(i10));
                    printWriter.print(": ");
                    printWriter.println(aVar.toString());
                    aVar.s(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }

        void c() {
            this.f9381b = false;
        }

        a e(int i10) {
            return (a) this.f9380a.g(i10);
        }

        boolean f() {
            return this.f9381b;
        }

        void g() {
            int iP = this.f9380a.p();
            for (int i10 = 0; i10 < iP; i10++) {
                ((a) this.f9380a.q(i10)).u();
            }
        }

        void h(int i10, a aVar) {
            this.f9380a.l(i10, aVar);
        }

        void i() {
            this.f9381b = true;
        }

        @Override
        protected void onCleared() {
            super.onCleared();
            int iP = this.f9380a.p();
            for (int i10 = 0; i10 < iP; i10++) {
                ((a) this.f9380a.q(i10)).r(true);
            }
            this.f9380a.b();
        }
    }

    b(u uVar, x0 x0Var) {
        this.f9368a = uVar;
        this.f9369b = c.d(x0Var);
    }

    private androidx.loader.content.a e(int i10, Bundle bundle, androidx.loader.app.a.InterfaceC0078a interfaceC0078a, androidx.loader.content.a aVar) {
        try {
            this.f9369b.i();
            androidx.loader.content.a aVarOnCreateLoader = interfaceC0078a.onCreateLoader(i10, bundle);
            if (aVarOnCreateLoader == null) {
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be null");
            }
            if (aVarOnCreateLoader.getClass().isMemberClass() && !Modifier.isStatic(aVarOnCreateLoader.getClass().getModifiers())) {
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + aVarOnCreateLoader);
            }
            a aVar2 = new a(i10, bundle, aVarOnCreateLoader, aVar);
            if (f9367c) {
                Log.v("LoaderManager", "  Created new loader " + aVar2);
            }
            this.f9369b.h(i10, aVar2);
            this.f9369b.c();
            return aVar2.v(this.f9368a, interfaceC0078a);
        } catch (Throwable th2) {
            this.f9369b.c();
            throw th2;
        }
    }

    @Override
    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.f9369b.b(str, fileDescriptor, printWriter, strArr);
    }

    @Override
    public androidx.loader.content.a c(int i10, Bundle bundle, androidx.loader.app.a.InterfaceC0078a interfaceC0078a) {
        if (this.f9369b.f()) {
            throw new IllegalStateException("Called while creating a loader");
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new IllegalStateException("initLoader must be called on the main thread");
        }
        a aVarE = this.f9369b.e(i10);
        if (f9367c) {
            Log.v("LoaderManager", "initLoader in " + this + ": args=" + bundle);
        }
        if (aVarE == null) {
            return e(i10, bundle, interfaceC0078a, null);
        }
        if (f9367c) {
            Log.v("LoaderManager", "  Re-using existing loader " + aVarE);
        }
        return aVarE.v(this.f9368a, interfaceC0078a);
    }

    @Override
    public void d() {
        this.f9369b.g();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append("LoaderManager{");
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        sb2.append(" in ");
        androidx.core.util.b.a(this.f9368a, sb2);
        sb2.append("}}");
        return sb2.toString();
    }
}
