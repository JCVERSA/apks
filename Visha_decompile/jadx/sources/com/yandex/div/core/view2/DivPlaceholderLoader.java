package com.yandex.div.core.view2;

import com.yandex.div.core.DecodeBase64ImageTask;
import defpackage.by4;
import defpackage.e74;
import defpackage.fd2;
import defpackage.kn5;
import defpackage.wc3;
import defpackage.y45;
import defpackage.zfb;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

public class DivPlaceholderLoader {
    public final fd2 a;
    public final ExecutorService b;

    public DivPlaceholderLoader(fd2 fd2Var, ExecutorService executorService) {
        y45.j(fd2Var, "imageStubProvider");
        y45.j(executorService, "executorService");
        this.a = fd2Var;
        this.b = executorService;
    }

    public void b(kn5 kn5Var, final wc3 wc3Var, String str, final int i, boolean z, final e74 e74Var, final e74 e74Var2) {
        zfb zfbVar;
        y45.j(kn5Var, "imageView");
        y45.j(wc3Var, "errorCollector");
        y45.j(e74Var, "onSetPlaceholder");
        y45.j(e74Var2, "onSetPreview");
        if (str != null) {
            d(str, kn5Var, z, new e74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    invoke((by4) obj);
                    return zfb.a;
                }

                public final void invoke(by4 by4Var) {
                    if (by4Var != null) {
                        e74Var2.invoke(by4Var);
                    } else {
                        wc3Var.f(new Throwable("Preview doesn't contain base64 image"));
                        e74Var.invoke(this.a.a(i));
                    }
                }
            });
            zfbVar = zfb.a;
        } else {
            zfbVar = null;
        }
        if (zfbVar == null) {
            e74Var.invoke(this.a.a(i));
        }
    }

    public final Future c(String str, boolean z, e74 e74Var) {
        DecodeBase64ImageTask decodeBase64ImageTask = new DecodeBase64ImageTask(str, z, e74Var);
        if (!z) {
            return this.b.submit(decodeBase64ImageTask);
        }
        decodeBase64ImageTask.run();
        return null;
    }

    public final void d(String str, final kn5 kn5Var, boolean z, final e74 e74Var) {
        Future loadingTask = kn5Var.getLoadingTask();
        if (loadingTask != null) {
            loadingTask.cancel(true);
        }
        Future futureC = c(str, z, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((by4) obj);
                return zfb.a;
            }

            public final void invoke(by4 by4Var) {
                e74Var.invoke(by4Var);
                kn5Var.cleanLoadingTask();
            }
        });
        if (futureC != null) {
            kn5Var.saveLoadingTask(futureC);
        }
    }
}
