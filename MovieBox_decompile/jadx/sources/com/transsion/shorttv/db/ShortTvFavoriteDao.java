package com.transsion.shorttv.db;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;

public interface ShortTvFavoriteDao {

    public static final class DefaultImpls {
        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        public static Object a(ShortTvFavoriteDao shortTvFavoriteDao, ShortTvFavoriteStateBean shortTvFavoriteStateBean, Continuation continuation) {
            ShortTvFavoriteDao$insertOrUpdate$1 shortTvFavoriteDao$insertOrUpdate$1;
            if (continuation instanceof ShortTvFavoriteDao$insertOrUpdate$1) {
                shortTvFavoriteDao$insertOrUpdate$1 = (ShortTvFavoriteDao$insertOrUpdate$1) continuation;
                int i10 = shortTvFavoriteDao$insertOrUpdate$1.label;
                if ((i10 & Integer.MIN_VALUE) != 0) {
                    shortTvFavoriteDao$insertOrUpdate$1.label = i10 - Integer.MIN_VALUE;
                } else {
                    shortTvFavoriteDao$insertOrUpdate$1 = new ShortTvFavoriteDao$insertOrUpdate$1(continuation);
                }
            } else {
                shortTvFavoriteDao$insertOrUpdate$1 = new ShortTvFavoriteDao$insertOrUpdate$1(continuation);
            }
            Object objA = shortTvFavoriteDao$insertOrUpdate$1.result;
            Object objF = IntrinsicsKt.f();
            int i11 = shortTvFavoriteDao$insertOrUpdate$1.label;
            if (i11 == 0) {
                ResultKt.b(objA);
                String subjectId = shortTvFavoriteStateBean.getSubjectId();
                shortTvFavoriteDao$insertOrUpdate$1.L$0 = shortTvFavoriteDao;
                shortTvFavoriteDao$insertOrUpdate$1.L$1 = shortTvFavoriteStateBean;
                shortTvFavoriteDao$insertOrUpdate$1.label = 1;
                objA = shortTvFavoriteDao.a(subjectId, shortTvFavoriteDao$insertOrUpdate$1);
                if (objA == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    if (i11 == 2) {
                        ResultKt.b(objA);
                        return Unit.f64096a;
                    }
                    if (i11 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(objA);
                    return Unit.f64096a;
                }
                shortTvFavoriteStateBean = (ShortTvFavoriteStateBean) shortTvFavoriteDao$insertOrUpdate$1.L$1;
                shortTvFavoriteDao = (ShortTvFavoriteDao) shortTvFavoriteDao$insertOrUpdate$1.L$0;
                ResultKt.b(objA);
            }
            if (objA == null) {
                shortTvFavoriteDao$insertOrUpdate$1.L$0 = null;
                shortTvFavoriteDao$insertOrUpdate$1.L$1 = null;
                shortTvFavoriteDao$insertOrUpdate$1.label = 2;
                if (shortTvFavoriteDao.c(shortTvFavoriteStateBean, shortTvFavoriteDao$insertOrUpdate$1) == objF) {
                    return objF;
                }
                return Unit.f64096a;
            }
            shortTvFavoriteDao$insertOrUpdate$1.L$0 = null;
            shortTvFavoriteDao$insertOrUpdate$1.L$1 = null;
            shortTvFavoriteDao$insertOrUpdate$1.label = 3;
            if (shortTvFavoriteDao.b(shortTvFavoriteStateBean, shortTvFavoriteDao$insertOrUpdate$1) == objF) {
                return objF;
            }
            return Unit.f64096a;
        }
    }

    Object a(String str, Continuation continuation);

    Object b(ShortTvFavoriteStateBean shortTvFavoriteStateBean, Continuation continuation);

    Object c(ShortTvFavoriteStateBean shortTvFavoriteStateBean, Continuation continuation);

    Object d(ShortTvFavoriteStateBean shortTvFavoriteStateBean, Continuation continuation);
}
