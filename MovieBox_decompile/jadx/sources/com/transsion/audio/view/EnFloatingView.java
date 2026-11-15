package com.transsion.audio.view;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.TranslateAnimation;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.u;
import com.blankj.utilcode.util.Utils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.integration.webp.decoder.WebpDrawable;
import com.bumptech.glide.integration.webp.decoder.WebpDrawableTransformation;
import com.bumptech.glide.load.resource.bitmap.CenterInside;
import com.cloud.hisavana.sdk.common.util.l;
import com.google.android.material.card.MaterialCardView;
import com.therouter.TheRouter;
import com.transsion.audio.R$id;
import com.transsion.audio.R$layout;
import com.transsion.audio.R$mipmap;
import com.transsion.audio.player.AudioPlayer;
import com.transsion.audio.viewmodel.HistoryListManager;
import com.transsion.baselib.db.audio.AudioBean;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.report.k;
import com.transsion.moviedetailapi.DownloadItem;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.bean.DownloadListBean;
import com.transsnet.downloader.manager.p;
import java.util.ArrayList;
import java.util.List;
import zg.h;

public class EnFloatingView extends FloatingMagnetView implements View.OnClickListener {

    private final ki.d f41804h;

    private List f41805i;

    private int f41806j;

    private f f41807k;

    String f41808l;

    private Boolean f41809m;

    DownloadListBean f41810n;

    private final ui.a f41811o;

    class a extends ui.a {
        a() {
        }

        @Override
        public void e(DownloadBean downloadBean, String str) {
            if (downloadBean.isVideo()) {
                return;
            }
            AudioBean audioBeanM = com.transsion.audio.view.d.k().m();
            if (TextUtils.equals(audioBeanM.getResourceId(), downloadBean.getResourceId()) && audioBeanM.getUrl() != null && downloadBean.getPath() != null && audioBeanM.getUrl().startsWith("http")) {
                audioBeanM.setUrl(downloadBean.getPath());
                audioBeanM.setChangeToLocalPath(true);
                HistoryListManager.f41836e.b().k(audioBeanM);
            }
        }
    }

    class b implements Animation.AnimationListener {
        b() {
        }

        @Override
        public void onAnimationEnd(Animation animation) {
            EnFloatingView.this.f41804h.f64012c.setVisibility(8);
            EnFloatingView.this.f41809m = Boolean.FALSE;
        }

        @Override
        public void onAnimationRepeat(Animation animation) {
        }

        @Override
        public void onAnimationStart(Animation animation) {
            EnFloatingView.this.f41809m = Boolean.TRUE;
        }
    }

    class c implements Animation.AnimationListener {
        c() {
        }

        @Override
        public void onAnimationEnd(Animation animation) {
        }

        @Override
        public void onAnimationRepeat(Animation animation) {
        }

        @Override
        public void onAnimationStart(Animation animation) {
            EnFloatingView.this.f41804h.f64011b.setVisibility(0);
            EnFloatingView enFloatingView = EnFloatingView.this;
            enFloatingView.setLayoutParams(enFloatingView.q(true));
        }
    }

    class d implements Animation.AnimationListener {
        d() {
        }

        @Override
        public void onAnimationEnd(Animation animation) {
        }

        @Override
        public void onAnimationRepeat(Animation animation) {
        }

        @Override
        public void onAnimationStart(Animation animation) {
            EnFloatingView.this.f41804h.f64012c.setVisibility(0);
        }
    }

    class e implements Animation.AnimationListener {
        e() {
        }

        @Override
        public void onAnimationEnd(Animation animation) {
            EnFloatingView.this.f41804h.f64011b.setVisibility(8);
            EnFloatingView enFloatingView = EnFloatingView.this;
            enFloatingView.setLayoutParams(enFloatingView.q(false));
            EnFloatingView.this.f41809m = Boolean.FALSE;
        }

        @Override
        public void onAnimationRepeat(Animation animation) {
        }

        @Override
        public void onAnimationStart(Animation animation) {
            EnFloatingView.this.f41809m = Boolean.TRUE;
        }
    }

