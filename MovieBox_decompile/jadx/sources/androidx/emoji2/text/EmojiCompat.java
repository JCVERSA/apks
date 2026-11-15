package androidx.emoji2.text;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.view.KeyEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public class EmojiCompat {

    private static final Object f8720o = new Object();

    private static final Object f8721p = new Object();

    private static volatile EmojiCompat f8722q;

    private final Set f8724b;

    private final b f8727e;

    final g f8728f;

    private final i f8729g;

    final boolean f8730h;

    final boolean f8731i;

    final int[] f8732j;

    private final boolean f8733k;

    private final int f8734l;

    private final int f8735m;

    private final e f8736n;

    private final ReadWriteLock f8723a = new ReentrantReadWriteLock();

    private volatile int f8725c = 3;

    private final Handler f8726d = new Handler(Looper.getMainLooper());

    private static class ListenerDispatcher implements Runnable {
        private final List<f> mInitCallbacks;
        private final int mLoadState;
        private final Throwable mThrowable;

        ListenerDispatcher(@NonNull f fVar, int i10) {
            this(Arrays.asList((f) androidx.core.util.i.h(fVar, "initCallback cannot be null")), i10, null);
        }

        @Override
        public void run() {
            int size = this.mInitCallbacks.size();
            int i10 = 0;
            if (this.mLoadState != 1) {
                while (i10 < size) {
                    this.mInitCallbacks.get(i10).a(this.mThrowable);
                    i10++;
                }
            } else {
                while (i10 < size) {
                    this.mInitCallbacks.get(i10).b();
                    i10++;
                }
            }
        }

        ListenerDispatcher(@NonNull Collection<f> collection, int i10) {
            this(collection, i10, null);
        }

        ListenerDispatcher(@NonNull Collection<f> collection, int i10, @Nullable Throwable th2) {
            androidx.core.util.i.h(collection, "initCallbacks cannot be null");
            this.mInitCallbacks = new ArrayList(collection);
            this.mLoadState = i10;
            this.mThrowable = th2;
        }
    }

    private static final class a extends b {

        private volatile androidx.emoji2.text.h f8737b;

        private volatile n f8738c;

        class C0072a extends h {
            C0072a() {
            }

            @Override
            public void a(Throwable th2) {
                a.this.f8740a.n(th2);
            }

            @Override
            public void b(n nVar) {
                a.this.d(nVar);
            }
        }

        a(EmojiCompat emojiCompat) {
            super(emojiCompat);
        }

        @Override
        void a() {
            try {
                this.f8740a.f8728f.a(new C0072a());
            } catch (Throwable th2) {
                this.f8740a.n(th2);
            }
        }

        @Override
        CharSequence b(CharSequence charSequence, int i10, int i11, int i12, boolean z10) {
            return this.f8737b.h(charSequence, i10, i11, i12, z10);
        }

        @Override
        void c(EditorInfo editorInfo) {
            editorInfo.extras.putInt("android.support.text.emoji.emojiCompat_metadataVersion", this.f8738c.e());
            editorInfo.extras.putBoolean("android.support.text.emoji.emojiCompat_replaceAll", this.f8740a.f8730h);
        }

        void d(n nVar) {
            if (nVar == null) {
                this.f8740a.n(new IllegalArgumentException("metadataRepo cannot be null"));
                return;
            }
            this.f8738c = nVar;
            n nVar2 = this.f8738c;
            i iVar = this.f8740a.f8729g;
            e eVar = this.f8740a.f8736n;
            EmojiCompat emojiCompat = this.f8740a;
            this.f8737b = new androidx.emoji2.text.h(nVar2, iVar, eVar, emojiCompat.f8731i, emojiCompat.f8732j, androidx.emoji2.text.g.a());
            this.f8740a.o();
        }
    }

    private static class b {

        final EmojiCompat f8740a;

        b(EmojiCompat emojiCompat) {
            this.f8740a = emojiCompat;
        }

        abstract void a();

        abstract CharSequence b(CharSequence charSequence, int i10, int i11, int i12, boolean z10);

        abstract void c(EditorInfo editorInfo);
    }

    public static abstract class c {

        final g f8741a;

        i f8742b;

        boolean f8743c;

        boolean f8744d;

        int[] f8745e;

        Set f8746f;

        boolean f8747g;

        int f8748h = -16711936;

        int f8749i = 0;

        e f8750j = new androidx.emoji2.text.e();

        protected c(g gVar) {
            androidx.core.util.i.h(gVar, "metadataLoader cannot be null.");
            this.f8741a = gVar;
        }

        protected final g a() {
            return this.f8741a;
        }

        public c b(int i10) {
            this.f8749i = i10;
            return this;
        }
    }

    public static class d implements i {
        @Override
        public androidx.emoji2.text.i a(p pVar) {
            return new q(pVar);
        }
    }

    public interface e {
        boolean a(CharSequence charSequence, int i10, int i11, int i12);
    }

    public interface g {
        void a(h hVar);
    }

    public static abstract class h {
        public abstract void a(Throwable th2);

        public abstract void b(n nVar);
    }

    public interface i {
        androidx.emoji2.text.i a(p pVar);
    }

    private EmojiCompat(c cVar) {
        this.f8730h = cVar.f8743c;
        this.f8731i = cVar.f8744d;
        this.f8732j = cVar.f8745e;
        this.f8733k = cVar.f8747g;
        this.f8734l = cVar.f8748h;
        this.f8728f = cVar.f8741a;
        this.f8735m = cVar.f8749i;
        this.f8736n = cVar.f8750j;
        androidx.collection.b bVar = new androidx.collection.b();
        this.f8724b = bVar;
        i iVar = cVar.f8742b;
        this.f8729g = iVar == null ? new d() : iVar;
        Set set = cVar.f8746f;
        if (set != null && !set.isEmpty()) {
            bVar.addAll(cVar.f8746f);
        }
        this.f8727e = new a(this);
        m();
    }

    public static EmojiCompat c() {
        EmojiCompat emojiCompat;
        synchronized (f8720o) {
            emojiCompat = f8722q;
            androidx.core.util.i.i(emojiCompat != null, "EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK's manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message.");
        }
        return emojiCompat;
    }

    public static boolean f(InputConnection inputConnection, Editable editable, int i10, int i11, boolean z10) {
        return androidx.emoji2.text.h.b(inputConnection, editable, i10, i11, z10);
    }

    public static boolean g(Editable editable, int i10, KeyEvent keyEvent) {
        return androidx.emoji2.text.h.c(editable, i10, keyEvent);
    }

    public static EmojiCompat h(c cVar) {
        EmojiCompat emojiCompat = f8722q;
        if (emojiCompat == null) {
            synchronized (f8720o) {
                try {
                    emojiCompat = f8722q;
                    if (emojiCompat == null) {
                        emojiCompat = new EmojiCompat(cVar);
                        f8722q = emojiCompat;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return emojiCompat;
    }

    public static boolean i() {
        return f8722q != null;
    }

    private boolean k() {
        return e() == 1;
    }

    private void m() {
        this.f8723a.writeLock().lock();
        try {
            if (this.f8735m == 0) {
                this.f8725c = 0;
            }
            this.f8723a.writeLock().unlock();
            if (e() == 0) {
                this.f8727e.a();
            }
        } catch (Throwable th2) {
            this.f8723a.writeLock().unlock();
            throw th2;
        }
    }

    public int d() {
        return this.f8734l;
    }

    public int e() {
        this.f8723a.readLock().lock();
        try {
            return this.f8725c;
        } finally {
            this.f8723a.readLock().unlock();
        }
    }

    public boolean j() {
        return this.f8733k;
    }

    public void l() {
        androidx.core.util.i.i(this.f8735m == 1, "Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading");
        if (k()) {
            return;
        }
        this.f8723a.writeLock().lock();
        try {
            if (this.f8725c == 0) {
                this.f8723a.writeLock().unlock();
                return;
            }
            this.f8725c = 0;
            this.f8723a.writeLock().unlock();
            this.f8727e.a();
        } catch (Throwable th2) {
            this.f8723a.writeLock().unlock();
            throw th2;
        }
    }

    void n(Throwable th2) {
        ArrayList arrayList = new ArrayList();
        this.f8723a.writeLock().lock();
        try {
            this.f8725c = 2;
            arrayList.addAll(this.f8724b);
            this.f8724b.clear();
            this.f8723a.writeLock().unlock();
            this.f8726d.post(new ListenerDispatcher(arrayList, this.f8725c, th2));
        } catch (Throwable th3) {
            this.f8723a.writeLock().unlock();
            throw th3;
        }
    }

    void o() {
        ArrayList arrayList = new ArrayList();
        this.f8723a.writeLock().lock();
        try {
            this.f8725c = 1;
            arrayList.addAll(this.f8724b);
            this.f8724b.clear();
            this.f8723a.writeLock().unlock();
            this.f8726d.post(new ListenerDispatcher(arrayList, this.f8725c));
        } catch (Throwable th2) {
            this.f8723a.writeLock().unlock();
            throw th2;
        }
    }

    public CharSequence p(CharSequence charSequence) {
        return q(charSequence, 0, charSequence == null ? 0 : charSequence.length());
    }

    public CharSequence q(CharSequence charSequence, int i10, int i11) {
        return r(charSequence, i10, i11, Integer.MAX_VALUE);
    }

    public CharSequence r(CharSequence charSequence, int i10, int i11, int i12) {
        return s(charSequence, i10, i11, i12, 0);
    }

    public CharSequence s(CharSequence charSequence, int i10, int i11, int i12, int i13) {
        boolean z10;
        androidx.core.util.i.i(k(), "Not initialized yet");
        androidx.core.util.i.e(i10, "start cannot be negative");
        androidx.core.util.i.e(i11, "end cannot be negative");
        androidx.core.util.i.e(i12, "maxEmojiCount cannot be negative");
        androidx.core.util.i.b(i10 <= i11, "start should be <= than end");
        if (charSequence == null) {
            return null;
        }
        androidx.core.util.i.b(i10 <= charSequence.length(), "start should be < than charSequence length");
        androidx.core.util.i.b(i11 <= charSequence.length(), "end should be < than charSequence length");
        if (charSequence.length() == 0 || i10 == i11) {
            return charSequence;
        }
        if (i13 != 1) {
            z10 = i13 != 2 ? this.f8730h : false;
        } else {
            z10 = true;
        }
        return this.f8727e.b(charSequence, i10, i11, i12, z10);
    }

    public void t(f fVar) {
        androidx.core.util.i.h(fVar, "initCallback cannot be null");
        this.f8723a.writeLock().lock();
        try {
            if (this.f8725c == 1 || this.f8725c == 2) {
                this.f8726d.post(new ListenerDispatcher(fVar, this.f8725c));
            } else {
                this.f8724b.add(fVar);
            }
        } finally {
            this.f8723a.writeLock().unlock();
        }
    }

    public void u(f fVar) {
        androidx.core.util.i.h(fVar, "initCallback cannot be null");
        this.f8723a.writeLock().lock();
        try {
            this.f8724b.remove(fVar);
        } finally {
            this.f8723a.writeLock().unlock();
        }
    }

    public void v(EditorInfo editorInfo) {
        if (!k() || editorInfo == null) {
            return;
        }
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        this.f8727e.c(editorInfo);
    }

    public static abstract class f {
        public void b() {
        }

        public void a(Throwable th2) {
        }
    }
}
