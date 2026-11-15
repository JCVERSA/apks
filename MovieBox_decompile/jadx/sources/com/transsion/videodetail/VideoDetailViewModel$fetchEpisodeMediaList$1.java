package com.transsion.videodetail;

import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.transsion.moviedetailapi.bean.ResourcesSeason;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.videodetail.VideoDetailViewModel$fetchEpisodeMediaList$1", f = "VideoDetailViewModel.kt", l = {154, 162, 170, PsExtractor.PRIVATE_STREAM_1, 200}, m = "invokeSuspend")
@SourceDebugExtension
final class VideoDetailViewModel$fetchEpisodeMediaList$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final List<ResourcesSeason> $seasons;
    final String $subjectId;
    int I$0;
    int I$1;
    int I$2;
    int I$3;
    int I$4;
    Object L$0;
    Object L$1;
    Object L$10;
    Object L$11;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    Object L$6;
    Object L$7;
    Object L$8;
    Object L$9;
    int label;
    final VideoDetailViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    VideoDetailViewModel$fetchEpisodeMediaList$1(VideoDetailViewModel videoDetailViewModel, List<ResourcesSeason> list, String str, Continuation<? super VideoDetailViewModel$fetchEpisodeMediaList$1> continuation) {
        super(2, continuation);
        this.this$0 = videoDetailViewModel;
        this.$seasons = list;
        this.$subjectId = str;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new VideoDetailViewModel$fetchEpisodeMediaList$1(this.this$0, this.$seasons, this.$subjectId, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:106:0x056d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:107:0x056e  */
    /* JADX WARN: Code duplicated, block: B:110:0x0587  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:101:0x04df -> B:113:0x05b1). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:110:0x0587 -> B:104:0x0501). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:111:0x0599 -> B:113:0x05b1). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:112:0x05aa -> B:113:0x05b1). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x020c -> B:46:0x0214). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x027e -> B:54:0x0286). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x0294 -> B:56:0x0295). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:69:0x0335 -> B:63:0x02b0). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:93:0x047d -> B:94:0x048f). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:95:0x04a5 -> B:96:0x04b5). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override
    public final java.lang.Object invokeSuspend(java.lang.Object r34) {
        /*
            Method dump skipped, instruction units count: 1550
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.transsion.videodetail.VideoDetailViewModel$fetchEpisodeMediaList$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((VideoDetailViewModel$fetchEpisodeMediaList$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
