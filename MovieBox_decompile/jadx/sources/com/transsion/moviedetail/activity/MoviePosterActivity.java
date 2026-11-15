package com.transsion.moviedetail.activity;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.content.FileProvider;
import androidx.fragment.app.FragmentManager;
import androidx.p009lifecycle.Lifecycle;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.cloud.tmc.integration.event.EventConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.widget.toast.core.h;
import com.transsion.baselib.helper.a;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.moviedetail.activity.MoviePosterActivity;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Staff;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.ninegridview.ImageInfo;
import com.transsion.ninegridview.helper.FileHelper;
import com.transsion.ninegridview.preview.ImagePreviewActivity;
import com.transsion.web.R$string;
import com.transsion.web.share.ImageShareDialog;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import jm.j;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.y0;
import lm.b;
import tf.d;
import zg.c;

@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 .2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001+B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\r\u001a\u00020\u00072\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nH\u0003¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000f\u0010\u0004JI\u0010\u0018\u001a\u00020\u000728\u0010\u0017\u001a4\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0014\u0012\u0015\u0012\u0013\u0018\u00010\u0015¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0016\u0012\u0004\u0012\u00020\u00070\u0010H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001a\u0010\u0004J\u0017\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0019\u0010!\u001a\u00020\u00072\b\u0010 \u001a\u0004\u0018\u00010\u001fH\u0014¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u0002H\u0016¢\u0006\u0004\b#\u0010$J\u0011\u0010&\u001a\u0004\u0018\u00010%H\u0016¢\u0006\u0004\b&\u0010'J\u000f\u0010(\u001a\u00020\u0011H\u0016¢\u0006\u0004\b(\u0010)J\u000f\u0010*\u001a\u00020\u0011H\u0016¢\u0006\u0004\b*\u0010)R\u0018\u0010-\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,¨\u0006/"}, d2 = {"Lcom/transsion/moviedetail/activity/MoviePosterActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Llm/b;", "<init>", "()V", "Lcom/transsion/moviedetailapi/bean/Subject;", "info", "", "s0", "(Lcom/transsion/moviedetailapi/bean/Subject;)V", "", "Lcom/transsion/moviedetailapi/bean/Staff;", "staffList", "t0", "(Ljava/util/List;)V", "l0", "Lkotlin/Function2;", "", "Lkotlin/ParameterName;", "name", "exit", "Ljava/io/File;", "imgFile", "callback", "saveToAlbum", "(Lkotlin/jvm/functions/Function2;)V", "imageShareClick", "Landroid/net/Uri;", "imageUri", "shareImage", "(Landroid/net/Uri;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "j0", "()Llm/b;", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "isTranslucent", "()Z", "isStatusDark", "a", "Lcom/transsion/moviedetailapi/bean/Subject;", "mMovieDetailBean", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "MovieDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class MoviePosterActivity extends BaseActivity<b> {

    private Subject mMovieDetailBean;

    /* JADX WARN: Multi-variable type inference failed */
    private final void imageShareClick() {
        ((b) getMViewBinding()).f65723e.setEnabled(false);
        final long jCurrentTimeMillis = System.currentTimeMillis();
        saveToAlbum(new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return MoviePosterActivity.k0(this.f63180a, jCurrentTimeMillis, ((Boolean) obj).booleanValue(), (File) obj2);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit k0(MoviePosterActivity moviePosterActivity, long j10, boolean z10, File file) {
        if (file != null) {
            Uri uriForFile = FileProvider.getUriForFile(moviePosterActivity, moviePosterActivity.getApplication().getPackageName() + ".download.fileprovider", file);
            Intrinsics.e(uriForFile);
            moviePosterActivity.shareImage(uriForFile);
        } else {
            h.f40484a.k(R$string.share_failed_tips);
        }
        ((b) moviePosterActivity.getMViewBinding()).f65723e.setEnabled(true);
        long jCurrentTimeMillis = System.currentTimeMillis() - j10;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("share: 耗时=");
        sb2.append(jCurrentTimeMillis);
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void l0() {
        ((b) getMViewBinding()).f65721c.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                MoviePosterActivity.n0(this.f63176a, view);
            }
        });
        ((b) getMViewBinding()).f65722d.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                MoviePosterActivity.o0(this.f63177a, view);
            }
        });
        ((b) getMViewBinding()).f65723e.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                MoviePosterActivity.q0(this.f63178a, view);
            }
        });
        ((b) getMViewBinding()).f65720b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                MoviePosterActivity.m0(this.f63179a, view);
            }
        });
    }

    public static final void m0(MoviePosterActivity moviePosterActivity, View view) {
        moviePosterActivity.finish();
    }

    public static final void n0(MoviePosterActivity moviePosterActivity, View view) {
        Cover cover;
        Subject subject = moviePosterActivity.mMovieDetailBean;
        if (subject == null || (cover = subject.getCover()) == null) {
            return;
        }
        a.f42121a.h("movie_poster", "preview", (60 & 4) != 0 ? "" : null, (60 & 8) != 0 ? "" : null, (60 & 16) != 0 ? "" : null, (60 & 32) != 0 ? null : null);
        ImageInfo imageInfo = new ImageInfo();
        imageInfo.bigImageUrl = cover.getUrl();
        imageInfo.thumbnailUrl = cover.getThumbnail();
        Integer height = cover.getHeight();
        imageInfo.imageViewHeight = height != null ? height.intValue() : 0.0f;
        Integer width = cover.getWidth();
        imageInfo.imageViewWidth = width != null ? width.intValue() : 0.0f;
        ImagePreviewActivity.INSTANCE.a(moviePosterActivity, 0, CollectionsKt.q(imageInfo));
    }

    public static final void o0(MoviePosterActivity moviePosterActivity, View view) {
        a.f42121a.h("movie_poster", "save_picture", (60 & 4) != 0 ? "" : null, (60 & 8) != 0 ? "" : null, (60 & 16) != 0 ? "" : null, (60 & 32) != 0 ? null : null);
        moviePosterActivity.saveToAlbum(new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return MoviePosterActivity.p0(((Boolean) obj).booleanValue(), (File) obj2);
            }
        });
    }

    public static final Unit p0(boolean z10, File file) {
        if (z10) {
            fh.b.f60176a.d(com.transsion.ninegridview.R$string.has_been_saved);
        } else {
            fh.b.f60176a.d(com.transsion.ninegridview.R$string.image_save_success);
        }
        return Unit.f64096a;
    }

    public static final void q0(MoviePosterActivity moviePosterActivity, View view) {
        a.f42121a.h("movie_poster", "share", (60 & 4) != 0 ? "" : "", (60 & 8) != 0 ? "" : null, (60 & 16) != 0 ? "" : null, (60 & 32) != 0 ? null : null);
        moviePosterActivity.imageShareClick();
    }

    public static final Unit r0(MoviePosterActivity moviePosterActivity, j it) {
        Intrinsics.h(it, "it");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("PostEventPlayRecord: ");
        sb2.append(it);
        moviePosterActivity.s0(it.a());
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void s0(Subject info) {
        String url;
        if (info != null) {
            this.mMovieDetailBean = info;
            ((b) getMViewBinding()).f65729k.setText(info.getTitle());
            ((b) getMViewBinding()).f65728j.setText(info.getDescription());
            AppCompatImageView ivCover = ((b) getMViewBinding()).f65721c;
            Intrinsics.g(ivCover, "ivCover");
            Cover cover = info.getCover();
            if (cover == null || (url = cover.getUrl()) == null) {
                url = "";
            }
            cp.a.c(ivCover, url, 0.0f, 2, null);
            t0(info.getStaffList());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void saveToAlbum(Function2 callback) {
        Cover cover;
        FileHelper fileHelper = FileHelper.f45804a;
        c.a aVar = c.f76783a;
        AppCompatImageView ivCover = ((b) getMViewBinding()).f65721c;
        Intrinsics.g(ivCover, "ivCover");
        Bitmap bitmapA = aVar.a(ivCover);
        Subject subject = this.mMovieDetailBean;
        fileHelper.r(this, bitmapA, fileHelper.j((subject == null || (cover = subject.getCover()) == null) ? null : cover.getUrl()), callback);
    }

    private final void shareImage(Uri imageUri) {
        try {
            if (getSupportFragmentManager().k0("ImageShareDialog") != null) {
                return;
            }
            ImageShareDialog imageShareDialogA = ImageShareDialog.INSTANCE.a(imageUri);
            FragmentManager supportFragmentManager = getSupportFragmentManager();
            Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
            imageShareDialogA.show(supportFragmentManager, "ImageShareDialog");
        } catch (Exception unused) {
            h.f40484a.k(R$string.share_failed_tips);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void t0(final List staffList) {
        if (staffList == null) {
            return;
        }
        ((b) getMViewBinding()).f65730l.setText(getString(com.transsion.moviedetail.R$string.starring) + "(" + staffList.size() + ")");
        ((b) getMViewBinding()).f65725g.setLayoutManager(new LinearLayoutManager(this, 0, false));
        ((b) getMViewBinding()).f65725g.addItemDecoration(new d(a0.a(8.0f)));
        com.transsion.moviedetail.adapter.a aVar = new com.transsion.moviedetail.adapter.a(staffList);
        aVar.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                MoviePosterActivity.u0(staffList, this, baseQuickAdapter, view, i10);
            }
        });
        ((b) getMViewBinding()).f65725g.setAdapter(aVar);
    }

    public static final void u0(List list, MoviePosterActivity moviePosterActivity, BaseQuickAdapter adapter, View view, int i10) {
        String staffId;
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "<unused var>");
        HashMap map = new HashMap();
        map.put("module_name", "staff");
        map.put(EventConstants.KEY_SOURCE, qi.h.f69682a.h());
        Staff staff = (Staff) CollectionsKt.l0(list, i10);
        if (staff == null || (staffId = staff.getStaffId()) == null) {
            staffId = "";
        }
        map.put("related_staff_id", staffId);
        a.f42121a.i("movie_poster", map);
        Navigator navigatorC = TheRouter.c("/movie/staff");
        Object item = adapter.getItem(i10);
        Intrinsics.f(item, "null cannot be cast to non-null type com.transsion.moviedetailapi.bean.Staff");
        Navigator.x(navigatorC.J("staff", (Staff) item), moviePosterActivity, null, 2, null);
    }

    @Override
    public boolean isStatusDark() {
        return false;
    }

    @Override
    public boolean isTranslucent() {
        return true;
    }

    @Override
    public b getViewBinding() {
        b bVarC = b.c(getLayoutInflater());
        Intrinsics.g(bVarC, "inflate(...)");
        return bVarC;
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b("movie_poster", false, 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MoviePosterActivity.r0(this.f63175a, (j) obj);
            }
        };
        a2 a2VarR = y0.c().r();
        Lifecycle.State state = Lifecycle.State.STARTED;
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = j.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, state, a2VarR, true, function1);
        l0();
        ViewGroup.LayoutParams layoutParams = ((b) getMViewBinding()).f65720b.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams != null) {
            marginLayoutParams.topMargin = com.blankj.utilcode.util.d.c();
            ((b) getMViewBinding()).f65720b.setLayoutParams(marginLayoutParams);
        }
    }
}
