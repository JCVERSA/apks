package androidx.emoji2.text;

import android.content.Context;
import android.content.pm.PackageManager;
import android.database.ContentObserver;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Handler;
import java.nio.ByteBuffer;
import java.util.concurrent.Executor;
import java.util.concurrent.ThreadPoolExecutor;

public class j extends EmojiCompat.c {

    private static final a f8800k = new a();

    public static class a {
        public Typeface a(Context context, androidx.core.provider.k.b bVar) {
            return androidx.core.provider.k.a(context, null, new androidx.core.provider.k.b[]{bVar});
        }

        public androidx.core.provider.k.a b(Context context, androidx.core.provider.e eVar) {
            return androidx.core.provider.k.b(context, null, eVar);
        }

        public void c(Context context, Uri uri, ContentObserver contentObserver) {
            context.getContentResolver().registerContentObserver(uri, false, contentObserver);
        }

        public void d(Context context, ContentObserver contentObserver) {
            context.getContentResolver().unregisterContentObserver(contentObserver);
        }
    }

    static class b implements EmojiCompat.g {

        private final Context f8801a;

        private final androidx.core.provider.e f8802b;

        private final a f8803c;

        private final Object f8804d = new Object();

        private Handler f8805e;

        private Executor f8806f;

        private ThreadPoolExecutor f8807g;

        private c f8808h;

        EmojiCompat.h f8809i;

        private ContentObserver f8810j;

        private Runnable f8811k;

        class a extends ContentObserver {
            a(Handler handler) {
                super(handler);
            }

            @Override
            public void onChange(boolean z10, Uri uri) {
                b.this.d();
            }
        }

        b(Context context, androidx.core.provider.e eVar, a aVar) {
            androidx.core.util.i.h(context, "Context cannot be null");
            androidx.core.util.i.h(eVar, "FontRequest cannot be null");
            this.f8801a = context.getApplicationContext();
            this.f8802b = eVar;
            this.f8803c = aVar;
        }

        private void b() {
            synchronized (this.f8804d) {
                try {
                    this.f8809i = null;
                    ContentObserver contentObserver = this.f8810j;
                    if (contentObserver != null) {
                        this.f8803c.d(this.f8801a, contentObserver);
                        this.f8810j = null;
                    }
                    Handler handler = this.f8805e;
                    if (handler != null) {
                        handler.removeCallbacks(this.f8811k);
                    }
                    this.f8805e = null;
                    ThreadPoolExecutor threadPoolExecutor = this.f8807g;
                    if (threadPoolExecutor != null) {
                        threadPoolExecutor.shutdown();
                    }
                    this.f8806f = null;
                    this.f8807g = null;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        private androidx.core.provider.k.b e() {
            try {
                androidx.core.provider.k.a aVarB = this.f8803c.b(this.f8801a, this.f8802b);
                if (aVarB.e() == 0) {
                    androidx.core.provider.k.b[] bVarArrC = aVarB.c();
                    if (bVarArrC == null || bVarArrC.length == 0) {
                        throw new RuntimeException("fetchFonts failed (empty result)");
                    }
                    return bVarArrC[0];
                }
                throw new RuntimeException("fetchFonts failed (" + aVarB.e() + ")");
            } catch (PackageManager.NameNotFoundException e10) {
                throw new RuntimeException("provider not found", e10);
            }
        }

        private void f(Uri uri, long j10) {
            synchronized (this.f8804d) {
                try {
                    Handler handlerD = this.f8805e;
                    if (handlerD == null) {
                        handlerD = androidx.emoji2.text.c.d();
                        this.f8805e = handlerD;
                    }
                    if (this.f8810j == null) {
                        a aVar = new a(handlerD);
                        this.f8810j = aVar;
                        this.f8803c.c(this.f8801a, uri, aVar);
                    }
                    if (this.f8811k == null) {
                        this.f8811k = new Runnable() {
                            @Override
                            public final void run() {
                                this.f8814a.d();
                            }
                        };
                    }
                    handlerD.postDelayed(this.f8811k, j10);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public void a(EmojiCompat.h hVar) {
            androidx.core.util.i.h(hVar, "LoaderCallback cannot be null");
            synchronized (this.f8804d) {
                this.f8809i = hVar;
            }
            d();
        }

        void c() {
            synchronized (this.f8804d) {
                try {
                    if (this.f8809i == null) {
                        return;
                    }
                    try {
                        androidx.core.provider.k.b bVarE = e();
                        int iB = bVarE.b();
                        if (iB == 2) {
                            synchronized (this.f8804d) {
                                try {
                                    c cVar = this.f8808h;
                                    if (cVar != null) {
                                        long jA = cVar.a();
                                        if (jA >= 0) {
                                            f(bVarE.d(), jA);
                                            return;
                                        }
                                    }
                                } catch (Throwable th2) {
                                    throw th2;
                                }
                            }
                        }
                        if (iB != 0) {
                            throw new RuntimeException("fetchFonts result is not OK. (" + iB + ")");
                        }
                        try {
                            androidx.core.os.s.a("EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface");
                            Typeface typefaceA = this.f8803c.a(this.f8801a, bVarE);
                            ByteBuffer byteBufferF = z0.p.f(this.f8801a, null, bVarE.d());
                            if (byteBufferF == null || typefaceA == null) {
                                throw new RuntimeException("Unable to open file.");
                            }
                            n nVarB = n.b(typefaceA, byteBufferF);
                            androidx.core.os.s.b();
                            synchronized (this.f8804d) {
                                try {
                                    EmojiCompat.h hVar = this.f8809i;
                                    if (hVar != null) {
                                        hVar.b(nVarB);
                                    }
                                } catch (Throwable th3) {
                                    throw th3;
                                }
                            }
                            b();
                        } catch (Throwable th4) {
                            androidx.core.os.s.b();
                            throw th4;
                        }
                    } catch (Throwable th5) {
                        synchronized (this.f8804d) {
                            try {
                                EmojiCompat.h hVar2 = this.f8809i;
                                if (hVar2 != null) {
                                    hVar2.a(th5);
                                }
                                b();
                            } catch (Throwable th6) {
                                throw th6;
                            }
                        }
                    }
                } catch (Throwable th7) {
                    throw th7;
                }
            }
        }

        void d() {
            synchronized (this.f8804d) {
                try {
                    if (this.f8809i == null) {
                        return;
                    }
                    if (this.f8806f == null) {
                        ThreadPoolExecutor threadPoolExecutorB = androidx.emoji2.text.c.b("emojiCompat");
                        this.f8807g = threadPoolExecutorB;
                        this.f8806f = threadPoolExecutorB;
                    }
                    this.f8806f.execute(new Runnable() {
                        @Override
                        public final void run() {
                            this.f8813a.c();
                        }
                    });
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public void g(Executor executor) {
            synchronized (this.f8804d) {
                this.f8806f = executor;
            }
        }
    }

    public static abstract class c {
        public abstract long a();
    }

    public j(Context context, androidx.core.provider.e eVar) {
        super(new b(context, eVar, f8800k));
    }

    public j c(Executor executor) {
        ((b) a()).g(executor);
        return this;
    }
}
