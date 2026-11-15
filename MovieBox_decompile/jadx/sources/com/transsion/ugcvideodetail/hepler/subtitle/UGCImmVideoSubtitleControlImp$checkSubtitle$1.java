package com.transsion.ugcvideodetail.hepler.subtitle;

import android.app.Application;
import androidx.p009lifecycle.b0;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.video.UGCCollectionVideoGroupDao;
import com.transsion.baselib.db.video.UGCVideoDetailPlayBean;
import com.transsion.baselib.db.video.UGCVideoDetailPlayDao;
import com.transsion.ugcvideodetail.api.bean.UGCImmVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayStream;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.i;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;
import yg.l;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ugcvideodetail.hepler.subtitle.UGCImmVideoSubtitleControlImp$checkSubtitle$1", f = "UGCImmVideoSubtitleControlImp.kt", l = {170, 171, 172, 177, 182}, m = "invokeSuspend")
final class UGCImmVideoSubtitleControlImp$checkSubtitle$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    Object L$0;
    Object L$1;
    int label;
    final UGCImmVideoSubtitleControlImp this$0;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ugcvideodetail.hepler.subtitle.UGCImmVideoSubtitleControlImp$checkSubtitle$1$1", f = "UGCImmVideoSubtitleControlImp.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final UGCVideoDetailPlayBean $history;
        final List<ht.a> $list;
        int label;
        final UGCImmVideoSubtitleControlImp this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(List<ht.a> list, UGCImmVideoSubtitleControlImp uGCImmVideoSubtitleControlImp, UGCVideoDetailPlayBean uGCVideoDetailPlayBean, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$list = list;
            this.this$0 = uGCImmVideoSubtitleControlImp;
            this.$history = uGCVideoDetailPlayBean;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$list, this.this$0, this.$history, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            String url;
            UGCVideo ugcVideo;
            UGCVideo ugcVideo2;
            UGCVideo ugcVideo3;
            UGCVideoBelongToCollection belongToCollection;
            UGCVideo ugcVideo4;
            UGCVideo ugcVideo5;
            UGCVideoBelongToCollection belongToCollection2;
            UGCVideo ugcVideo6;
            UGCVideo ugcVideo7;
            UGCVideo ugcVideo8;
            UGCVideoBelongToCollection belongToCollection3;
            String size;
            UGCVideo ugcVideo9;
            UGCVideoBelongToCollection belongToCollection4;
            List arrayList;
            b0 b0VarD;
            b0 b0VarD2;
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            List<ht.a> list = this.$list;
            if (list != null && !list.isEmpty()) {
                a aVar = this.this$0.f54302e;
                if (aVar == null || (b0VarD2 = aVar.d()) == null || (arrayList = (List) b0VarD2.f()) == null) {
                    arrayList = new ArrayList();
                }
                arrayList.clear();
                arrayList.addAll(this.$list);
                wf.a.C0922a.g(wf.a.f74274a, "checkSubtitle setList, size:" + arrayList.size(), false, 2, null);
                a aVar2 = this.this$0.f54302e;
                if (aVar2 != null && (b0VarD = aVar2.d()) != null) {
                    b0VarD.q(arrayList);
                }
                UGCImmVideoSubtitleControlImp uGCImmVideoSubtitleControlImp = this.this$0;
                UGCVideoDetailPlayBean uGCVideoDetailPlayBean = this.$history;
                uGCImmVideoSubtitleControlImp.v(arrayList, uGCVideoDetailPlayBean != null ? uGCVideoDetailPlayBean.getSubtitleSelectId() : null);
            }
            if (l.f76264a.e()) {
                UGCVideoPlayStream uGCVideoPlayStream = this.this$0.f54304g;
                if (uGCVideoPlayStream == null || (url = uGCVideoPlayStream.getUrl()) == null) {
                    url = "";
                }
                String str = url;
                UGCVideoPlayStream uGCVideoPlayStream2 = this.this$0.f54304g;
                String id2 = uGCVideoPlayStream2 != null ? uGCVideoPlayStream2.getId() : null;
                UGCImmVideo uGCImmVideo = this.this$0.f54303f;
                String collectionName = (uGCImmVideo == null || (ugcVideo9 = uGCImmVideo.getUgcVideo()) == null || (belongToCollection4 = ugcVideo9.getBelongToCollection()) == null) ? null : belongToCollection4.getCollectionName();
                UGCVideoPlayStream uGCVideoPlayStream3 = this.this$0.f54304g;
                Long lX = (uGCVideoPlayStream3 == null || (size = uGCVideoPlayStream3.getSize()) == null) ? null : StringsKt.x(size);
                UGCImmVideo uGCImmVideo2 = this.this$0.f54303f;
                String collectionName2 = (uGCImmVideo2 == null || (ugcVideo8 = uGCImmVideo2.getUgcVideo()) == null || (belongToCollection3 = ugcVideo8.getBelongToCollection()) == null) ? null : belongToCollection3.getCollectionName();
                String str2 = this.this$0.f54299b;
                UGCVideoPlayStream uGCVideoPlayStream4 = this.this$0.f54304g;
                String idType = uGCVideoPlayStream4 != null ? uGCVideoPlayStream4.getIdType() : null;
                UGCImmVideo uGCImmVideo3 = this.this$0.f54303f;
                String ugcVideoId = (uGCImmVideo3 == null || (ugcVideo7 = uGCImmVideo3.getUgcVideo()) == null) ? null : ugcVideo7.getUgcVideoId();
                UGCImmVideo uGCImmVideo4 = this.this$0.f54303f;
                Integer numD = (uGCImmVideo4 == null || (ugcVideo6 = uGCImmVideo4.getUgcVideo()) == null) ? null : Boxing.d(ugcVideo6.videoUGCPosition());
                UGCImmVideo uGCImmVideo5 = this.this$0.f54303f;
                String collectionId = (uGCImmVideo5 == null || (ugcVideo5 = uGCImmVideo5.getUgcVideo()) == null || (belongToCollection2 = ugcVideo5.getBelongToCollection()) == null) ? null : belongToCollection2.getCollectionId();
                UGCImmVideo uGCImmVideo6 = this.this$0.f54303f;
                String title = (uGCImmVideo6 == null || (ugcVideo4 = uGCImmVideo6.getUgcVideo()) == null) ? null : ugcVideo4.getTitle();
                UGCImmVideo uGCImmVideo7 = this.this$0.f54303f;
                String collectionName3 = (uGCImmVideo7 == null || (ugcVideo3 = uGCImmVideo7.getUgcVideo()) == null || (belongToCollection = ugcVideo3.getBelongToCollection()) == null) ? null : belongToCollection.getCollectionName();
                UGCImmVideo uGCImmVideo8 = this.this$0.f54303f;
                String category = (uGCImmVideo8 == null || (ugcVideo2 = uGCImmVideo8.getUgcVideo()) == null) ? null : ugcVideo2.getCategory();
                UGCImmVideo uGCImmVideo9 = this.this$0.f54303f;
                com.transsion.ugcvideodetail.hepler.subtitle.manager.b.C0656b.a(com.transsion.ugcvideodetail.hepler.subtitle.manager.b.f54329a.b(), new DownloadBean(str, id2, collectionName, "", lX, null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "", str2, null, collectionName2, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, (uGCImmVideo9 == null || (ugcVideo = uGCImmVideo9.getUgcVideo()) == null) ? null : ugcVideo.getOps(), null, null, null, null, null, null, null, null, idType, collectionId, ugcVideoId, title, collectionName3, numD, category, null, null, null, null, null, null, null, null, false, null, null, -1477181472, 1071644671, 65504, null), null, 2, null);
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCImmVideoSubtitleControlImp$checkSubtitle$1(UGCImmVideoSubtitleControlImp uGCImmVideoSubtitleControlImp, Continuation<? super UGCImmVideoSubtitleControlImp$checkSubtitle$1> continuation) {
        super(2, continuation);
        this.this$0 = uGCImmVideoSubtitleControlImp;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCImmVideoSubtitleControlImp$checkSubtitle$1(this.this$0, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x009e  */
    /* JADX WARN: Code duplicated, block: B:35:0x00ac A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:37:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:42:0x00cc A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:45:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:53:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:54:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:57:0x0130 A[RETURN] */
    @Override
    public final Object invokeSuspend(Object obj) {
        UGCVideoDetailPlayBean uGCVideoDetailPlayBean;
        UGCVideo ugcVideo;
        String ugcVideoId;
        AppDatabase appDatabase;
        String str;
        UGCVideoDetailPlayBean uGCVideoDetailPlayBean2;
        String str2;
        List list;
        List list2;
        Integer numD;
        a2 a2VarC;
        AnonymousClass1 anonymousClass1;
        Function1 function1;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            AppDatabase.Companion companion = AppDatabase.INSTANCE;
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            AppDatabase appDatabaseB = companion.b(applicationA);
            UGCImmVideo uGCImmVideo = this.this$0.f54303f;
            if (uGCImmVideo == null || (ugcVideo = uGCImmVideo.getUgcVideo()) == null || (ugcVideoId = ugcVideo.getUgcVideoId()) == null) {
                uGCVideoDetailPlayBean = null;
            } else {
                UGCVideoDetailPlayDao uGCVideoDetailPlayDaoB1 = appDatabaseB.B1();
                this.L$0 = appDatabaseB;
                this.L$1 = ugcVideoId;
                this.label = 1;
                Object objR = uGCVideoDetailPlayDaoB1.r(ugcVideoId, this);
                if (objR == objF) {
                    return objF;
                }
                appDatabase = appDatabaseB;
                obj = objR;
                str = ugcVideoId;
            }
            com.transsion.ugcvideodetail.hepler.subtitle.manager.b bVarB = com.transsion.ugcvideodetail.hepler.subtitle.manager.b.f54329a.b();
            String strU = this.this$0.u();
            this.L$0 = uGCVideoDetailPlayBean;
            this.L$1 = null;
            this.label = 4;
            obj = bVarB.a(strU, this);
            if (obj == objF) {
                return objF;
            }
            list = (List) obj;
            list2 = list;
            if (list2 != null) {
                function1.invoke(Boxing.a(true));
            }
            wf.a.C0922a c0922a = wf.a.f74274a;
            String strU2 = this.this$0.u();
            if (list != null) {
                numD = Boxing.d(list.size());
            } else {
                numD = null;
            }
            wf.a.C0922a.g(c0922a, "checkSubtitle subtitleResId:" + strU2 + ",, size:" + numD, false, 2, null);
            a2VarC = y0.c();
            anonymousClass1 = new AnonymousClass1(list, this.this$0, uGCVideoDetailPlayBean, null);
            this.L$0 = null;
            this.label = 5;
            if (i.g(a2VarC, anonymousClass1, this) == objF) {
                return objF;
            }
            return Unit.f64096a;
        }
        if (i10 == 1) {
            String str3 = (String) this.L$1;
            AppDatabase appDatabase2 = (AppDatabase) this.L$0;
            ResultKt.b(obj);
            str = str3;
            appDatabase = appDatabase2;
        } else if (i10 == 2) {
            appDatabase = (AppDatabase) this.L$0;
            ResultKt.b(obj);
            str2 = (String) obj;
            if (str2 != null) {
                UGCVideoDetailPlayDao uGCVideoDetailPlayDaoB2 = appDatabase.B1();
                this.L$0 = null;
                this.label = 3;
                obj = uGCVideoDetailPlayDaoB2.c(str2, this);
                if (obj == objF) {
                    return objF;
                }
                uGCVideoDetailPlayBean2 = (UGCVideoDetailPlayBean) obj;
            } else {
                uGCVideoDetailPlayBean2 = null;
            }
            uGCVideoDetailPlayBean = uGCVideoDetailPlayBean2;
            com.transsion.ugcvideodetail.hepler.subtitle.manager.b bVarB2 = com.transsion.ugcvideodetail.hepler.subtitle.manager.b.f54329a.b();
            String strU3 = this.this$0.u();
            this.L$0 = uGCVideoDetailPlayBean;
            this.L$1 = null;
            this.label = 4;
            obj = bVarB2.a(strU3, this);
            if (obj == objF) {
                return objF;
            }
            list = (List) obj;
            list2 = list;
            if (list2 != null) {
                function1.invoke(Boxing.a(true));
            }
            wf.a.C0922a c0922a2 = wf.a.f74274a;
            String strU4 = this.this$0.u();
            if (list != null) {
                numD = Boxing.d(list.size());
            } else {
                numD = null;
            }
            wf.a.C0922a.g(c0922a2, "checkSubtitle subtitleResId:" + strU4 + ",, size:" + numD, false, 2, null);
            a2VarC = y0.c();
            anonymousClass1 = new AnonymousClass1(list, this.this$0, uGCVideoDetailPlayBean, null);
            this.L$0 = null;
            this.label = 5;
            if (i.g(a2VarC, anonymousClass1, this) == objF) {
                return objF;
            }
        } else if (i10 == 3) {
            ResultKt.b(obj);
            uGCVideoDetailPlayBean2 = (UGCVideoDetailPlayBean) obj;
            uGCVideoDetailPlayBean = uGCVideoDetailPlayBean2;
            com.transsion.ugcvideodetail.hepler.subtitle.manager.b bVarB3 = com.transsion.ugcvideodetail.hepler.subtitle.manager.b.f54329a.b();
            String strU5 = this.this$0.u();
            this.L$0 = uGCVideoDetailPlayBean;
            this.L$1 = null;
            this.label = 4;
            obj = bVarB3.a(strU5, this);
            if (obj == objF) {
                return objF;
            }
            list = (List) obj;
            list2 = list;
            if (list2 != null) {
                function1.invoke(Boxing.a(true));
            }
            wf.a.C0922a c0922a3 = wf.a.f74274a;
            String strU6 = this.this$0.u();
            if (list != null) {
                numD = Boxing.d(list.size());
            } else {
                numD = null;
            }
            wf.a.C0922a.g(c0922a3, "checkSubtitle subtitleResId:" + strU6 + ",, size:" + numD, false, 2, null);
            a2VarC = y0.c();
            anonymousClass1 = new AnonymousClass1(list, this.this$0, uGCVideoDetailPlayBean, null);
            this.L$0 = null;
            this.label = 5;
            if (i.g(a2VarC, anonymousClass1, this) == objF) {
                return objF;
            }
        } else if (i10 == 4) {
            uGCVideoDetailPlayBean = (UGCVideoDetailPlayBean) this.L$0;
            ResultKt.b(obj);
            list = (List) obj;
            list2 = list;
            if (list2 != null && !list2.isEmpty() && (function1 = this.this$0.f54306i) != null) {
                function1.invoke(Boxing.a(true));
            }
            wf.a.C0922a c0922a4 = wf.a.f74274a;
            String strU7 = this.this$0.u();
            if (list != null) {
                numD = Boxing.d(list.size());
            } else {
                numD = null;
            }
            wf.a.C0922a.g(c0922a4, "checkSubtitle subtitleResId:" + strU7 + ",, size:" + numD, false, 2, null);
            a2VarC = y0.c();
            anonymousClass1 = new AnonymousClass1(list, this.this$0, uGCVideoDetailPlayBean, null);
            this.L$0 = null;
            this.label = 5;
            if (i.g(a2VarC, anonymousClass1, this) == objF) {
                return objF;
            }
        } else {
            if (i10 != 5) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Unit.f64096a;
        uGCVideoDetailPlayBean2 = (UGCVideoDetailPlayBean) obj;
        if (uGCVideoDetailPlayBean2 == null) {
            UGCCollectionVideoGroupDao uGCCollectionVideoGroupDaoA1 = appDatabase.A1();
            this.L$0 = appDatabase;
            this.L$1 = null;
            this.label = 2;
            obj = uGCCollectionVideoGroupDaoA1.c(str, this);
            if (obj == objF) {
                return objF;
            }
            str2 = (String) obj;
            if (str2 != null) {
                UGCVideoDetailPlayDao uGCVideoDetailPlayDaoB3 = appDatabase.B1();
                this.L$0 = null;
                this.label = 3;
                obj = uGCVideoDetailPlayDaoB3.c(str2, this);
                if (obj == objF) {
                    return objF;
                }
                uGCVideoDetailPlayBean2 = (UGCVideoDetailPlayBean) obj;
            } else {
                uGCVideoDetailPlayBean2 = null;
            }
        }
        uGCVideoDetailPlayBean = uGCVideoDetailPlayBean2;
        com.transsion.ugcvideodetail.hepler.subtitle.manager.b bVarB4 = com.transsion.ugcvideodetail.hepler.subtitle.manager.b.f54329a.b();
        String strU8 = this.this$0.u();
        this.L$0 = uGCVideoDetailPlayBean;
        this.L$1 = null;
        this.label = 4;
        obj = bVarB4.a(strU8, this);
        if (obj == objF) {
            return objF;
        }
        list = (List) obj;
        list2 = list;
        if (list2 != null) {
            function1.invoke(Boxing.a(true));
        }
        wf.a.C0922a c0922a5 = wf.a.f74274a;
        String strU9 = this.this$0.u();
        if (list != null) {
            numD = Boxing.d(list.size());
        } else {
            numD = null;
        }
        wf.a.C0922a.g(c0922a5, "checkSubtitle subtitleResId:" + strU9 + ",, size:" + numD, false, 2, null);
        a2VarC = y0.c();
        anonymousClass1 = new AnonymousClass1(list, this.this$0, uGCVideoDetailPlayBean, null);
        this.L$0 = null;
        this.label = 5;
        if (i.g(a2VarC, anonymousClass1, this) == objF) {
            return objF;
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UGCImmVideoSubtitleControlImp$checkSubtitle$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
