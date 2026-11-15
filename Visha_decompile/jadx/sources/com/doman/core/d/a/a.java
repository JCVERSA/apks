package com.doman.core.d.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.ref.Reference;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

public final class a {
    public long a = 1000;
    boolean b = true;
    boolean c = false;

    @NonNull
    final com.doman.core.d.a.b<b> d = new com.doman.core.d.a.b<>();
    Handler e = new HandlerC0058a(b(), this);

    public static class HandlerC0058a extends Handler {
        SoftReference<a> a;

        public HandlerC0058a(Looper looper, a aVar) {
            super(looper);
            this.a = new SoftReference<>(aVar);
        }

        @Override
        public final void handleMessage(Message message) {
            a aVar;
            ArrayList arrayList;
            super.handleMessage(message);
            SoftReference<a> softReference = this.a;
            if (softReference == null || softReference.get() == null || message.what != 10086 || (aVar = this.a.get()) == null || aVar.c || aVar.b) {
                return;
            }
            synchronized (aVar.d) {
                try {
                    com.doman.core.d.a.b<b> bVar = aVar.d;
                    arrayList = new ArrayList();
                    Iterator<Reference<b>> it = bVar.b.iterator();
                    while (it.hasNext()) {
                        b bVar2 = it.next().get();
                        if (bVar2 != null) {
                            arrayList.add(bVar2);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (!arrayList.isEmpty()) {
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    ((b) it2.next()).a();
                }
            }
            Handler handler = aVar.e;
            handler.sendMessageDelayed(handler.obtainMessage(10086), aVar.a);
        }
    }

    public interface b {
        void a();
    }

    @Nullable
    private static Looper b() {
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper != null) {
            return mainLooper;
        }
        try {
            Looper.prepareMainLooper();
            return Looper.getMainLooper();
        } catch (Exception unused) {
            return null;
        }
    }

    public final synchronized a a() {
        if (this.c) {
            return this;
        }
        if (!this.b) {
            return this;
        }
        this.b = false;
        Handler handler = this.e;
        handler.sendMessage(handler.obtainMessage(10086));
        return this;
    }

    public final void a(b bVar) {
        if (this.c) {
            return;
        }
        synchronized (this.d) {
            try {
                com.doman.core.d.a.b<b> bVar2 = this.d;
                while (true) {
                    Reference<? extends b> referencePoll = bVar2.a.poll();
                    if (referencePoll == null) {
                        break;
                    } else {
                        bVar2.b.remove(referencePoll);
                    }
                }
                com.doman.core.d.a.b<b> bVar3 = this.d;
                Iterator<Reference<b>> it = bVar3.b.iterator();
                while (it.hasNext()) {
                    if (bVar != it.next().get()) {
                    }
                }
                bVar3.b.add(new WeakReference(bVar));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(b bVar) {
        if (this.c) {
            return;
        }
        synchronized (this.d) {
            try {
                com.doman.core.d.a.b<b> bVar2 = this.d;
                for (Reference<b> reference : bVar2.b) {
                    if (bVar == reference.get()) {
                        bVar2.b.remove(reference);
                        break;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
