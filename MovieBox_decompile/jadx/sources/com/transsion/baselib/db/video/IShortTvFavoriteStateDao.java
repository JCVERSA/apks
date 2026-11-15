package com.transsion.baselib.db.video;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;

public interface IShortTvFavoriteStateDao {

    public static final class DefaultImpls {
        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        public static Object a(IShortTvFavoriteStateDao iShortTvFavoriteStateDao, ShortTvFavoriteState shortTvFavoriteState, Continuation continuation) {
            IShortTvFavoriteStateDao$insertOrUpdate$1 iShortTvFavoriteStateDao$insertOrUpdate$1;
            if (continuation instanceof IShortTvFavoriteStateDao$insertOrUpdate$1) {
                iShortTvFavoriteStateDao$insertOrUpdate$1 = (IShortTvFavoriteStateDao$insertOrUpdate$1) continuation;
                int i10 = iShortTvFavoriteStateDao$insertOrUpdate$1.label;
                if ((i10 & Integer.MIN_VALUE) != 0) {
                    iShortTvFavoriteStateDao$insertOrUpdate$1.label = i10 - Integer.MIN_VALUE;
                } else {
                    iShortTvFavoriteStateDao$insertOrUpdate$1 = new IShortTvFavoriteStateDao$insertOrUpdate$1(continuation);
                }
            } else {
                iShortTvFavoriteStateDao$insertOrUpdate$1 = new IShortTvFavoriteStateDao$insertOrUpdate$1(continuation);
            }
            Object objA = iShortTvFavoriteStateDao$insertOrUpdate$1.result;
            Object objF = IntrinsicsKt.f();
            int i11 = iShortTvFavoriteStateDao$insertOrUpdate$1.label;
            if (i11 == 0) {
                ResultKt.b(objA);
                String subjectId = shortTvFavoriteState.getSubjectId();
                iShortTvFavoriteStateDao$insertOrUpdate$1.L$0 = iShortTvFavoriteStateDao;
                iShortTvFavoriteStateDao$insertOrUpdate$1.L$1 = shortTvFavoriteState;
                iShortTvFavoriteStateDao$insertOrUpdate$1.label = 1;
                objA = iShortTvFavoriteStateDao.a(subjectId, iShortTvFavoriteStateDao$insertOrUpdate$1);
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
                shortTvFavoriteState = (ShortTvFavoriteState) iShortTvFavoriteStateDao$insertOrUpdate$1.L$1;
                iShortTvFavoriteStateDao = (IShortTvFavoriteStateDao) iShortTvFavoriteStateDao$insertOrUpdate$1.L$0;
                ResultKt.b(objA);
            }
            if (objA == null) {
                iShortTvFavoriteStateDao$insertOrUpdate$1.L$0 = null;
                iShortTvFavoriteStateDao$insertOrUpdate$1.L$1 = null;
                iShortTvFavoriteStateDao$insertOrUpdate$1.label = 2;
                if (iShortTvFavoriteStateDao.c(shortTvFavoriteState, iShortTvFavoriteStateDao$insertOrUpdate$1) == objF) {
                    return objF;
                }
                return Unit.f64096a;
            }
            iShortTvFavoriteStateDao$insertOrUpdate$1.L$0 = null;
            iShortTvFavoriteStateDao$insertOrUpdate$1.L$1 = null;
            iShortTvFavoriteStateDao$insertOrUpdate$1.label = 3;
            if (iShortTvFavoriteStateDao.b(shortTvFavoriteState, iShortTvFavoriteStateDao$insertOrUpdate$1) == objF) {
                return objF;
            }
            return Unit.f64096a;
        }
    }

    Object a(String str, Continuation continuation);

    Object b(ShortTvFavoriteState shortTvFavoriteState, Continuation continuation);

    Object c(ShortTvFavoriteState shortTvFavoriteState, Continuation continuation);

    Object d(ShortTvFavoriteState shortTvFavoriteState, Continuation continuation);
}