    interface f {
        void a(ViewGroup viewGroup);

        void b(ViewGroup viewGroup);
    }

    public EnFloatingView(@NonNull Context context) {
        this(context, R$layout.new_en_floating_view);
    }

    private void A() {
        if (this.f41804h == null) {
            return;
        }
        CenterInside centerInside = new CenterInside();
        Glide.with(getContext().getApplicationContext()).load(Integer.valueOf(R$mipmap.libui_audio_playing_2)).optionalTransform(centerInside).optionalTransform(WebpDrawable.class, new WebpDrawableTransformation(centerInside)).into(this.f41804h.f64016g);
        this.f41804h.f64017h.setImageResource(R$mipmap.ic_audio_ctl_play);
    }

    private void o() {
        if (this.f41804h == null) {
            return;
        }
        AudioPlayer.a aVar = AudioPlayer.f41764i;
        if (aVar.a().J()) {
            aVar.a().T();
            this.f41804h.f64017h.setImageResource(R$mipmap.ic_audio_ctl_pause);
            return;
        }
        AudioBean audioBeanM = com.transsion.audio.view.d.k().m();
        if (audioBeanM.getIsChangeToLocalPath()) {
            audioBeanM.setChangeToLocalPath(false);
            aVar.a().L(audioBeanM);
        } else {
            aVar.a().K();
        }
        this.f41804h.f64017h.setImageResource(R$mipmap.ic_audio_ctl_play);
    }

    private int p() {
        return (int) TypedValue.applyDimension(1, 80.0f, Resources.getSystem().getDisplayMetrics());
    }

    public FrameLayout.LayoutParams q(boolean z10) {
        FrameLayout.LayoutParams layoutParams = z10 ? new FrameLayout.LayoutParams(-1, -2) : new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_BOTTOM_START;
        layoutParams.setMargins(0, layoutParams.topMargin, layoutParams.rightMargin, p());
        return layoutParams;
    }

    private void r() {
        HistoryListManager.f41836e.b().r();
    }

    private void s() {
        ki.d dVar = this.f41804h;
        if (dVar != null) {
            dVar.f64017h.setOnClickListener(this);
            this.f41804h.f64015f.setOnClickListener(this);
            this.f41804h.f64014e.setOnClickListener(this);
            this.f41804h.f64018i.setOnClickListener(this);
            this.f41804h.f64012c.setOnClickListener(this);
        }
        p.f57282a.a(Utils.a()).g(this.f41811o);
    }

    public void t(List list) {
        if (list.isEmpty()) {
            return;
        }
        this.f41805i = list;
        this.f41806j = 0;
        this.f41804h.f64015f.setImageResource(list.size() + (-1) > this.f41806j ? R$mipmap.ic_audio_next_enable : R$mipmap.ic_audio_next_disable);
    }

    public void u(DownloadListBean downloadListBean) {
        if (downloadListBean == null || downloadListBean.getItems() == null || downloadListBean.getItems().size() <= 0) {
            return;
        }
        this.f41810n = downloadListBean;
    }

    private void v() {
        ki.d dVar = this.f41804h;
        if (dVar == null) {
            return;
        }
        dVar.f64017h.setImageResource(R$mipmap.ic_audio_ctl_pause);
        this.f41804h.f64016g.setImageResource(R$mipmap.ic_audio_right);
    }

