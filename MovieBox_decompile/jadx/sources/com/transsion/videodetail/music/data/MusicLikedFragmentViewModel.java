package com.transsion.videodetail.music.data;

import android.app.Application;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.blankj.utilcode.util.Utils;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.music.MusicLikedDbBean;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.videodetail.music.bean.LikeListActionEnum;
import com.transsion.videodetail.music.bean.MusicLikedRemoteBean;
import com.transsion.videodetail.music.bean.MusicLikedRemoteItemBean;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;

public final class MusicLikedFragmentViewModel extends t0 {

    private String f55557a = "0";

    private final List f55558b = new ArrayList();

    private final Lazy f55559c = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return MusicLikedFragmentViewModel.K();
        }
    });

    private final Lazy f55560d = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return MusicLikedFragmentViewModel.s();
        }
    });

    private final Lazy f55561e = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return MusicLikedFragmentViewModel.J();
        }
    });

    private final b0 f55562f = new b0();

    private final b0 f55563g = new b0();

    public final xi.a A() {
        return (xi.a) this.f55559c.getValue();
    }

    public final Object D(MusicLikedRemoteItemBean musicLikedRemoteItemBean, Continuation continuation) {
        Object objF;
        return (musicLikedRemoteItemBean == null || (objF = A().f(q(musicLikedRemoteItemBean), continuation)) != IntrinsicsKt.f()) ? Unit.f64096a : objF;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0070  */
    /* JADX WARN: Code duplicated, block: B:24:0x008f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:25:0x0090  */
    /* JADX WARN: Code duplicated, block: B:28:0x0097  */
    /* JADX WARN: Code duplicated, block: B:29:0x009c  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0090 -> B:26:0x0093). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object H(kotlin.coroutines.Continuation r13) {
        /*
            r12 = this;
            boolean r0 = r13 instanceof com.transsion.videodetail.music.data.MusicLikedFragmentViewModel$loadLocalData$1
            if (r0 == 0) goto L13
            r0 = r13
            com.transsion.videodetail.music.data.MusicLikedFragmentViewModel$loadLocalData$1 r0 = (com.transsion.videodetail.music.data.MusicLikedFragmentViewModel$loadLocalData$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.transsion.videodetail.music.data.MusicLikedFragmentViewModel$loadLocalData$1 r0 = new com.transsion.videodetail.music.data.MusicLikedFragmentViewModel$loadLocalData$1
            r0.<init>(r12, r13)
        L18:
            java.lang.Object r13 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.f()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L4b
            if (r2 == r4) goto L47
            if (r2 != r3) goto L3f
            java.lang.Object r2 = r0.L$3
            com.transsion.baselib.db.music.MusicLikedDbBean r2 = (com.transsion.baselib.db.music.MusicLikedDbBean) r2
            java.lang.Object r4 = r0.L$2
            com.transsion.baselib.db.music.MusicLikedDbBean r4 = (com.transsion.baselib.db.music.MusicLikedDbBean) r4
            java.lang.Object r5 = r0.L$1
            java.util.Iterator r5 = (java.util.Iterator) r5
            java.lang.Object r6 = r0.L$0
            java.util.List r6 = (java.util.List) r6
            kotlin.ResultKt.b(r13)
            r10 = r5
            r11 = r6
            r5 = r4
            goto L93
        L3f:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r0)
            throw r13
        L47:
            kotlin.ResultKt.b(r13)
            goto L5b
        L4b:
            kotlin.ResultKt.b(r13)
            xi.a r13 = r12.A()
            r0.label = r4
            java.lang.Object r13 = r13.c(r0)
            if (r13 != r1) goto L5b
            return r1
        L5b:
            java.util.List r13 = (java.util.List) r13
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            java.lang.Iterable r13 = (java.lang.Iterable) r13
            java.util.Iterator r13 = r13.iterator()
            r5 = r13
            r6 = r2
        L6a:
            boolean r13 = r5.hasNext()
            if (r13 == 0) goto Lb0
            java.lang.Object r13 = r5.next()
            r2 = r13
            com.transsion.baselib.db.music.MusicLikedDbBean r2 = (com.transsion.baselib.db.music.MusicLikedDbBean) r2
            ui.c r13 = r12.u()
            java.lang.String r4 = r2.getSubjectId()
            r0.L$0 = r6
            r0.L$1 = r5
            r0.L$2 = r2
            r0.L$3 = r2
            r0.label = r3
            java.lang.Object r13 = r13.D(r4, r0)
            if (r13 != r1) goto L90
            return r1
        L90:
            r10 = r5
            r11 = r6
            r5 = r2
        L93:
            com.transsion.baselib.db.download.DownloadBean r13 = (com.transsion.baselib.db.download.DownloadBean) r13
            if (r13 == 0) goto L9c
            java.lang.String r13 = r13.getPath()
            goto L9d
        L9c:
            r13 = 0
        L9d:
            r2.setPath(r13)
            com.transsion.videodetail.music.bean.MusicLikedMultiItemEntity r13 = new com.transsion.videodetail.music.bean.MusicLikedMultiItemEntity
            r8 = 6
            r9 = 0
            r6 = 0
            r7 = 0
            r4 = r13
            r4.<init>(r5, r6, r7, r8, r9)
            r11.add(r13)
            r5 = r10
            r6 = r11
            goto L6a
        Lb0:
            androidx.lifecycle.b0 r13 = r12.f55563g
            r13.n(r6)
            kotlin.Unit r13 = kotlin.Unit.f64096a
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.transsion.videodetail.music.data.MusicLikedFragmentViewModel.H(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:60:0x0147 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:68:0x017f  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Instruction removed from duplicated block: B:68:0x017f, please report this as an issue */
    public final Object I(Continuation continuation) {
        MusicLikedFragmentViewModel$loadNetData$1 musicLikedFragmentViewModel$loadNetData$1;
        Object objM453constructorimpl;
        Throwable thM456exceptionOrNullimpl;
        List arrayList;
        Pager pager;
        Pager pager2;
        List<MusicLikedRemoteItemBean> items;
        if (continuation instanceof MusicLikedFragmentViewModel$loadNetData$1) {
            musicLikedFragmentViewModel$loadNetData$1 = (MusicLikedFragmentViewModel$loadNetData$1) continuation;
            int i10 = musicLikedFragmentViewModel$loadNetData$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                musicLikedFragmentViewModel$loadNetData$1.label = i10 - Integer.MIN_VALUE;
            } else {
                musicLikedFragmentViewModel$loadNetData$1 = new MusicLikedFragmentViewModel$loadNetData$1(this, continuation);
            }
        } else {
            musicLikedFragmentViewModel$loadNetData$1 = new MusicLikedFragmentViewModel$loadNetData$1(this, continuation);
        }
        Object objA = musicLikedFragmentViewModel$loadNetData$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = musicLikedFragmentViewModel$loadNetData$1.label;
        try {
            if (i11 != 0) {
                if (i11 != 1) {
                    if (i11 != 2) {
                        if (i11 == 3) {
                            arrayList = (List) musicLikedFragmentViewModel$loadNetData$1.L$0;
                            ResultKt.b(objA);
                            yv.a.f76396a.a(t() + " --> loadNetData() --> 数据库写入成功 --> size = " + arrayList.size());
                            musicLikedFragmentViewModel$loadNetData$1.L$0 = null;
                            musicLikedFragmentViewModel$loadNetData$1.label = 4;
                            if (H(musicLikedFragmentViewModel$loadNetData$1) == objF) {
                                return objF;
                            }
                        } else if (i11 != 4) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    }
                    ResultKt.b(objA);
                } else {
                    ResultKt.b(objA);
                }
                objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
                thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
                if (thM456exceptionOrNullimpl != null) {
                    yv.a.f76396a.b(t() + " --> loadNetData() --> 网络请求异常 --> " + thM456exceptionOrNullimpl.getMessage());
                    this.f55563g.n(null);
                }
                return Unit.f64096a;
            }
            ResultKt.b(objA);
            Result.Companion companion = Result.INSTANCE;
            yv.a.f76396a.a(t() + " --> loadNetData() --> 获取服务端的数据 --> page = " + this.f55557a);
            a aVarZ = z();
            String str = this.f55557a;
            musicLikedFragmentViewModel$loadNetData$1.label = 1;
            objA = a.C0661a.a(aVarZ, str, 0, null, musicLikedFragmentViewModel$loadNetData$1, 6, null);
            if (objA == objF) {
                return objF;
            }
            BaseDto baseDto = (BaseDto) objA;
            MusicLikedRemoteBean musicLikedRemoteBean = (MusicLikedRemoteBean) baseDto.getData();
            if (musicLikedRemoteBean != null && (items = musicLikedRemoteBean.getItems()) != null) {
                Boxing.a(this.f55558b.addAll(items));
            }
            MusicLikedRemoteBean musicLikedRemoteBean2 = (MusicLikedRemoteBean) baseDto.getData();
            if ((musicLikedRemoteBean2 == null || (pager2 = musicLikedRemoteBean2.getPager()) == null) ? false : Intrinsics.c(pager2.getHasMore(), Boxing.a(true))) {
                MusicLikedRemoteBean musicLikedRemoteBean3 = (MusicLikedRemoteBean) baseDto.getData();
                this.f55557a = String.valueOf((musicLikedRemoteBean3 == null || (pager = musicLikedRemoteBean3.getPager()) == null) ? null : pager.getNextPage());
                musicLikedFragmentViewModel$loadNetData$1.label = 2;
                if (I(musicLikedFragmentViewModel$loadNetData$1) == objF) {
                    return objF;
                }
            } else {
                List list = this.f55558b;
                arrayList = new ArrayList(CollectionsKt.v(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(q((MusicLikedRemoteItemBean) it.next()));
                }
                if (arrayList.isEmpty()) {
                    yv.a.f76396a.c(t() + " --> loadNetData() --> 本地和服务端都没数据");
                    this.f55563g.n(null);
                } else {
                    xi.a aVarA = A();
                    musicLikedFragmentViewModel$loadNetData$1.L$0 = arrayList;
                    musicLikedFragmentViewModel$loadNetData$1.label = 3;
                    if (aVarA.b(arrayList, musicLikedFragmentViewModel$loadNetData$1) == objF) {
                        return objF;
                    }
                    yv.a.f76396a.a(t() + " --> loadNetData() --> 数据库写入成功 --> size = " + arrayList.size());
                    musicLikedFragmentViewModel$loadNetData$1.L$0 = null;
                    musicLikedFragmentViewModel$loadNetData$1.label = 4;
                    if (H(musicLikedFragmentViewModel$loadNetData$1) == objF) {
                        return objF;
                    }
                }
            }
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            yv.a.f76396a.b(t() + " --> loadNetData() --> 网络请求异常 --> " + thM456exceptionOrNullimpl.getMessage());
            this.f55563g.n(null);
        }
        return Unit.f64096a;
    }

    public static final a J() {
        return (a) kg.c.f63982e.a().h(a.class);
    }

    public static final xi.a K() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).t1();
    }

    private final MusicLikedDbBean q(MusicLikedRemoteItemBean musicLikedRemoteItemBean) {
        String subjectId = musicLikedRemoteItemBean.getSubjectId();
        if (subjectId == null) {
            subjectId = "";
        }
        String str = subjectId;
        String title = musicLikedRemoteItemBean.getTitle();
        Cover cover = musicLikedRemoteItemBean.getCover();
        String url = cover != null ? cover.getUrl() : null;
        String countryName = musicLikedRemoteItemBean.getCountryName();
        String genre = musicLikedRemoteItemBean.getGenre();
        String releaseDate = musicLikedRemoteItemBean.getReleaseDate();
        Integer durationSeconds = musicLikedRemoteItemBean.getDurationSeconds();
        int iIntValue = durationSeconds != null ? durationSeconds.intValue() : 0;
        String singerName = musicLikedRemoteItemBean.getSingerName();
        String singerAvatar = musicLikedRemoteItemBean.getSingerAvatar();
        Long likeTime = musicLikedRemoteItemBean.getLikeTime();
        return new MusicLikedDbBean(str, title, url, countryName, genre, releaseDate, iIntValue, singerName, singerAvatar, "", likeTime != null ? likeTime.longValue() : System.currentTimeMillis());
    }

    public final Object r(MusicLikedRemoteItemBean musicLikedRemoteItemBean, Continuation continuation) {
        if (musicLikedRemoteItemBean != null) {
            xi.a aVarA = A();
            String subjectId = musicLikedRemoteItemBean.getSubjectId();
            if (subjectId == null) {
                subjectId = "";
            }
            Object objD = aVarA.d(subjectId, continuation);
            if (objD == IntrinsicsKt.f()) {
                return objD;
            }
        }
        return Unit.f64096a;
    }

    public static final ui.c s() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).o1();
    }

    public final String t() {
        String simpleName = MusicLikedFragmentViewModel.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final ui.c u() {
        return (ui.c) this.f55560d.getValue();
    }

    public final void x() {
        k.d(u0.a(this), null, null, new MusicLikedFragmentViewModel$getLocalMusicLiked$1(this, null), 3, null);
    }

    public final a z() {
        return (a) this.f55561e.getValue();
    }

    public final void B(String str, Function1 callback) {
        Intrinsics.h(callback, "callback");
        k.d(u0.a(this), null, null, new MusicLikedFragmentViewModel$getMusicLikedEntity$1(this, str, callback, null), 3, null);
    }

    public final LiveData C() {
        return this.f55563g;
    }

    public final void E(String str, Function1 callback) {
        Intrinsics.h(callback, "callback");
        k.d(u0.a(this), null, null, new MusicLikedFragmentViewModel$isDownload$1(this, str, callback, null), 3, null);
    }

    public final void F(String str, Function1 callback) {
        Intrinsics.h(callback, "callback");
        k.d(u0.a(this), null, null, new MusicLikedFragmentViewModel$isLiked$1(this, str, callback, null), 3, null);
    }

    public final void G(String str, LikeListActionEnum action) {
        Intrinsics.h(action, "action");
        k.d(u0.a(this), null, null, new MusicLikedFragmentViewModel$likedMusic$1(str, action, this, null), 3, null);
    }

    public final void p(Subject subject) {
        Intrinsics.h(subject, "subject");
        k.d(u0.a(this), null, null, new MusicLikedFragmentViewModel$clickLikedMusic$1(subject, this, null), 3, null);
    }

    public final void v(String str, Function1 callback) {
        Intrinsics.h(callback, "callback");
        k.d(u0.a(this), null, null, new MusicLikedFragmentViewModel$getDownloadEntity$1(this, str, callback, null), 3, null);
    }

    public final LiveData w() {
        return this.f55562f;
    }

    public final void y(String from) {
        Intrinsics.h(from, "from");
        k.d(u0.a(this), null, null, new MusicLikedFragmentViewModel$getMusicLiked$1(this, from, null), 3, null);
    }
}
