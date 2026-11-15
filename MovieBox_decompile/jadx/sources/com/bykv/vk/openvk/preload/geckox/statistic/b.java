package com.bykv.vk.openvk.preload.geckox.statistic;

import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import com.bykv.vk.openvk.preload.b.d;
import com.bykv.vk.openvk.preload.geckox.d.b.b.f;
import com.bykv.vk.openvk.preload.geckox.d.e;
import com.bykv.vk.openvk.preload.geckox.d.g;
import com.bykv.vk.openvk.preload.geckox.d.h;
import com.bykv.vk.openvk.preload.geckox.model.UpdatePackage;
import com.bykv.vk.openvk.preload.geckox.statistic.model.StatisticModel;
import com.cloud.tmc.kernel.constants.TmcConstants;
import java.util.Map;

public final class b {
    private static com.bykv.vk.openvk.preload.b.b.a a(final com.bykv.vk.openvk.preload.geckox.b bVar) {
        return new com.bykv.vk.openvk.preload.b.b.a() {
            @Override
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar) {
                super.a(bVar2, dVar);
                try {
                    bVar.f().put(dVar.getClass().getSimpleName() + TmcConstants.NAVIGATION_ON_START, "");
                } catch (Throwable unused) {
                }
            }

            @Override
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar) {
                super.b(bVar2, dVar);
                try {
                    bVar.f().put(dVar.getClass().getSimpleName() + "onEnd", "");
                    if ((dVar instanceof e) && (dVar.f() instanceof Map)) {
                        bVar.f().put(dVar.getClass().getSimpleName(), ((Map) dVar.f()).get("f36c832c8dbb162c49b46a7a6dd47fbd"));
                    }
                } catch (Throwable unused) {
                }
            }

            @Override
            public final <T> void c(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar) {
                super.c(bVar2, dVar);
                try {
                    c.a(bVar, a.a(dVar.b()));
                } catch (Throwable unused) {
                }
            }

