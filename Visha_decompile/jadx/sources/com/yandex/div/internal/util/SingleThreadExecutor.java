package com.yandex.div.internal.util;

import defpackage.xi;
import defpackage.y45;
import defpackage.zfb;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

public abstract class SingleThreadExecutor {
    public final String a;
    public final Object b;
    public Worker c;
    public List d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/yandex/div/internal/util/SingleThreadExecutor$Worker;", "Lcom/yandex/div/internal/util/NamedRunnable;", MethodDecl.initName, "(Lcom/yandex/div/internal/util/SingleThreadExecutor;)V", "Lzfb;", "execute", "()V", "utils_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public final class Worker extends NamedRunnable {
        final SingleThreadExecutor this$0;

        public Worker(SingleThreadExecutor singleThreadExecutor) {
            super(singleThreadExecutor.a);
        }

        @Override
        public void execute() {
            Object obj = this.this$0.b;
            SingleThreadExecutor singleThreadExecutor = this.this$0;
            synchronized (obj) {
                if (y45.e(singleThreadExecutor.c, this) && singleThreadExecutor.d != null) {
                    List list = singleThreadExecutor.d;
                    singleThreadExecutor.d = null;
                    zfb zfbVar = zfb.a;
                    boolean z = true;
                    while (z) {
                        if (list != null) {
                            try {
                                SingleThreadExecutor singleThreadExecutor2 = this.this$0;
                                Iterator it = list.iterator();
                                while (it.hasNext()) {
                                    try {
                                        ((Runnable) it.next()).run();
                                    } catch (RuntimeException e) {
                                        singleThreadExecutor2.g(e);
                                    }
                                }
                            } catch (Throwable th) {
                                Object obj2 = this.this$0.b;
                                SingleThreadExecutor singleThreadExecutor3 = this.this$0;
                                synchronized (obj2) {
                                    singleThreadExecutor3.c = null;
                                    zfb zfbVar2 = zfb.a;
                                    throw th;
                                }
                            }
                        }
                        Object obj3 = this.this$0.b;
                        SingleThreadExecutor singleThreadExecutor4 = this.this$0;
                        synchronized (obj3) {
                            try {
                                if (singleThreadExecutor4.d != null) {
                                    list = singleThreadExecutor4.d;
                                    singleThreadExecutor4.d = null;
                                } else {
                                    singleThreadExecutor4.c = null;
                                    z = false;
                                }
                                zfb zfbVar3 = zfb.a;
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                    }
                    return;
                }
                xi.i("We shouldn't create excessive workers");
            }
        }
    }

    public abstract void g(RuntimeException runtimeException);
}
