package com.transsion.push.helper;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.push.bean.PagerConfig;
import com.transsion.push.bean.PermanentConfig;
import com.transsion.push.bean.PermanentItemBean;
import com.transsion.push.bean.PermanentPushResp;
import com.transsion.push.db.PermanentRoom;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.push.helper.PushPermanentManager$fetchPushData$1", f = "PushPermanentManager.kt", l = {95, Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE, 120}, m = "invokeSuspend")
@SourceDebugExtension
final class PushPermanentManager$fetchPushData$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int I$0;
    private Object L$0;
    int label;

    PushPermanentManager$fetchPushData$1(Continuation<? super PushPermanentManager$fetchPushData$1> continuation) {
        super(2, continuation);
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        PushPermanentManager$fetchPushData$1 pushPermanentManager$fetchPushData$1 = new PushPermanentManager$fetchPushData$1(continuation);
        pushPermanentManager$fetchPushData$1.L$0 = obj;
        return pushPermanentManager$fetchPushData$1;
    }

    /* JADX WARN: Code duplicated, block: B:61:0x0145 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:62:0x0146  */
    /* JADX WARN: Code duplicated, block: B:66:0x0150 A[Catch: all -> 0x0020, TryCatch #0 {all -> 0x0020, blocks: (B:8:0x001b, B:64:0x014a, B:66:0x0150, B:68:0x0158, B:69:0x015c, B:70:0x0166, B:72:0x016e, B:73:0x0174, B:75:0x018b, B:77:0x0193, B:79:0x0199, B:81:0x01bf, B:83:0x01ca, B:82:0x01c5, B:15:0x0031, B:59:0x0137, B:16:0x0036, B:30:0x0099, B:32:0x00a7, B:34:0x00b8, B:36:0x00be, B:38:0x00c4, B:40:0x00ca, B:41:0x00cd, B:43:0x00d5, B:46:0x00dd, B:47:0x00f8, B:49:0x00fe, B:51:0x0106, B:52:0x010e, B:54:0x0126, B:27:0x007f), top: B:91:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:68:0x0158 A[Catch: all -> 0x0020, TryCatch #0 {all -> 0x0020, blocks: (B:8:0x001b, B:64:0x014a, B:66:0x0150, B:68:0x0158, B:69:0x015c, B:70:0x0166, B:72:0x016e, B:73:0x0174, B:75:0x018b, B:77:0x0193, B:79:0x0199, B:81:0x01bf, B:83:0x01ca, B:82:0x01c5, B:15:0x0031, B:59:0x0137, B:16:0x0036, B:30:0x0099, B:32:0x00a7, B:34:0x00b8, B:36:0x00be, B:38:0x00c4, B:40:0x00ca, B:41:0x00cd, B:43:0x00d5, B:46:0x00dd, B:47:0x00f8, B:49:0x00fe, B:51:0x0106, B:52:0x010e, B:54:0x0126, B:27:0x007f), top: B:91:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:72:0x016e A[Catch: all -> 0x0020, TryCatch #0 {all -> 0x0020, blocks: (B:8:0x001b, B:64:0x014a, B:66:0x0150, B:68:0x0158, B:69:0x015c, B:70:0x0166, B:72:0x016e, B:73:0x0174, B:75:0x018b, B:77:0x0193, B:79:0x0199, B:81:0x01bf, B:83:0x01ca, B:82:0x01c5, B:15:0x0031, B:59:0x0137, B:16:0x0036, B:30:0x0099, B:32:0x00a7, B:34:0x00b8, B:36:0x00be, B:38:0x00c4, B:40:0x00ca, B:41:0x00cd, B:43:0x00d5, B:46:0x00dd, B:47:0x00f8, B:49:0x00fe, B:51:0x0106, B:52:0x010e, B:54:0x0126, B:27:0x007f), top: B:91:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:78:0x0198  */
    /* JADX WARN: Code duplicated, block: B:81:0x01bf A[Catch: all -> 0x0020, TryCatch #0 {all -> 0x0020, blocks: (B:8:0x001b, B:64:0x014a, B:66:0x0150, B:68:0x0158, B:69:0x015c, B:70:0x0166, B:72:0x016e, B:73:0x0174, B:75:0x018b, B:77:0x0193, B:79:0x0199, B:81:0x01bf, B:83:0x01ca, B:82:0x01c5, B:15:0x0031, B:59:0x0137, B:16:0x0036, B:30:0x0099, B:32:0x00a7, B:34:0x00b8, B:36:0x00be, B:38:0x00c4, B:40:0x00ca, B:41:0x00cd, B:43:0x00d5, B:46:0x00dd, B:47:0x00f8, B:49:0x00fe, B:51:0x0106, B:52:0x010e, B:54:0x0126, B:27:0x007f), top: B:91:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:82:0x01c5 A[Catch: all -> 0x0020, TryCatch #0 {all -> 0x0020, blocks: (B:8:0x001b, B:64:0x014a, B:66:0x0150, B:68:0x0158, B:69:0x015c, B:70:0x0166, B:72:0x016e, B:73:0x0174, B:75:0x018b, B:77:0x0193, B:79:0x0199, B:81:0x01bf, B:83:0x01ca, B:82:0x01c5, B:15:0x0031, B:59:0x0137, B:16:0x0036, B:30:0x0099, B:32:0x00a7, B:34:0x00b8, B:36:0x00be, B:38:0x00c4, B:40:0x00ca, B:41:0x00cd, B:43:0x00d5, B:46:0x00dd, B:47:0x00f8, B:49:0x00fe, B:51:0x0106, B:52:0x010e, B:54:0x0126, B:27:0x007f), top: B:91:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:88:0x01e1  */
    /* JADX WARN: Instruction removed from duplicated block: B:88:0x01e1, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r1v10, types: [int] */
    /* JADX WARN: Type inference failed for: r1v12, types: [int] */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v9 */
    @Override
    public final Object invokeSuspend(Object obj) {
        Object objM453constructorimpl;
        Throwable thM456exceptionOrNullimpl;
        PermanentPushResp permanentPushResp;
        PermanentPushResp permanentPushResp2;
        ?? r10;
        PermanentRoom permanentRoom;
        ?? r11;
        PermanentPushResp permanentPushResp3;
        ?? r12;
        ?? r13;
        PagerConfig pager;
        String title;
        List<PermanentItemBean> items;
        String subjectId;
        PermanentItemBean permanentItemBean;
        String nextPage;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 != 0) {
                if (i10 == 1) {
                    ResultKt.b(obj);
                } else if (i10 == 2) {
                    int i11 = this.I$0;
                    permanentPushResp2 = (PermanentPushResp) this.L$0;
                    ResultKt.b(obj);
                    r12 = i11;
                    permanentPushResp = permanentPushResp2;
                    r10 = r12;
                    permanentRoom = PermanentRoom.f48721a;
                    this.L$0 = permanentPushResp;
                    this.I$0 = r10;
                    this.label = 3;
                    if (permanentRoom.l(permanentPushResp, this) == objF) {
                        return objF;
                    }
                    r11 = r10;
                    permanentPushResp3 = permanentPushResp;
                } else {
                    if (i10 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    int i12 = this.I$0;
                    permanentPushResp3 = (PermanentPushResp) this.L$0;
                    ResultKt.b(obj);
                    r11 = i12;
                }
                permanentPushResp = permanentPushResp3;
                r13 = r11;
                pager = permanentPushResp.getPager();
                if (pager != null) {
                    PushPermanentManager pushPermanentManager = PushPermanentManager.f48745a;
                    nextPage = pager.getNextPage();
                    if (nextPage == null) {
                        nextPage = PushPermanentManager.f48749e;
                    }
                    PushPermanentManager.f48749e = nextPage;
                    PushPermanentManager.f48750f = pager.getHasMore();
                }
                PushPermanentManager pushPermanentManager2 = PushPermanentManager.f48745a;
                title = permanentPushResp.getTitle();
                if (title == null) {
                    title = PushPermanentManager.f48745a.s();
                }
                PushPermanentManager.f48752h = title;
                wf.a.C0922a c0922a = wf.a.f74274a;
                int size = PushPermanentManager.f48747c.size();
                PermanentConfig cfg = permanentPushResp.getCfg();
                items = permanentPushResp.getItems();
                if (items != null || (permanentItemBean = (PermanentItemBean) CollectionsKt.k0(items)) == null) {
                    subjectId = null;
                } else {
                    subjectId = permanentItemBean.getSubjectId();
                }
                c0922a.c("PUSH_SHOW", "request success pushCacheList:" + size + ", cfg:" + cfg + ", fir:" + subjectId, true);
                if (r13 != 0) {
                    PushPermanentManager.f48745a.v();
                } else {
                    PushPermanentShowHelper.f48754a.f();
                }
                objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
                thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
                if (thM456exceptionOrNullimpl != null) {
                    Collections.shuffle(PushPermanentManager.f48747c);
                    wf.a.f74274a.c("PUSH_SHOW", "onFailure: " + thM456exceptionOrNullimpl, true);
                }
                return Unit.f64096a;
            }
            ResultKt.b(obj);
            String str = PushPermanentManager.f48749e;
            if (str == null || str.length() == 0 || !PushPermanentManager.f48745a.t()) {
                PushPermanentManager.f48749e = "1";
            }
            wf.a.f74274a.c("PUSH_SHOW", "fetchPushData pager:" + PushPermanentManager.f48749e + ",lastRequestTime:" + PushPermanentManager.f48753i, true);
            Result.Companion companion = Result.INSTANCE;
            to.b bVarR = PushPermanentManager.f48745a.r();
            String str2 = PushPermanentManager.f48749e;
            this.label = 1;
            obj = to.b.a.a(bVarR, null, str2, null, this, 5, null);
            if (obj == objF) {
                return objF;
            }
            BaseDto baseDto = (BaseDto) obj;
            if (Intrinsics.c(baseDto.getCode(), "0")) {
                PushPermanentManager pushPermanentManager3 = PushPermanentManager.f48745a;
                PushPermanentManager.f48753i = System.currentTimeMillis();
                permanentPushResp = (PermanentPushResp) baseDto.getData();
                if (permanentPushResp != null) {
                    PermanentConfig cfg2 = permanentPushResp.getCfg();
                    ?? enable = cfg2 != null ? cfg2.getEnable() : 1;
                    PermanentConfig cfg3 = permanentPushResp.getCfg();
                    if (cfg3 != null) {
                        PushPermanentManager.f48748d = cfg3;
                    }
                    List<PermanentItemBean> items2 = permanentPushResp.getItems();
                    r13 = enable;
                    if (items2 != null) {
                        if (items2.isEmpty()) {
                            r13 = enable;
                        } else {
                            LinkedHashMap linkedHashMap = new LinkedHashMap();
                            PushPermanentManager.f48747c.addAll(0, permanentPushResp.getItems());
                            for (PermanentItemBean permanentItemBean2 : PushPermanentManager.f48747c) {
                                if (permanentItemBean2 != null) {
                                    linkedHashMap.putIfAbsent(permanentItemBean2.getSubjectId(), permanentItemBean2);
                                }
                            }
                            PushPermanentManager pushPermanentManager4 = PushPermanentManager.f48745a;
                            PushPermanentManager.f48747c = new CopyOnWriteArrayList(linkedHashMap.values());
                            r10 = enable;
                            if (Intrinsics.c(PushPermanentManager.f48749e, "1")) {
                                PermanentRoom permanentRoom2 = PermanentRoom.f48721a;
                                this.L$0 = permanentPushResp;
                                this.I$0 = enable;
                                this.label = 2;
                                if (permanentRoom2.c(this) == objF) {
                                    return objF;
                                }
                                permanentPushResp2 = permanentPushResp;
                                r12 = enable;
                                permanentPushResp = permanentPushResp2;
                                r10 = r12;
                            }
                            permanentRoom = PermanentRoom.f48721a;
                            this.L$0 = permanentPushResp;
                            this.I$0 = r10;
                            this.label = 3;
                            if (permanentRoom.l(permanentPushResp, this) == objF) {
                                return objF;
                            }
                            r11 = r10;
                            permanentPushResp3 = permanentPushResp;
                            permanentPushResp = permanentPushResp3;
                            r13 = r11;
                        }
                    }
                    pager = permanentPushResp.getPager();
                    if (pager != null) {
                        PushPermanentManager pushPermanentManager5 = PushPermanentManager.f48745a;
                        nextPage = pager.getNextPage();
                        if (nextPage == null) {
                            nextPage = PushPermanentManager.f48749e;
                        }
                        PushPermanentManager.f48749e = nextPage;
                        PushPermanentManager.f48750f = pager.getHasMore();
                    }
                    PushPermanentManager pushPermanentManager6 = PushPermanentManager.f48745a;
                    title = permanentPushResp.getTitle();
                    if (title == null) {
                        title = PushPermanentManager.f48745a.s();
                    }
                    PushPermanentManager.f48752h = title;
                    wf.a.C0922a c0922a2 = wf.a.f74274a;
                    int size2 = PushPermanentManager.f48747c.size();
                    PermanentConfig cfg4 = permanentPushResp.getCfg();
                    items = permanentPushResp.getItems();
                    if (items != null) {
                        subjectId = null;
                    } else {
                        subjectId = null;
                    }
                    c0922a2.c("PUSH_SHOW", "request success pushCacheList:" + size2 + ", cfg:" + cfg4 + ", fir:" + subjectId, true);
                    if (r13 != 0) {
                        PushPermanentManager.f48745a.v();
                    } else {
                        PushPermanentShowHelper.f48754a.f();
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
            Collections.shuffle(PushPermanentManager.f48747c);
            wf.a.f74274a.c("PUSH_SHOW", "onFailure: " + thM456exceptionOrNullimpl, true);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PushPermanentManager$fetchPushData$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
