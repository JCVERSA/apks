package com.yandex.div.storage;

import android.content.Context;
import com.yandex.div.histogram.DivParsingHistogramReporter;
import com.yandex.div.storage.DivStorageComponent;
import com.yandex.div.storage.analytics.CardErrorLoggerFactory;
import com.yandex.div.storage.templates.TemplatesContainer;
import defpackage.at1;
import defpackage.c74;
import defpackage.l45;
import defpackage.lj5;
import defpackage.lx7;
import defpackage.nq4;
import defpackage.oj8;
import defpackage.pb;
import defpackage.pq4;
import defpackage.sq4;
import defpackage.xn2;
import defpackage.y45;
import defpackage.zs1;

public interface DivStorageComponent {
    public static final Companion a = Companion.a;

    public static final class Companion {
        public static final Companion a = new Companion();

        public static DivStorageComponent c(Companion companion, Context context, sq4 sq4Var, nq4 nq4Var, lx7 lx7Var, oj8 oj8Var, oj8 oj8Var2, String str, int i, Object obj) {
            lx7 lx7Var2;
            sq4 sq4Var2 = (i & 2) != 0 ? sq4.a.a : sq4Var;
            nq4 nq4Var2 = (i & 4) != 0 ? null : nq4Var;
            if ((i & 8) != 0) {
                lx7Var2 = lx7.a;
                y45.i(lx7Var2, "LOG");
            } else {
                lx7Var2 = lx7Var;
            }
            return companion.b(context, sq4Var2, nq4Var2, lx7Var2, (i & 16) == 0 ? oj8Var : null, (i & 32) != 0 ? new lj5(new c74() {
                @Override
                public final DivParsingHistogramReporter invoke() {
                    return DivParsingHistogramReporter.a.a();
                }
            }) : oj8Var2, (i & 64) != 0 ? "" : str);
        }

        public static final zs1 e(Context context, String str, int i, zs1.a aVar, zs1.c cVar) {
            y45.j(context, "c");
            y45.j(str, "name");
            y45.j(aVar, "ccb");
            y45.j(cVar, "ucb");
            return new pb(context, str, i, aVar, cVar);
        }

        public final DivStorageComponent b(Context context, sq4 sq4Var, nq4 nq4Var, lx7 lx7Var, oj8 oj8Var, oj8 oj8Var2, String str) {
            y45.j(context, "context");
            y45.j(sq4Var, "histogramReporter");
            y45.j(lx7Var, "errorLogger");
            y45.j(oj8Var2, "parsingHistogramReporter");
            y45.j(str, "databaseNamePrefix");
            return d(context, sq4Var, nq4Var, lx7Var, oj8Var, oj8Var2, str);
        }

        public final l45 d(Context context, sq4 sq4Var, nq4 nq4Var, lx7 lx7Var, oj8 oj8Var, final oj8 oj8Var2, String str) {
            y45.j(context, "context");
            y45.j(sq4Var, "histogramReporter");
            y45.j(lx7Var, "errorLogger");
            y45.j(oj8Var2, "parsingHistogramReporter");
            y45.j(str, "databaseNamePrefix");
            DivStorageImpl divStorageImpl = new DivStorageImpl(context, new at1() {
                @Override
                public final zs1 a(Context context2, String str2, int i, zs1.a aVar, zs1.c cVar) {
                    return DivStorageComponent.Companion.e(context2, str2, i, aVar, cVar);
                }
            }, str);
            lj5 lj5Var = new lj5(new c74() {
                {
                    super(0);
                }

                @Override
                public final xn2 invoke() {
                    final oj8 oj8Var3 = oj8Var2;
                    return new xn2(new c74() {
                        {
                            super(0);
                        }

                        @Override
                        public final DivParsingHistogramReporter invoke() {
                            Object obj = oj8Var3.get();
                            y45.i(obj, "parsingHistogramReporter.get()");
                            return (DivParsingHistogramReporter) obj;
                        }
                    });
                }
            });
            pq4 pq4Var = new pq4(sq4Var, nq4Var);
            TemplatesContainer templatesContainer = new TemplatesContainer(divStorageImpl, lx7Var, pq4Var, lj5Var, nq4Var);
            return new l45(new a(divStorageImpl, templatesContainer, pq4Var, nq4Var, lj5Var, new CardErrorLoggerFactory(oj8Var, templatesContainer, lx7Var)), new d(divStorageImpl), divStorageImpl);
        }
    }

    c a();
}
