package com.transsion.subtitle.viewmodel;

import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.SubtitleLanguageMapBean;
import com.transsion.moviedetailapi.bean.SubtitleItem;
import com.transsion.subtitle.bean.SubtitleSearchListBean;
import com.transsion.subtitle.fragment.i;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.c;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.subtitle.viewmodel.SubtitleDownloadViewModel$searchSubtitleList$1", f = "SubtitleDownloadViewModel.kt", l = {151}, m = "invokeSuspend")
@SourceDebugExtension
final class SubtitleDownloadViewModel$searchSubtitleList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final DownloadBean $downloadBean;
    final i $keyword;
    final List<SubtitleLanguageMapBean> $languageList;
    final String $languages;
    final String $nextPage;
    final int $perPage;
    int label;
    final SubtitleDownloadViewModel this$0;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/subtitle/bean/SubtitleSearchListBean;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.subtitle.viewmodel.SubtitleDownloadViewModel$searchSubtitleList$1$1", f = "SubtitleDownloadViewModel.kt", l = {140, 140}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.b, Continuation<? super Unit>, Object> {
        final DownloadBean $downloadBean;
        final i $keyword;
        final List<SubtitleLanguageMapBean> $languageList;
        private Object L$0;
        int label;
        final SubtitleDownloadViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(SubtitleDownloadViewModel subtitleDownloadViewModel, DownloadBean downloadBean, i iVar, List<SubtitleLanguageMapBean> list, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = subtitleDownloadViewModel;
            this.$downloadBean = downloadBean;
            this.$keyword = iVar;
            this.$languageList = list;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$downloadBean, this.$keyword, this.$languageList, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            kotlinx.coroutines.flow.b bVar;
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    bVar = (kotlinx.coroutines.flow.b) this.L$0;
                    ResultKt.b(obj);
                } else {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                return Unit.f64096a;
            }
            ResultKt.b(obj);
            bVar = (kotlinx.coroutines.flow.b) this.L$0;
            SubtitleDownloadViewModel subtitleDownloadViewModel = this.this$0;
            DownloadBean downloadBean = this.$downloadBean;
            i iVar = this.$keyword;
            List<SubtitleLanguageMapBean> list = this.$languageList;
            this.L$0 = bVar;
            this.label = 1;
            obj = subtitleDownloadViewModel.s(downloadBean, iVar, list, this);
            if (obj == objF) {
                return objF;
            }
            this.L$0 = null;
            this.label = 2;
            if (bVar.emit(obj, this) == objF) {
                return objF;
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(kotlinx.coroutines.flow.b bVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(bVar, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/subtitle/bean/SubtitleSearchListBean;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.subtitle.viewmodel.SubtitleDownloadViewModel$searchSubtitleList$1$3", f = "SubtitleDownloadViewModel.kt", l = {150}, m = "invokeSuspend")
    static final class AnonymousClass3 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.b, Throwable, Continuation<? super Unit>, Object> {
        private Object L$0;
        int label;

        AnonymousClass3(Continuation<? super AnonymousClass3> continuation) {
            super(3, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                kotlinx.coroutines.flow.b bVar = (kotlinx.coroutines.flow.b) this.L$0;
                this.label = 1;
                if (bVar.emit(null, this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(kotlinx.coroutines.flow.b bVar, Throwable th2, Continuation<? super Unit> continuation) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(continuation);
            anonymousClass3.L$0 = bVar;
            return anonymousClass3.invokeSuspend(Unit.f64096a);
        }
    }

    static final class a implements kotlinx.coroutines.flow.b {

        final SubtitleDownloadViewModel f52946a;

        a(SubtitleDownloadViewModel subtitleDownloadViewModel) {
            this.f52946a = subtitleDownloadViewModel;
        }

        @Override
        public final Object emit(SubtitleSearchListBean subtitleSearchListBean, Continuation continuation) {
            this.f52946a.o().n(subtitleSearchListBean);
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SubtitleDownloadViewModel$searchSubtitleList$1(SubtitleDownloadViewModel subtitleDownloadViewModel, DownloadBean downloadBean, i iVar, List<SubtitleLanguageMapBean> list, String str, String str2, int i10, Continuation<? super SubtitleDownloadViewModel$searchSubtitleList$1> continuation) {
        super(2, continuation);
        this.this$0 = subtitleDownloadViewModel;
        this.$downloadBean = downloadBean;
        this.$keyword = iVar;
        this.$languageList = list;
        this.$languages = str;
        this.$nextPage = str2;
        this.$perPage = i10;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SubtitleDownloadViewModel$searchSubtitleList$1(this.this$0, this.$downloadBean, this.$keyword, this.$languageList, this.$languages, this.$nextPage, this.$perPage, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            final kotlinx.coroutines.flow.a aVarR = c.r(new AnonymousClass1(this.this$0, this.$downloadBean, this.$keyword, this.$languageList, null));
            final SubtitleDownloadViewModel subtitleDownloadViewModel = this.this$0;
            final i iVar = this.$keyword;
            final String str = this.$languages;
            final DownloadBean downloadBean = this.$downloadBean;
            final String str2 = this.$nextPage;
            final int i11 = this.$perPage;
            kotlinx.coroutines.flow.a aVarE = c.e(new kotlinx.coroutines.flow.a() {

                public static final class AnonymousClass2 implements kotlinx.coroutines.flow.b {

                    final kotlinx.coroutines.flow.b f52954a;

                    final SubtitleDownloadViewModel f52955b;

                    final i f52956c;

                    final String f52957d;

                    final DownloadBean f52958e;

                    final String f52959f;

                    final int f52960g;

                    @Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
                    @DebugMetadata(c = "com.transsion.subtitle.viewmodel.SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1$2", f = "SubtitleDownloadViewModel.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE, 50}, m = "emit")
                    public static final class AnonymousClass1 extends ContinuationImpl {
                        Object L$0;
                        int label;
                        Object result;

                        public AnonymousClass1(Continuation continuation) {
                            super(continuation);
                        }

                        @Override
                        public final Object invokeSuspend(Object obj) {
                            this.result = obj;
                            this.label |= Integer.MIN_VALUE;
                            return AnonymousClass2.this.emit(null, this);
                        }
                    }

                    public AnonymousClass2(kotlinx.coroutines.flow.b bVar, SubtitleDownloadViewModel subtitleDownloadViewModel, i iVar, String str, DownloadBean downloadBean, String str2, int i10) {
                        this.f52954a = bVar;
                        this.f52955b = subtitleDownloadViewModel;
                        this.f52956c = iVar;
                        this.f52957d = str;
                        this.f52958e = downloadBean;
                        this.f52959f = str2;
                        this.f52960g = i10;
                    }

                    /* JADX WARN: Code duplicated, block: B:31:0x007f A[RETURN] */
                    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                    @Override
                    public final Object emit(Object obj, Continuation continuation) {
                        AnonymousClass1 anonymousClass1;
                        kotlinx.coroutines.flow.b bVar;
                        kotlinx.coroutines.flow.b bVar2;
                        Object obj2;
                        if (continuation instanceof AnonymousClass1) {
                            anonymousClass1 = (AnonymousClass1) continuation;
                            int i10 = anonymousClass1.label;
                            if ((i10 & Integer.MIN_VALUE) != 0) {
                                anonymousClass1.label = i10 - Integer.MIN_VALUE;
                            } else {
                                anonymousClass1 = new AnonymousClass1(continuation);
                            }
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                        Object obj3 = anonymousClass1.result;
                        Object objF = IntrinsicsKt.f();
                        int i11 = anonymousClass1.label;
                        if (i11 != 0) {
                            if (i11 == 1) {
                                kotlinx.coroutines.flow.b bVar3 = (kotlinx.coroutines.flow.b) anonymousClass1.L$0;
                                ResultKt.b(obj3);
                                bVar = bVar3;
                            } else {
                                if (i11 != 2) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                ResultKt.b(obj3);
                            }
                            return Unit.f64096a;
                        }
                        ResultKt.b(obj3);
                        kotlinx.coroutines.flow.b bVar4 = this.f52954a;
                        SubtitleSearchListBean subtitleSearchListBean = (SubtitleSearchListBean) obj;
                        List<SubtitleItem> items = subtitleSearchListBean != null ? subtitleSearchListBean.getItems() : null;
                        if (items == null || items.isEmpty()) {
                            obj2 = subtitleSearchListBean;
                            bVar2 = bVar4;
                            SubtitleDownloadViewModel subtitleDownloadViewModel = this.f52955b;
                            i iVar = this.f52956c;
                            String str = this.f52957d;
                            DownloadBean downloadBean = this.f52958e;
                            String str2 = this.f52959f;
                            int i12 = this.f52960g;
                            anonymousClass1.L$0 = bVar4;
                            anonymousClass1.label = 1;
                            Object objR = subtitleDownloadViewModel.r(iVar, str, downloadBean, str2, i12, anonymousClass1);
                            if (objR == objF) {
                                return objF;
                            }
                            obj3 = objR;
                            bVar = bVar4;
                        }
                        obj2 = subtitleSearchListBean;
                        bVar2 = bVar4;
                        anonymousClass1.L$0 = null;
                        anonymousClass1.label = 2;
                        if (bVar2.emit(obj2, anonymousClass1) == objF) {
                            return objF;
                        }
                        return Unit.f64096a;
                        Object obj4 = obj3;
                        bVar2 = bVar;
                        obj2 = obj4;
                        obj2 = subtitleSearchListBean;
                        bVar2 = bVar4;
                        anonymousClass1.L$0 = null;
                        anonymousClass1.label = 2;
                        if (bVar2.emit(obj2, anonymousClass1) == objF) {
                            return objF;
                        }
                        return Unit.f64096a;
                    }
                }

                @Override
                public Object a(kotlinx.coroutines.flow.b bVar, Continuation continuation) {
                    Object objA = aVarR.a(new AnonymousClass2(bVar, subtitleDownloadViewModel, iVar, str, downloadBean, str2, i11), continuation);
                    return objA == IntrinsicsKt.f() ? objA : Unit.f64096a;
                }
            }, new AnonymousClass3(null));
            a aVar = new a(this.this$0);
            this.label = 1;
            if (aVarE.a(aVar, this) == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SubtitleDownloadViewModel$searchSubtitleList$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
