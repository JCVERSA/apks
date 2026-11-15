package com.transsion.postdetail.test;

import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.moviedetailapi.bean.GifBean;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.player.config.RenderType;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.orplayer.e;
import com.transsion.player.orplayer.f;
import com.transsion.player.p007enum.ScaleMode;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import qn.c;
import qn.d;
import tf.i;

@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\u0003J\u0019\u0010\n\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0014¢\u0006\u0004\b\n\u0010\u000bR\u001c\u0010\u0010\u001a\n \r*\u0004\u0018\u00010\f0\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\f8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0011\u0010\u000fR\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001c\u001a\u00020\f8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u001b\u0010\u000fR\u0018\u0010 \u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0018\u0010$\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#¨\u0006%"}, d2 = {"Lcom/transsion/postdetail/test/TestActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "", "R", "initPlayer", "S", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "", "kotlin.jvm.PlatformType", "a", "Ljava/lang/String;", "TAG", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "json", "Landroidx/recyclerview/widget/RecyclerView;", "c", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "Lcom/transsion/postdetail/test/a;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/postdetail/test/a;", "mAdapter", "e", "videoUrl", "Lcom/transsion/player/orplayer/f;", "f", "Lcom/transsion/player/orplayer/f;", "mPlayer", "Lwm/a;", "g", "Lwm/a;", "mItemChange", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TestActivity extends AppCompatActivity {

    private RecyclerView recyclerView;

    private com.transsion.postdetail.test.a mAdapter;

    private f mPlayer;

    private wm.a mItemChange;

    private final String TAG = TestActivity.class.getSimpleName();

    private final String json = "";

    private final String videoUrl = "https://test-acdn.aoneroom.com/media/video/2022/08/11/5970c1ffed2920c3b2d80da029fe3944-sd.mp4";

    public static final class a implements e {
        a() {
        }

        @Override
        public void canNonSubscriberPlay(boolean z10, int i10, int i11, d dVar) {
            e.a.a(this, z10, i10, i11, dVar);
        }

        @Override
        public void initPlayer() {
            e.a.b(this);
        }

        @Override
        public void onAliyunDecodeErrorChangeSoftwareDecoder(gn.e eVar) {
            e.a.c(this, eVar);
        }

        @Override
        public void onBufferedPosition(long j10, gn.e eVar) {
            e.a.d(this, j10, eVar);
        }

        @Override
        public void onCompletion(gn.e eVar) {
            e.a.e(this, eVar);
            wm.a aVar = TestActivity.this.mItemChange;
            if (aVar != null) {
                aVar.q();
            }
        }

        @Override
        public void onFocusChange(boolean z10) {
            e.a.g(this, z10);
        }

        @Override
        public void onIsPlayingChanged(boolean z10) {
            e.a.h(this, z10);
        }

        @Override
        public void onLoadingBegin(gn.e eVar) {
            e.a.i(this, eVar);
        }

        @Override
        public void onLoadingEnd(gn.e eVar) {
            e.a.k(this, eVar);
        }

        @Override
        public void onLoadingProgress(int i10, float f10, gn.e eVar) {
            e.a.m(this, i10, f10, eVar);
            wf.a.C0922a c0922a = wf.a.f74274a;
            String str = TestActivity.this.TAG;
            Intrinsics.g(str, "access$getTAG$p(...)");
            wf.a.C0922a.f(c0922a, str, "percent=" + i10, false, 4, null);
        }

        @Override
        public void onLoopingStart() {
            e.a.o(this);
        }

        @Override
        public void onMediaItemTransition(String str) {
            e.a.p(this, str);
        }

        @Override
        public void onPlayError(PlayError errorInfo, gn.e eVar) {
            Intrinsics.h(errorInfo, "errorInfo");
            e.a.q(this, errorInfo, eVar);
        }

        @Override
        public void onPlayerRelease(gn.e eVar) {
            e.a.t(this, eVar);
        }

        @Override
        public void onPlayerReset() {
            e.a.v(this);
        }

        @Override
        public void onPrepare(gn.e eVar) {
            e.a.w(this, eVar);
        }

        @Override
        public void onProgress(long j10, gn.e eVar) {
            e.a.y(this, j10, eVar);
            wf.a.C0922a c0922a = wf.a.f74274a;
            String str = TestActivity.this.TAG;
            Intrinsics.g(str, "access$getTAG$p(...)");
            wf.a.C0922a.f(c0922a, str, "process=" + j10, false, 4, null);
        }

        @Override
        public void onRenderFirstFrame() {
            wf.a.C0922a c0922a = wf.a.f74274a;
            String str = TestActivity.this.TAG;
            Intrinsics.g(str, "access$getTAG$p(...)");
            wf.a.C0922a.f(c0922a, str, "onRenderFirstFrame", false, 4, null);
            wm.a aVar = TestActivity.this.mItemChange;
            if (aVar != null) {
                aVar.p();
            }
        }

        @Override
        public void onSetDataSource() {
            e.a.B(this);
        }

        @Override
        public void onTracksAudioBitrateChange(int i10) {
            e.a.C(this, i10);
        }

        @Override
        public void onTracksChange(c cVar) {
            e.a.D(this, cVar);
        }

        @Override
        public void onTracksVideoBitrateChange(int i10) {
            e.a.E(this, i10);
        }

        @Override
        public void onVideoPause(gn.e eVar) {
            e.a.F(this, eVar);
        }

        @Override
        public void onVideoSizeChanged(int i10, int i11) {
            e.a.H(this, i10, i11);
        }

        @Override
        public void onVideoStart(gn.e eVar) {
            e.a.I(this, eVar);
            wf.a.C0922a c0922a = wf.a.f74274a;
            String str = TestActivity.this.TAG;
            Intrinsics.g(str, "access$getTAG$p(...)");
            wf.a.C0922a.f(c0922a, str, "onVideoStart", false, 4, null);
        }

        @Override
        public void setOnSeekCompleteListener() {
            e.a.K(this);
        }
    }

    public static final class b extends RecyclerView.r {

        private int f47281a;

        private int f47282b;

        b() {
        }

        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
            Intrinsics.h(recyclerView, "recyclerView");
        }

        @Override
        public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
            com.transsion.postdetail.test.a aVar;
            List<Object> data;
            List<Object> data2;
            Intrinsics.h(recyclerView, "recyclerView");
            RecyclerView.m layoutManager = recyclerView.getLayoutManager();
            if (!(layoutManager instanceof LinearLayoutManager)) {
                throw new RuntimeException("Unsupported layoutManager.");
            }
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            this.f47281a = linearLayoutManager.findLastCompletelyVisibleItemPosition();
            this.f47282b = linearLayoutManager.findFirstCompletelyVisibleItemPosition();
            int iFindFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
            int iFindLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
            wm.a aVar2 = TestActivity.this.mItemChange;
            int iB = aVar2 != null ? aVar2.b() : 0;
            boolean z10 = iB < iFindFirstVisibleItemPosition || iB > iFindLastVisibleItemPosition;
            if (linearLayoutManager.getChildCount() <= 0 || (aVar = TestActivity.this.mAdapter) == null || (data = aVar.getData()) == null || !(!data.isEmpty()) || !z10) {
                return;
            }
            View childAt = linearLayoutManager.getChildAt(i11 < 0 ? linearLayoutManager.getChildCount() - 1 : 0);
            if (childAt != null) {
                int position = linearLayoutManager.getPosition(childAt);
                com.transsion.postdetail.test.a aVar3 = TestActivity.this.mAdapter;
                PostSubjectItem postSubjectItem = (aVar3 == null || (data2 = aVar3.getData()) == null) ? null : (PostSubjectItem) data2.get(position);
                wm.a aVar4 = TestActivity.this.mItemChange;
                if (aVar4 != null) {
                    aVar4.s(postSubjectItem, childAt, position);
                }
            }
        }
    }

    private final void R() {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < 21; i10++) {
            ArrayList arrayList2 = new ArrayList();
            Image image = new Image(200, 2000, "https://cdn.shalltry.com/tcmservice/tcmservice/111630622592760357.jpg", 200, null, null, new GifBean("https://test-acdn.aoneroom.com/image/2022/08/16/61e43091d911c7e773efd9189332fadb.webp", "https://test-acdn.aoneroom.com/media/video/2022/08/11/5970c1ffed2920c3b2d80da029fe3944-sd.mp4"), null, null, 0.0f, 0.0f, 0, 0, 0, 16256, null);
            int i11 = i10 % 9;
            if (i11 >= 0) {
                while (true) {
                    arrayList2.add(image);
                    int i12 = i12 != i11 ? i12 + 1 : 0;
                }
            }
            arrayList.add(new PostSubjectItem(null, null, null, null, null, null, new Media(null, null, null, arrayList2, MediaType.IMAGE.getValue(), null, null), null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, null, false, null, false, null, false, false, false, false, null, -524288, 1, null));
        }
        this.mAdapter = new com.transsion.postdetail.test.a(arrayList);
        RecyclerView recyclerView = (RecyclerView) findViewById(R$id.recycler_view);
        if (recyclerView != null) {
            recyclerView.setLayoutManager(new LinearLayoutManager(this));
            recyclerView.addItemDecoration(new i(200, 0, 2, null));
            recyclerView.setAdapter(this.mAdapter);
        } else {
            recyclerView = null;
        }
        this.recyclerView = recyclerView;
    }

    private final void S() {
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView != null) {
            recyclerView.addOnScrollListener(new b());
        }
    }

    private final void initPlayer() {
        ORPlayerView oRPlayerView = new ORPlayerView(this, RenderType.TEXTURE_VIEW);
        f fVarA = new f.a(this).a();
        fVarA.setTextureView(oRPlayerView.getTextureView());
        fVarA.setScaleMode(ScaleMode.SCALE_ASPECT_FILL);
        this.mItemChange = new wm.a(fVarA, oRPlayerView);
        fVarA.setPlayerListener(new a());
        this.mPlayer = fVarA;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R$layout.activity_test);
        R();
        initPlayer();
        S();
    }
}