            @Override
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar, Throwable th2) {
                super.a(bVar2, dVar, th2);
                try {
                    bVar.f().put(dVar.getClass().getSimpleName() + "onException", th2.toString());
                    c.a(bVar, a.a(dVar.b()));
                } catch (Throwable unused) {
                }
            }

            @Override
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar, Throwable th2) {
                super.b(bVar2, dVar, th2);
                try {
                    bVar.f().put(dVar.getClass().getSimpleName() + "onChainException", th2.toString());
                    c.a(bVar, a.a(dVar.b()));
                } catch (Throwable unused) {
                }
            }
        };
    }

    private static com.bykv.vk.openvk.preload.b.b.a b(final Context context) {
        return new com.bykv.vk.openvk.preload.b.b.a() {
            @Override
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar, d dVar) {
                super.a(bVar, dVar);
                Pair pair = (Pair) bVar.b(h.class);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a aVarA = a.a(dVar.b()).a(((UpdatePackage) pair.second).getChannel());
                aVarA.f20114d = ((Uri) pair.first).toString();
                aVarA.f20124n = com.bykv.vk.openvk.preload.geckox.utils.e.a(context);
                aVarA.f20116f = SystemClock.uptimeMillis();
                aVarA.f20125o = Long.valueOf(((UpdatePackage) pair.second).getPatch().getId());
                aVarA.f20126p = Long.valueOf(((UpdatePackage) pair.second).getFullPackage().getId());
                aVarA.f20113c = ((UpdatePackage) pair.second).getChannel();
            }

            @Override
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar, d dVar) {
                super.b(bVar, dVar);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a aVarA = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar.b(h.class)).second).getChannel());
                aVarA.f20118h = true;
                aVarA.f20117g = SystemClock.uptimeMillis();
            }

            @Override
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar, d dVar, Throwable th2) {
                super.a(bVar, dVar, th2);
                Pair pair = (Pair) bVar.b(h.class);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a aVarA = a.a(dVar.b()).a(((UpdatePackage) pair.second).getChannel());
                String string = ((Uri) pair.first).toString();
                aVarA.f20118h = false;
                aVarA.f20117g = SystemClock.uptimeMillis();
                aVarA.f20115e.add(new StatisticModel.PackageStatisticModel.DownloadFailRecords(string, th2.getMessage()));
            }
        };
    }

    private static com.bykv.vk.openvk.preload.b.b.a a(final Context context) {
        return new com.bykv.vk.openvk.preload.b.b.a() {
            @Override
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar, d dVar) {
                super.a(bVar, dVar);
                Pair pair = (Pair) bVar.b(g.class);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a aVarA = a.a(dVar.b()).a(((UpdatePackage) pair.second).getChannel());
                aVarA.f20130t = ((Uri) pair.first).toString();
                aVarA.f20124n = com.bykv.vk.openvk.preload.geckox.utils.e.a(context);
                aVarA.f20132v = SystemClock.uptimeMillis();
                aVarA.f20126p = Long.valueOf(((UpdatePackage) pair.second).getFullPackage().getId());
                aVarA.f20113c = ((UpdatePackage) pair.second).getChannel();
                if (!TextUtils.isEmpty(((UpdatePackage) pair.second).getAccessKey())) {
                    aVarA.f20111a = ((UpdatePackage) pair.second).getAccessKey();
                }
                if (TextUtils.isEmpty(((UpdatePackage) pair.second).getGroupName())) {
                    return;
                }
                aVarA.f20112b = ((UpdatePackage) pair.second).getGroupName();
            }

            @Override
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar, d dVar) {
                super.b(bVar, dVar);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a aVarA = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar.b(g.class)).second).getChannel());
                aVarA.f20136z = true;
                aVarA.f20133w = SystemClock.uptimeMillis();
            }

            @Override
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar, d dVar, Throwable th2) {
                super.a(bVar, dVar, th2);
                Pair pair = (Pair) bVar.b(g.class);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a aVarA = a.a(dVar.b()).a(((UpdatePackage) pair.second).getChannel());
                String string = ((Uri) pair.first).toString();
                aVarA.f20136z = false;
                aVarA.f20133w = SystemClock.uptimeMillis();
                aVarA.f20131u.add(new StatisticModel.PackageStatisticModel.DownloadFailRecords(string, th2.getMessage()));
            }
        };
    }

    public static void a(com.bykv.vk.openvk.preload.geckox.a aVar, com.bykv.vk.openvk.preload.geckox.b bVar) {
        aVar.a(e.class, a(bVar));
        aVar.a(com.bykv.vk.openvk.preload.geckox.d.d.class, a(bVar));
        aVar.a(com.bykv.vk.openvk.preload.geckox.d.a.b.c.class, b(bVar.a()));
        aVar.a(com.bykv.vk.openvk.preload.geckox.d.a.b.b.class, new com.bykv.vk.openvk.preload.b.b.a() {
            @Override
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar, Throwable th2) {
                super.a(bVar2, dVar, th2);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a aVarA = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(h.class)).second).getChannel());
                aVarA.f20119i = false;
                SystemClock.uptimeMillis();
                aVarA.f20127q = th2.getMessage();
            }

            @Override
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar) {
                super.b(bVar2, dVar);
                a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(h.class)).second).getChannel()).f20119i = true;
            }
        });
        aVar.a(com.bykv.vk.openvk.preload.geckox.d.a.b.d.class, new com.bykv.vk.openvk.preload.b.b.a() {
            @Override
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar, Throwable th2) {
                super.a(bVar2, dVar, th2);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a aVarA = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(h.class)).second).getChannel());
                aVarA.f20120j = false;
                SystemClock.uptimeMillis();
                aVarA.f20128r = th2.getMessage();
            }

            @Override
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar) {
                super.b(bVar2, dVar);
                a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(h.class)).second).getChannel()).f20120j = true;
                SystemClock.uptimeMillis();
            }
        });
        aVar.a(com.bykv.vk.openvk.preload.geckox.d.a.b.a.class, new com.bykv.vk.openvk.preload.b.b.a() {
            @Override
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar, Throwable th2) {
                super.a(bVar2, dVar, th2);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a aVarA = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(h.class)).second).getChannel());
                aVarA.f20120j = false;
                aVarA.f20122l = SystemClock.uptimeMillis();
                aVarA.f20128r = th2.getMessage();
            }

            @Override
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar) {
                super.b(bVar2, dVar);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a aVarA = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(h.class)).second).getChannel());
                aVarA.f20120j = true;
                aVarA.f20122l = SystemClock.uptimeMillis();
            }
        });
        aVar.a(com.bykv.vk.openvk.preload.geckox.d.a.b.e.class, new com.bykv.vk.openvk.preload.b.b.a() {
            @Override
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar, Throwable th2) {
                super.a(bVar2, dVar, th2);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a aVarA = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(h.class)).second).getChannel());
                aVarA.f20121k = false;
                aVarA.f20129s = th2.getMessage();
                aVarA.f20123m = SystemClock.uptimeMillis();
            }

            @Override
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar) {
                super.b(bVar2, dVar);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a aVarA = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(h.class)).second).getChannel());
                aVarA.f20121k = true;
                aVarA.f20123m = SystemClock.uptimeMillis();
            }
        });
        aVar.a(com.bykv.vk.openvk.preload.geckox.d.a.a.b.class, a(bVar.a()));
        aVar.a(com.bykv.vk.openvk.preload.geckox.d.a.a.a.class, new com.bykv.vk.openvk.preload.b.b.a() {
            @Override
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar, Throwable th2) {
                super.a(bVar2, dVar, th2);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a aVarA = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(g.class)).second).getChannel());
                aVarA.A = false;
                aVarA.f20134x = SystemClock.uptimeMillis();
                aVarA.C = th2.getMessage();
            }

            @Override
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar) {
                super.b(bVar2, dVar);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a aVarA = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(g.class)).second).getChannel());
                aVarA.A = true;
                aVarA.f20134x = SystemClock.uptimeMillis();
            }
        });
        aVar.a(com.bykv.vk.openvk.preload.geckox.d.a.a.c.class, new com.bykv.vk.openvk.preload.b.b.a() {
            @Override
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar, Throwable th2) {
                super.a(bVar2, dVar, th2);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a aVarA = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(g.class)).second).getChannel());
                aVarA.B = false;
                aVarA.f20135y = SystemClock.uptimeMillis();
                aVarA.D = th2.getMessage();
            }

            @Override
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar) {
                super.b(bVar2, dVar);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a aVarA = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(g.class)).second).getChannel());
                aVarA.B = true;
                aVarA.f20135y = SystemClock.uptimeMillis();
            }
        });
        aVar.a(com.bykv.vk.openvk.preload.geckox.d.b.b.c.class, b(bVar.a()));
        aVar.a(com.bykv.vk.openvk.preload.geckox.d.b.b.b.class, new com.bykv.vk.openvk.preload.b.b.a() {
            @Override
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar, Throwable th2) {
                super.a(bVar2, dVar, th2);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a aVarA = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(h.class)).second).getChannel());
                aVarA.f20119i = false;
                SystemClock.uptimeMillis();
                aVarA.f20127q = th2.getMessage();
            }

            @Override
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar) {
                super.b(bVar2, dVar);
                a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(h.class)).second).getChannel()).f20119i = true;
            }
        });
        aVar.a(com.bykv.vk.openvk.preload.geckox.d.b.b.d.class, new com.bykv.vk.openvk.preload.b.b.a() {
            @Override
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar, Throwable th2) {
                super.a(bVar2, dVar, th2);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a aVarA = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(h.class)).second).getChannel());
                aVarA.f20120j = false;
                SystemClock.uptimeMillis();
                aVarA.f20128r = th2.getMessage();
            }

            @Override
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar) {
                super.b(bVar2, dVar);
                a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(h.class)).second).getChannel()).f20120j = true;
                SystemClock.uptimeMillis();
            }
        });
        aVar.a(com.bykv.vk.openvk.preload.geckox.d.b.b.a.class, new com.bykv.vk.openvk.preload.b.b.a() {
            @Override
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar, Throwable th2) {
                super.a(bVar2, dVar, th2);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a aVarA = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(h.class)).second).getChannel());
                aVarA.f20120j = false;
                aVarA.f20122l = SystemClock.uptimeMillis();
                aVarA.f20128r = th2.getMessage();
            }

            @Override
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar) {
                super.b(bVar2, dVar);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a aVarA = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(h.class)).second).getChannel());
                aVarA.f20120j = true;
                aVarA.f20122l = SystemClock.uptimeMillis();
            }
        });
        aVar.a(f.class, new com.bykv.vk.openvk.preload.b.b.a() {
            @Override
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar, Throwable th2) {
                super.a(bVar2, dVar, th2);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a aVarA = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(h.class)).second).getChannel());
                aVarA.f20121k = false;
                aVarA.f20123m = SystemClock.uptimeMillis();
                aVarA.f20129s = th2.getMessage();
            }

            @Override
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar) {
                super.b(bVar2, dVar);
            }

            @Override
            public final <T> void c(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar) {
                super.c(bVar2, dVar);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a aVarA = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(h.class)).second).getChannel());
                aVarA.f20121k = true;
                aVarA.f20123m = SystemClock.uptimeMillis();
            }

            @Override
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar, Throwable th2) {
                super.b(bVar2, dVar, th2);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a aVarA = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(h.class)).second).getChannel());
                aVarA.f20121k = false;
                aVarA.f20123m = SystemClock.uptimeMillis();
                aVarA.D = th2.getMessage();
            }
        });
        aVar.a(com.bykv.vk.openvk.preload.geckox.d.b.a.b.class, a(bVar.a()));
        aVar.a(com.bykv.vk.openvk.preload.geckox.d.b.a.a.class, new com.bykv.vk.openvk.preload.b.b.a() {
            @Override
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar, Throwable th2) {
                super.a(bVar2, dVar, th2);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a aVarA = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(g.class)).second).getChannel());
                aVarA.A = false;
                aVarA.f20134x = SystemClock.uptimeMillis();
                aVarA.C = th2.getMessage();
            }

            @Override
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar) {
                super.b(bVar2, dVar);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a aVarA = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(g.class)).second).getChannel());
                aVarA.A = true;
                aVarA.f20134x = SystemClock.uptimeMillis();
            }
        });
        aVar.a(com.bykv.vk.openvk.preload.geckox.d.b.a.d.class, new com.bykv.vk.openvk.preload.b.b.a() {
            @Override
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar, Throwable th2) {
                super.a(bVar2, dVar, th2);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a aVarA = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(g.class)).second).getChannel());
                aVarA.B = false;
                aVarA.f20135y = SystemClock.uptimeMillis();
                aVarA.D = th2.getMessage();
            }

            @Override
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar, Throwable th2) {
                super.b(bVar2, dVar, th2);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a aVarA = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(g.class)).second).getChannel());
                aVarA.B = false;
                aVarA.f20135y = SystemClock.uptimeMillis();
                aVarA.D = th2.getMessage();
            }

            @Override
            public final <T> void c(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar) {
                super.c(bVar2, dVar);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a aVarA = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(g.class)).second).getChannel());
                aVarA.B = true;
                aVarA.f20135y = SystemClock.uptimeMillis();
            }
        });
    }
}
