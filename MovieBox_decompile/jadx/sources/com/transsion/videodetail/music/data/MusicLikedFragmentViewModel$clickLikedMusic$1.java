package com.transsion.videodetail.music.data;

import com.transsion.moviedetailapi.bean.Staff;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.videodetail.music.bean.LikeListActionEnum;
import com.transsion.videodetail.music.bean.MusicLikedRemoteItemBean;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.videodetail.music.data.MusicLikedFragmentViewModel$clickLikedMusic$1", f = "MusicLikedFragmentViewModel.kt", l = {Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE, Sdk$SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE}, m = "invokeSuspend")
final class MusicLikedFragmentViewModel$clickLikedMusic$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Subject $subject;
    private Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final MusicLikedFragmentViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MusicLikedFragmentViewModel$clickLikedMusic$1(Subject subject, MusicLikedFragmentViewModel musicLikedFragmentViewModel, Continuation<? super MusicLikedFragmentViewModel$clickLikedMusic$1> continuation) {
        super(2, continuation);
        this.$subject = subject;
        this.this$0 = musicLikedFragmentViewModel;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        MusicLikedFragmentViewModel$clickLikedMusic$1 musicLikedFragmentViewModel$clickLikedMusic$1 = new MusicLikedFragmentViewModel$clickLikedMusic$1(this.$subject, this.this$0, continuation);
        musicLikedFragmentViewModel$clickLikedMusic$1.L$0 = obj;
        return musicLikedFragmentViewModel$clickLikedMusic$1;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objM453constructorimpl;
        Subject subject;
        MusicLikedFragmentViewModel musicLikedFragmentViewModel;
        MusicLikedRemoteItemBean musicLikedRemoteItemBean;
        Subject subject2;
        MusicLikedFragmentViewModel musicLikedFragmentViewModel2;
        MusicLikedRemoteItemBean musicLikedRemoteItemBean2;
        LikeListActionEnum likeListActionEnum;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                subject = this.$subject;
                musicLikedFragmentViewModel = this.this$0;
                Result.Companion companion = Result.INSTANCE;
                musicLikedRemoteItemBean = new MusicLikedRemoteItemBean(null, null, null, null, null, null, null, null, null, null, null, 2047, null);
                musicLikedRemoteItemBean.setSubjectId(subject.getSubjectId());
                musicLikedRemoteItemBean.setTitle(subject.getTitle());
                musicLikedRemoteItemBean.setCover(subject.getCover());
                musicLikedRemoteItemBean.setCountryName(subject.getCountryName());
                musicLikedRemoteItemBean.setGenre(subject.getGenre());
                musicLikedRemoteItemBean.setReleaseDate(subject.getReleaseDate());
                musicLikedRemoteItemBean.setDurationSeconds(subject.getDurationSeconds());
                musicLikedRemoteItemBean.setLikeTime(Boxing.e(System.currentTimeMillis()));
                List<Staff> staffList = subject.getStaffList();
                if (staffList != null && !staffList.isEmpty()) {
                    Staff staff = staffList.get(0);
                    musicLikedRemoteItemBean.setSingerName(staff.getName());
                    musicLikedRemoteItemBean.setSingerAvatar(staff.getAvatarUrl());
                }
                Integer likeStatus = subject.getLikeStatus();
                if (likeStatus != null && likeStatus.intValue() == 0) {
                    this.L$0 = subject;
                    this.L$1 = musicLikedFragmentViewModel;
                    this.L$2 = musicLikedRemoteItemBean;
                    this.label = 1;
                    if (musicLikedFragmentViewModel.D(musicLikedRemoteItemBean, this) == objF) {
                        return objF;
                    }
                    subject2 = subject;
                    musicLikedFragmentViewModel2 = musicLikedFragmentViewModel;
                    musicLikedRemoteItemBean2 = musicLikedRemoteItemBean;
                    likeListActionEnum = LikeListActionEnum.ADD;
                    musicLikedRemoteItemBean = musicLikedRemoteItemBean2;
                    musicLikedFragmentViewModel = musicLikedFragmentViewModel2;
                    subject = subject2;
                } else if (likeStatus != null && likeStatus.intValue() == 1) {
                    this.L$0 = subject;
                    this.L$1 = musicLikedFragmentViewModel;
                    this.L$2 = musicLikedRemoteItemBean;
                    this.label = 2;
                    if (musicLikedFragmentViewModel.r(musicLikedRemoteItemBean, this) == objF) {
                        return objF;
                    }
                    subject2 = subject;
                    musicLikedFragmentViewModel2 = musicLikedFragmentViewModel;
                    musicLikedRemoteItemBean2 = musicLikedRemoteItemBean;
                    likeListActionEnum = LikeListActionEnum.REMOVE;
                    musicLikedRemoteItemBean = musicLikedRemoteItemBean2;
                    musicLikedFragmentViewModel = musicLikedFragmentViewModel2;
                    subject = subject2;
                } else {
                    likeListActionEnum = LikeListActionEnum.ADD;
                }
            } else if (i10 == 1) {
                musicLikedRemoteItemBean2 = (MusicLikedRemoteItemBean) this.L$2;
                musicLikedFragmentViewModel2 = (MusicLikedFragmentViewModel) this.L$1;
                subject2 = (Subject) this.L$0;
                ResultKt.b(obj);
                likeListActionEnum = LikeListActionEnum.ADD;
                musicLikedRemoteItemBean = musicLikedRemoteItemBean2;
                musicLikedFragmentViewModel = musicLikedFragmentViewModel2;
                subject = subject2;
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                musicLikedRemoteItemBean2 = (MusicLikedRemoteItemBean) this.L$2;
                musicLikedFragmentViewModel2 = (MusicLikedFragmentViewModel) this.L$1;
                subject2 = (Subject) this.L$0;
                ResultKt.b(obj);
                likeListActionEnum = LikeListActionEnum.REMOVE;
                musicLikedRemoteItemBean = musicLikedRemoteItemBean2;
                musicLikedFragmentViewModel = musicLikedFragmentViewModel2;
                subject = subject2;
            }
            musicLikedRemoteItemBean.setActionEnum(likeListActionEnum);
            musicLikedFragmentViewModel.f55562f.n(musicLikedRemoteItemBean);
            musicLikedFragmentViewModel.x();
            musicLikedFragmentViewModel.G(subject.getSubjectId(), likeListActionEnum);
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Result.m456exceptionOrNullimpl(objM453constructorimpl);
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((MusicLikedFragmentViewModel$clickLikedMusic$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