    private void w() {
        DownloadListBean downloadListBean;
        AudioPlayer.f41764i.a().T();
        AudioBean audioBeanM = com.transsion.audio.view.d.k().m();
        if (audioBeanM == null || TextUtils.isEmpty(audioBeanM.getSubjectId()) || (downloadListBean = this.f41810n) == null || downloadListBean.getItems().isEmpty()) {
            int size = this.f41805i.size() - 1;
            int i10 = this.f41806j;
            if (size > i10) {
                List list = this.f41805i;
                int i11 = i10 + 1;
                this.f41806j = i11;
                AudioBean audioBean = (AudioBean) list.get(i11);
                if (audioBean != null) {
                    ((ep.a) TheRouter.d(ep.a.class, new Object[0])).d(audioBean, true);
                    return;
                }
                return;
            }
            return;
        }
        List<DownloadItem> items = this.f41810n.getItems();
        int i12 = 0;
        while (true) {
            if (i12 >= items.size()) {
                i12 = -1;
                break;
            } else if (TextUtils.equals(audioBeanM.getPostId(), items.get(i12).getPostId())) {
                break;
            } else {
                i12++;
            }
        }
        if (i12 == -1 || i12 >= items.size() - 2) {
            return;
        }
        DownloadItem downloadItem = items.get(i12 + 1);
        String url = downloadItem.getUrl();
        String url2 = this.f41810n.getCover().getUrl();
        if (TextUtils.isEmpty(url)) {
            url = "";
        }
        ((ep.a) TheRouter.d(ep.a.class, new Object[0])).d(new AudioBean(url, url2, 0L, downloadItem.getSize(), downloadItem.getUrl(), downloadItem.getName(), "", 0, 0L, 0L, "", "", downloadItem.getResourceId(), downloadItem.getPostId(), this.f41810n.getSubjectId(), this.f41810n.getGroupId(), 0, "", downloadItem.getSe(), downloadItem.getEp()), true);
    }

    private void x() {
        f fVar = this.f41807k;
        if (fVar != null) {
            fVar.a(this);
        }
        AudioPlayer.f41764i.a().q();
        p.f57282a.a(Utils.a()).k(this.f41811o);
    }

    private void y(boolean z10) {
        String str;
        AudioBean audioBeanM = com.transsion.audio.view.d.k().m();
        if (audioBeanM == null || this.f41804h == null) {
            return;
        }
        try {
            String title = audioBeanM.getTitle();
            if (TextUtils.isEmpty(title)) {
                title = audioBeanM.getDesc();
            }
            this.f41804h.f64020k.setText(title);
            Long readProcess = audioBeanM.getReadProcess();
            Long duration = audioBeanM.getDuration();
            if (readProcess != null && duration != null) {
                if (z10) {
                    str = "00:00/00:00";
                } else {
                    str = mi.a.a(readProcess.longValue()) + "/" + mi.a.a(duration.longValue());
                }
                this.f41804h.f64021l.setText(str);
            }
        } catch (Exception unused) {
        }
    }

    private void z() {
        f fVar = this.f41807k;
        if (fVar != null) {
            fVar.b(this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void attach(Context context) {
        if (this.f41804h == null) {
            return;
        }
        HistoryListManager.a aVar = HistoryListManager.f41836e;
        aVar.b().p().j((u) context, new c0() {
            @Override
            public final void onChanged(Object obj) {
                this.f41824a.t((List) obj);
            }
        });
        aVar.b().v().j((u) getContext(), new c0() {
            @Override
            public final void onChanged(Object obj) {
                this.f41825a.u((DownloadListBean) obj);
            }
        });
        aVar.b().r();
    }

    @Override
    public void expanded() {
        ki.d dVar = this.f41804h;
        if (dVar == null) {
            return;
        }
        dVar.f64012c.setVisibility(8);
        this.f41804h.f64011b.setVisibility(0);
        setLayoutParams(q(true));
    }

    public void expandedAnimation() {
        if (this.f41804h == null || this.f41809m.booleanValue()) {
            return;
        }
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(300L);
        alphaAnimation.setAnimationListener(new b());
        this.f41804h.f64012c.setAnimation(alphaAnimation);
        TranslateAnimation translateAnimation = new TranslateAnimation(-h.f76787a.e(getContext()), 0.0f, 0.0f, 0.0f);
        translateAnimation.setAnimationListener(new c());
        translateAnimation.setDuration(300L);
        this.f41804h.f64011b.startAnimation(translateAnimation);
        AnimationSet animationSet = new AnimationSet(true);
        animationSet.addAnimation(alphaAnimation);
        animationSet.addAnimation(translateAnimation);
        animationSet.startNow();
    }

    @Override
    public boolean isPackUp() {
        ki.d dVar = this.f41804h;
        return dVar != null && dVar.f64011b.getVisibility() == 8;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override
    public void onClick(View view) {
        if (view.getId() == R$id.iv_play) {
            o();
            return;
        }
        if (view.getId() == R$id.iv_next) {
            w();
            return;
        }
        if (view.getId() == R$id.iv_history) {
            z();
        } else if (view.getId() == R$id.iv_remove) {
            x();
        } else if (view.getId() == R$id.clPackUp) {
            expandedAnimation();
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override
    public void onProgress(int i10) {
        ki.d dVar = this.f41804h;
        if (dVar == null) {
            return;
        }
        dVar.f64019j.setProgress(i10);
        y(false);
    }

    @Override
    public void onSlideTheLeft() {
        packUpAnimation();
    }

    @Override
    public void onStateChanged(int i10) {
        if (i10 == 3) {
            A();
            return;
        }
        if (i10 == 4 || i10 == 5) {
            v();
        } else {
            if (i10 != 6) {
                return;
            }
            v();
            w();
        }
    }

    @Override
    public void onViewClick() {
        AudioBean audioBeanM;
        Activity activityO = k.f42210a.o();
        if (activityO == null || activityO.getClass().getSimpleName().contains("PostDetailActivity") || (audioBeanM = com.transsion.audio.view.d.k().m()) == null) {
            return;
        }
        if (TextUtils.isEmpty(audioBeanM.getPostId())) {
            fh.b.f60176a.e("This page is unavailable");
        } else {
            TheRouter.c("/post/detail").K(WebConstants.PAGE_FROM, "audio_list").K("id", audioBeanM.getPostId()).K("media_type", MediaType.AUDIO.getValue()).z("from_comment", false).r(getContext());
        }
    }

    @Override
    public void packUp() {
        ki.d dVar = this.f41804h;
        if (dVar == null) {
            return;
        }
        dVar.f64012c.setVisibility(0);
        this.f41804h.f64011b.setVisibility(8);
        setLayoutParams(q(false));
    }

    @Override
    public void packUpAnimation() {
        ki.d dVar = this.f41804h;
        if (dVar == null || dVar.f64011b.getVisibility() == 8 || this.f41809m.booleanValue() || com.transsion.audio.view.d.k().o().booleanValue()) {
            return;
        }
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(300L);
        alphaAnimation.setAnimationListener(new d());
        this.f41804h.f64012c.setAnimation(alphaAnimation);
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, -h.f76787a.e(getContext()), 0.0f, 0.0f);
        translateAnimation.setAnimationListener(new e());
        translateAnimation.setDuration(300L);
        this.f41804h.f64011b.startAnimation(translateAnimation);
        AnimationSet animationSet = new AnimationSet(true);
        animationSet.addAnimation(alphaAnimation);
        animationSet.addAnimation(translateAnimation);
        animationSet.startNow();
    }

    @Override
    public void prepare() {
        AudioBean audioBeanM = com.transsion.audio.view.d.k().m();
        if (audioBeanM == null || this.f41804h == null) {
            return;
        }
        this.f41808l = audioBeanM.getCover();
        Long readProcess = audioBeanM.getReadProcess();
        Long duration = audioBeanM.getDuration();
        if (readProcess == null || duration == null) {
            return;
        }
        if (duration.longValue() <= 0) {
            duration = 1L;
        }
        this.f41804h.f64019j.setProgress(l.a((readProcess.longValue() / duration.longValue()) * 100));
        this.f41804h.f64015f.setImageResource(this.f41805i.size() - 1 > this.f41806j ? R$mipmap.ic_audio_next_enable : R$mipmap.ic_audio_next_disable);
        y(true);
    }

    @Override
    public void setOnOptionListener(f fVar) {
        this.f41807k = fVar;
    }

    public EnFloatingView(@NonNull Context context, int i10) {
        super(context, null);
        this.f41805i = new ArrayList();
        this.f41806j = 0;
        this.f41809m = Boolean.FALSE;
        this.f41810n = null;
        this.f41811o = new a();
        View.inflate(context, i10, this);
        this.f41804h = ki.d.a((ConstraintLayout) findViewById(R$id.clRoot));
        r();
        s();
        setLayoutParams(q(true));
    }
}
