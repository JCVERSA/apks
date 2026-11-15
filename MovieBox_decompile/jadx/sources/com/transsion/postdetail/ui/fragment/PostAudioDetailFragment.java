package com.transsion.postdetail.ui.fragment;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentActivity;
import com.google.android.material.appbar.AppBarLayout;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.therouter.TheRouter;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$mipmap;
import com.transsion.baselib.db.audio.AudioBean;
import com.transsion.moviedetailapi.bean.Audio;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Group;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.player.orplayer.PlayError;
import com.transsion.postdetail.R$dimen;
import com.transsion.postdetail.R$drawable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.ref.WeakReference;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\b\u0018\u0000 <2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001=B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J#\u0010\u000b\u001a\u00020\n2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\u0005J\u0017\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0012\u0010\u0005J\u000f\u0010\u0013\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0013\u0010\u0005J\u000f\u0010\u0014\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0014\u0010\u0005J\u000f\u0010\u0015\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0017\u0010\u0005J\u000f\u0010\u0018\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0018\u0010\u0005J\u000f\u0010\u0019\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0019\u0010\u0005J\u000f\u0010\u001a\u001a\u00020\nH\u0016¢\u0006\u0004\b\u001a\u0010\u0005J!\u0010\u001d\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0019\u0010\u001f\u001a\u00020\n2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b\u001f\u0010 J\u0019\u0010!\u001a\u00020\n2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b!\u0010 J\u0019\u0010\"\u001a\u00020\n2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b\"\u0010 J\u000f\u0010#\u001a\u00020\nH\u0016¢\u0006\u0004\b#\u0010\u0005J\r\u0010$\u001a\u00020\n¢\u0006\u0004\b$\u0010\u0005R\u0018\u0010'\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010*\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u001d\u00100\u001a\u0004\u0018\u00010+8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/R\u001d\u00105\u001a\u0004\u0018\u0001018BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b2\u0010-\u001a\u0004\b3\u00104R\u0016\u00109\u001a\u0002068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108R\u0016\u0010;\u001a\u0002068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u00108¨\u0006>"}, d2 = {"Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;", "Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;", "Lcom/transsion/player/orplayer/e;", "Lep/b$a;", "<init>", "()V", "", "id", "Lcom/transsion/baselib/db/audio/AudioBean;", "audioBean", "", "q1", "(Ljava/lang/String;Lcom/transsion/baselib/db/audio/AudioBean;)V", "r1", "", NotificationCompat.CATEGORY_PROGRESS, "s1", "(J)V", "l1", "n1", "m1", "getPageName", "()Ljava/lang/String;", "G0", "initAudioListener", "F0", "onDestroy", "Lgn/e;", "mediaSource", "onProgress", "(JLgn/e;)V", "onVideoStart", "(Lgn/e;)V", "onVideoPause", "onCompletion", "onRemove", "p1", CampaignEx.JSON_KEY_AD_K, "Lcom/transsion/baselib/db/audio/AudioBean;", "mAudioBean", "l", "J", "realDuration", "Lep/a;", "m", "Lkotlin/Lazy;", "getMAudioApi", "()Lep/a;", "mAudioApi", "Lep/b;", "n", "getMFloatApi", "()Lep/b;", "mFloatApi", "", "o", "Z", "dealWith80", TtmlNode.TAG_P, "dealWithElse", CampaignEx.JSON_KEY_AD_Q, "a", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class PostAudioDetailFragment extends PostDetailCommonFragment implements com.transsion.player.orplayer.e, ep.b.a {

    public static final Companion INSTANCE = new Companion(null);

    private AudioBean mAudioBean;

    private long realDuration;

    private final Lazy mAudioApi = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return PostAudioDetailFragment.mAudioApi_delegate$lambda$0();
        }
    });

    private final Lazy mFloatApi = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return PostAudioDetailFragment.o1();
        }
    });

    private boolean dealWith80;

    private boolean dealWithElse;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final PostAudioDetailFragment a(String str, boolean z10, String str2, PostSubjectItem postSubjectItem) {
            PostAudioDetailFragment postAudioDetailFragment = new PostAudioDetailFragment();
            Bundle bundle = new Bundle();
            bundle.putString("id", str);
            bundle.putBoolean("from_comment", z10);
            bundle.putString("rec_ops", str2);
            postAudioDetailFragment.setArguments(bundle);
            return postAudioDetailFragment;
        }

        private Companion() {
        }
    }

    public static final class b implements SeekBar.OnSeekBarChangeListener {

        final Ref.LongRef f47481a;

        final PostAudioDetailFragment f47482b;

        b(Ref.LongRef longRef, PostAudioDetailFragment postAudioDetailFragment) {
            this.f47481a = longRef;
            this.f47482b = postAudioDetailFragment;
        }

        @Override
        public void onProgressChanged(SeekBar seekBar, int i10, boolean z10) {
            if (z10) {
                this.f47481a.element = (long) (this.f47482b.realDuration * ((long) 1000) * (i10 / 100));
            }
        }

        @Override
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override
        public void onStopTrackingTouch(SeekBar seekBar) {
            ep.a mAudioApi = this.f47482b.getMAudioApi();
            if (mAudioApi != null) {
                mAudioApi.seekTo(this.f47481a.element);
            }
        }
    }

    public final ep.a getMAudioApi() {
        return (ep.a) this.mAudioApi.getValue();
    }

    private final ep.b getMFloatApi() {
        return (ep.b) this.mFloatApi.getValue();
    }

    public static final void j1(float f10, PostAudioDetailFragment postAudioDetailFragment, AppBarLayout appBarLayout, int i10) {
        if (i10 == 0 || Math.abs(i10) >= appBarLayout.getTotalScrollRange()) {
            return;
        }
        if (Math.abs(i10) <= f10) {
            if (postAudioDetailFragment.dealWithElse) {
                return;
            }
            postAudioDetailFragment.dealWithElse = true;
            postAudioDetailFragment.dealWith80 = false;
            postAudioDetailFragment.r1();
            return;
        }
        if (postAudioDetailFragment.dealWith80) {
            return;
        }
        postAudioDetailFragment.dealWith80 = true;
        postAudioDetailFragment.dealWithElse = false;
        wn.m mViewBinding = postAudioDetailFragment.getMViewBinding();
        if (mViewBinding != null) {
            if (ij.y.f62128a.a()) {
                mViewBinding.f74476u.setBackgroundResource(R$color.bg_01);
                mViewBinding.f74470o.setImageResource(R$mipmap.icon_white_back);
                mViewBinding.A.setTextColor(androidx.core.content.b.getColor(postAudioDetailFragment.requireActivity(), R$color.cl38));
            } else {
                mViewBinding.f74476u.setBackgroundResource(R$color.bg_01);
                mViewBinding.f74470o.setImageResource(R$mipmap.libui_ic_back_black);
                mViewBinding.A.setTextColor(androidx.core.content.b.getColor(postAudioDetailFragment.requireActivity(), R$color.text_01));
                mViewBinding.f74476u.setBackgroundResource(R$color.white);
            }
        }
    }

    public static final void k1(PostAudioDetailFragment postAudioDetailFragment, AppCompatImageView appCompatImageView, View view) {
        ep.a mAudioApi;
        ep.a mAudioApi2;
        ep.a mAudioApi3;
        AudioBean audioBean = postAudioDetailFragment.mAudioBean;
        if (audioBean == null) {
            ep.a mAudioApi4 = postAudioDetailFragment.getMAudioApi();
            if (mAudioApi4 != null && mAudioApi4.f()) {
                ep.a mAudioApi5 = postAudioDetailFragment.getMAudioApi();
                if (mAudioApi5 != null) {
                    mAudioApi5.pause();
                }
                appCompatImageView.setImageResource(R$drawable.post_icon_pro_play);
                com.transsion.postdetail.helper.a.s(com.transsion.postdetail.helper.a.f46861a, postAudioDetailFragment.getMPostDetailBean(), postAudioDetailFragment.getPageName(), null, 4, null);
                return;
            }
            ep.a mAudioApi6 = postAudioDetailFragment.getMAudioApi();
            if (mAudioApi6 == null || !mAudioApi6.c()) {
                ep.a mAudioApi7 = postAudioDetailFragment.getMAudioApi();
                if (mAudioApi7 != null) {
                    mAudioApi7.prepare();
                }
            } else {
                AudioBean audioBean2 = postAudioDetailFragment.mAudioBean;
                if (audioBean2 != null && (mAudioApi = postAudioDetailFragment.getMAudioApi()) != null) {
                    ep.a.C0724a.a(mAudioApi, audioBean2, false, 2, null);
                }
            }
            appCompatImageView.setImageResource(R$drawable.post_icon_pro_pause);
            com.transsion.postdetail.helper.a.u(com.transsion.postdetail.helper.a.f46861a, postAudioDetailFragment.getMPostDetailBean(), postAudioDetailFragment.getPageName(), null, 4, null);
            return;
        }
        ep.a mAudioApi8 = postAudioDetailFragment.getMAudioApi();
        boolean zB = mAudioApi8 != null ? mAudioApi8.b(audioBean) : false;
        ep.b mFloatApi = postAudioDetailFragment.getMFloatApi();
        if (mFloatApi != null) {
            mFloatApi.a(new WeakReference(postAudioDetailFragment.getActivity()), audioBean);
        }
        if (!zB) {
            AudioBean audioBean3 = postAudioDetailFragment.mAudioBean;
            if (audioBean3 != null && (mAudioApi2 = postAudioDetailFragment.getMAudioApi()) != null) {
                ep.a.C0724a.a(mAudioApi2, audioBean3, false, 2, null);
            }
            appCompatImageView.setImageResource(R$drawable.post_icon_pro_pause);
            com.transsion.postdetail.helper.a.u(com.transsion.postdetail.helper.a.f46861a, postAudioDetailFragment.getMPostDetailBean(), postAudioDetailFragment.getPageName(), null, 4, null);
            return;
        }
        ep.a mAudioApi9 = postAudioDetailFragment.getMAudioApi();
        if (mAudioApi9 != null && mAudioApi9.f()) {
            ep.a mAudioApi10 = postAudioDetailFragment.getMAudioApi();
            if (mAudioApi10 != null) {
                mAudioApi10.pause();
            }
            appCompatImageView.setImageResource(R$drawable.post_icon_pro_play);
            com.transsion.postdetail.helper.a.s(com.transsion.postdetail.helper.a.f46861a, postAudioDetailFragment.getMPostDetailBean(), postAudioDetailFragment.getPageName(), null, 4, null);
            return;
        }
        ep.a mAudioApi11 = postAudioDetailFragment.getMAudioApi();
        if (mAudioApi11 == null || !mAudioApi11.c()) {
            ep.a mAudioApi12 = postAudioDetailFragment.getMAudioApi();
            if (mAudioApi12 != null) {
                mAudioApi12.prepare();
            }
        } else {
            AudioBean audioBean4 = postAudioDetailFragment.mAudioBean;
            if (audioBean4 != null && (mAudioApi3 = postAudioDetailFragment.getMAudioApi()) != null) {
                ep.a.C0724a.a(mAudioApi3, audioBean4, false, 2, null);
            }
        }
        appCompatImageView.setImageResource(R$drawable.post_icon_pro_pause);
        com.transsion.postdetail.helper.a.u(com.transsion.postdetail.helper.a.f46861a, postAudioDetailFragment.getMPostDetailBean(), postAudioDetailFragment.getPageName(), null, 4, null);
    }

    private final void l1() {
        Media media;
        List<Audio> audio;
        Group group;
        Subject subject;
        Subject subject2;
        PostSubjectItem mPostDetailBean = getMPostDetailBean();
        if (mPostDetailBean == null || (media = mPostDetailBean.getMedia()) == null || (audio = media.getAudio()) == null || audio.size() <= 0) {
            return;
        }
        Audio audio2 = audio.get(0);
        Long duration = audio2.getDuration();
        this.realDuration = duration != null ? duration.longValue() : 0L;
        String url = audio2.getUrl();
        if (url == null) {
            url = "";
        }
        String str = url;
        PostSubjectItem mPostDetailBean2 = getMPostDetailBean();
        String coverUrl$default = mPostDetailBean2 != null ? PostSubjectItem.getCoverUrl$default(mPostDetailBean2, false, 1, null) : null;
        Long duration2 = audio2.getDuration();
        Integer size = audio2.getSize();
        Long lValueOf = size != null ? Long.valueOf(size.intValue()) : null;
        String url2 = audio2.getUrl();
        PostSubjectItem mPostDetailBean3 = getMPostDetailBean();
        String title = mPostDetailBean3 != null ? mPostDetailBean3.getTitle() : null;
        PostSubjectItem mPostDetailBean4 = getMPostDetailBean();
        String content = mPostDetailBean4 != null ? mPostDetailBean4.getContent() : null;
        Integer bitrate = audio2.getBitrate();
        PostSubjectItem mPostDetailBean5 = getMPostDetailBean();
        String rec_ops = mPostDetailBean5 != null ? mPostDetailBean5.getRec_ops() : null;
        PostSubjectItem mPostDetailBean6 = getMPostDetailBean();
        String postId = mPostDetailBean6 != null ? mPostDetailBean6.getPostId() : null;
        PostSubjectItem mPostDetailBean7 = getMPostDetailBean();
        String subjectId = (mPostDetailBean7 == null || (subject2 = mPostDetailBean7.getSubject()) == null) ? null : subject2.getSubjectId();
        PostSubjectItem mPostDetailBean8 = getMPostDetailBean();
        String title2 = (mPostDetailBean8 == null || (subject = mPostDetailBean8.getSubject()) == null) ? null : subject.getTitle();
        PostSubjectItem mPostDetailBean9 = getMPostDetailBean();
        AudioBean audioBean = new AudioBean(str, coverUrl$default, duration2, lValueOf, url2, title, content, bitrate, null, null, null, rec_ops, null, postId, subjectId, (mPostDetailBean9 == null || (group = mPostDetailBean9.getGroup()) == null) ? null : group.getGroupId(), 0, title2, 0, 0, 857856, null);
        this.mAudioBean = audioBean;
        ep.b mFloatApi = getMFloatApi();
        if (mFloatApi != null) {
            mFloatApi.a(new WeakReference(getActivity()), audioBean);
        }
        ep.b mFloatApi2 = getMFloatApi();
        if (mFloatApi2 != null) {
            mFloatApi2.h();
        }
        ep.b mFloatApi3 = getMFloatApi();
        if (mFloatApi3 != null) {
            mFloatApi3.d(this);
        }
        ep.a mAudioApi = getMAudioApi();
        if (mAudioApi != null) {
            ep.a.C0724a.a(mAudioApi, audioBean, false, 2, null);
        }
        com.transsion.postdetail.helper.a.b(com.transsion.postdetail.helper.a.f46861a, getMPostDetailBean(), getPageName(), null, 4, null);
    }

    private final void m1() {
        AppCompatSeekBar appCompatSeekBar;
        Ref.LongRef longRef = new Ref.LongRef();
        wn.m mViewBinding = getMViewBinding();
        if (mViewBinding == null || (appCompatSeekBar = mViewBinding.f74460e) == null) {
            return;
        }
        appCompatSeekBar.setOnSeekBarChangeListener(new b(longRef, this));
    }

    public static final ep.a mAudioApi_delegate$lambda$0() {
        return (ep.a) TheRouter.d(ep.a.class, new Object[0]);
    }

    private final void n1() {
        String thumbnail;
        Integer width;
        String url;
        AppCompatImageView appCompatImageView;
        Media media;
        Subject subject;
        Cover cover;
        Subject subject2;
        Cover cover2;
        Subject subject3;
        Cover cover3;
        Subject subject4;
        Cover cover4;
        AppCompatImageView appCompatImageView2;
        AppCompatImageView appCompatImageView3;
        PostSubjectItem mPostDetailBean = getMPostDetailBean();
        Integer height = null;
        if (TextUtils.isEmpty(mPostDetailBean != null ? PostSubjectItem.getCoverUrl$default(mPostDetailBean, false, 1, null) : null)) {
            wn.m mViewBinding = getMViewBinding();
            if (mViewBinding != null && (appCompatImageView3 = mViewBinding.f74471p) != null) {
                appCompatImageView3.setImageResource(com.transsion.baseui.R$mipmap.default_audio_ic_9_16);
            }
            wn.m mViewBinding2 = getMViewBinding();
            if (mViewBinding2 == null || (appCompatImageView2 = mViewBinding2.f74468m) == null) {
                return;
            }
            uf.c.g(appCompatImageView2);
            return;
        }
        PostSubjectItem mPostDetailBean2 = getMPostDetailBean();
        if (mPostDetailBean2 == null || (media = mPostDetailBean2.getMedia()) == null) {
            thumbnail = "";
            width = 0;
            height = null;
            url = thumbnail;
        } else {
            Cover cover5 = media.getCover();
            url = cover5 != null ? cover5.getUrl() : null;
            Cover cover6 = media.getCover();
            thumbnail = cover6 != null ? cover6.getThumbnail() : null;
            Cover cover7 = media.getCover();
            Integer width2 = cover7 != null ? cover7.getWidth() : null;
            Cover cover8 = media.getCover();
            Integer height2 = cover8 != null ? cover8.getHeight() : null;
            if (TextUtils.isEmpty(url)) {
                PostSubjectItem mPostDetailBean3 = getMPostDetailBean();
                url = (mPostDetailBean3 == null || (subject4 = mPostDetailBean3.getSubject()) == null || (cover4 = subject4.getCover()) == null) ? null : cover4.getUrl();
                PostSubjectItem mPostDetailBean4 = getMPostDetailBean();
                thumbnail = (mPostDetailBean4 == null || (subject3 = mPostDetailBean4.getSubject()) == null || (cover3 = subject3.getCover()) == null) ? null : cover3.getThumbnail();
                PostSubjectItem mPostDetailBean5 = getMPostDetailBean();
                width = (mPostDetailBean5 == null || (subject2 = mPostDetailBean5.getSubject()) == null || (cover2 = subject2.getCover()) == null) ? null : cover2.getWidth();
                PostSubjectItem mPostDetailBean6 = getMPostDetailBean();
                if (mPostDetailBean6 != null && (subject = mPostDetailBean6.getSubject()) != null && (cover = subject.getCover()) != null) {
                    height = cover.getHeight();
                }
            } else {
                height = height2;
                width = width2;
            }
        }
        wn.m mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (appCompatImageView = mViewBinding3.f74471p) == null) {
            return;
        }
        ni.f.a aVar = ni.f.f67269a;
        Context context = appCompatImageView.getContext();
        Intrinsics.g(context, "getContext(...)");
        ni.f.b bVarM = aVar.m(context);
        if (url == null) {
            url = "";
        }
        bVarM.g(url).i(R$color.cl37).m(width != null ? width.intValue() : aVar.c()).c(height != null ? height.intValue() : aVar.c()).l(thumbnail != null ? thumbnail : "").d(appCompatImageView);
    }

    public static final ep.b o1() {
        return (ep.b) TheRouter.d(ep.b.class, new Object[0]);
    }

    private final void q1(String id2, AudioBean audioBean) {
        Intent intent = new Intent();
        intent.putExtra(MimeTypes.BASE_TYPE_AUDIO, audioBean);
        intent.putExtra("id", id2);
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.setResult(-1, intent);
        }
    }

    private final void r1() {
        wn.m mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            mViewBinding.f74470o.setImageResource(R$mipmap.icon_white_back);
            mViewBinding.A.setTextColor(androidx.core.content.b.getColor(requireActivity(), R$color.cl38));
            mViewBinding.f74476u.setBackgroundResource(com.tn.lib.widget.R$drawable.libui_mask_cl45_0p_to_30p);
        }
    }

    private final void s1(long progress) {
        AppCompatImageView appCompatImageView;
        TextView textView;
        AppCompatSeekBar appCompatSeekBar;
        AppCompatSeekBar appCompatSeekBar2;
        long j10 = this.realDuration * ((long) 1000);
        int i10 = (int) ((progress / j10) * 100);
        wn.m mViewBinding = getMViewBinding();
        if (mViewBinding != null && (appCompatSeekBar2 = mViewBinding.f74460e) != null) {
            appCompatSeekBar2.setProgress(i10);
        }
        wn.m mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (appCompatSeekBar = mViewBinding2.f74460e) != null) {
            appCompatSeekBar.setProgress(i10);
        }
        String str = com.transsion.postdetail.util.m.d(progress) + "/" + com.transsion.postdetail.util.m.d(j10);
        wn.m mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (textView = mViewBinding3.f74457b) != null) {
            textView.setText(str);
        }
        wn.m mViewBinding4 = getMViewBinding();
        if (mViewBinding4 == null || (appCompatImageView = mViewBinding4.f74459d) == null) {
            return;
        }
        appCompatImageView.setImageResource(R$drawable.post_icon_pro_pause);
    }

    @Override
    public void F0() {
        View view;
        Media media;
        List<Audio> audio;
        AppCompatImageView appCompatImageView;
        wn.m mViewBinding = getMViewBinding();
        if (mViewBinding != null && (appCompatImageView = mViewBinding.f74471p) != null) {
            uf.c.k(appCompatImageView);
        }
        PostSubjectItem mPostDetailBean = getMPostDetailBean();
        if (mPostDetailBean != null && (media = mPostDetailBean.getMedia()) != null && (audio = media.getAudio()) != null && (!audio.isEmpty())) {
            l1();
            n1();
        }
        wn.m mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (view = mViewBinding2.C) == null) {
            return;
        }
        view.setVisibility(8);
    }

    @Override
    public void G0() {
        AppBarLayout appBarLayout;
        androidx.constraintlayout.widget.Group group;
        wn.m mViewBinding = getMViewBinding();
        if (mViewBinding != null && (group = mViewBinding.f74467l) != null) {
            group.setVisibility(0);
        }
        r1();
        final float dimension = getResources().getDimension(R$dimen.post_surface_height);
        wn.m mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (appBarLayout = mViewBinding2.f74461f) == null) {
            return;
        }
        appBarLayout.addOnOffsetChangedListener(new AppBarLayout.g() {
            @Override
            public final void onOffsetChanged(AppBarLayout appBarLayout2, int i10) {
                PostAudioDetailFragment.j1(dimension, this, appBarLayout2, i10);
            }
        });
    }

    @Override
    public void canNonSubscriberPlay(boolean z10, int i10, int i11, qn.d dVar) {
        com.transsion.player.orplayer.e.a.a(this, z10, i10, i11, dVar);
    }

    @Override
    public String getPageName() {
        return "postdetail_audio";
    }

    @Override
    public void initAudioListener() {
        final AppCompatImageView appCompatImageView;
        wn.m mViewBinding = getMViewBinding();
        if (mViewBinding != null && (appCompatImageView = mViewBinding.f74459d) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    PostAudioDetailFragment.k1(this.f47588a, appCompatImageView, view);
                }
            });
        }
        ep.a mAudioApi = getMAudioApi();
        if (mAudioApi != null) {
            mAudioApi.addPlayerListener(this);
        }
        m1();
    }

    @Override
    public void initPlayer() {
        com.transsion.player.orplayer.e.a.b(this);
    }

    @Override
    public void onAliyunDecodeErrorChangeSoftwareDecoder(gn.e eVar) {
        com.transsion.player.orplayer.e.a.c(this, eVar);
    }

    @Override
    public void onBufferedPosition(long j10, gn.e eVar) {
        com.transsion.player.orplayer.e.a.d(this, j10, eVar);
    }

    @Override
    public void onCompletion(gn.e mediaSource) {
        boolean zC;
        wn.m mViewBinding;
        AppCompatImageView appCompatImageView;
        com.transsion.player.orplayer.e.a.e(this, mediaSource);
        AudioBean audioBean = this.mAudioBean;
        if (audioBean != null) {
            ep.a mAudioApi = getMAudioApi();
            zC = Intrinsics.c(mAudioApi != null ? Boolean.valueOf(mAudioApi.b(audioBean)) : null, Boolean.TRUE);
        } else {
            zC = false;
        }
        if (!zC || (mViewBinding = getMViewBinding()) == null || (appCompatImageView = mViewBinding.f74459d) == null) {
            return;
        }
        appCompatImageView.setImageResource(R$drawable.post_icon_play);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        ep.a mAudioApi = getMAudioApi();
        if (mAudioApi != null) {
            mAudioApi.removePlayerListener(this);
        }
        ep.b mFloatApi = getMFloatApi();
        if (mFloatApi != null) {
            mFloatApi.j(this);
        }
    }

    @Override
    public void onFocusChange(boolean z10) {
        com.transsion.player.orplayer.e.a.g(this, z10);
    }

    @Override
    public void onIsPlayingChanged(boolean z10) {
        com.transsion.player.orplayer.e.a.h(this, z10);
    }

    @Override
    public void onLoadingBegin(gn.e eVar) {
        com.transsion.player.orplayer.e.a.i(this, eVar);
    }

    @Override
    public void onLoadingEnd(gn.e eVar) {
        com.transsion.player.orplayer.e.a.k(this, eVar);
    }

    @Override
    public void onLoadingProgress(int i10, float f10, gn.e eVar) {
        com.transsion.player.orplayer.e.a.m(this, i10, f10, eVar);
    }

    @Override
    public void onLoopingStart() {
        com.transsion.player.orplayer.e.a.o(this);
    }

    @Override
    public void onMediaItemTransition(String str) {
        com.transsion.player.orplayer.e.a.p(this, str);
    }

    @Override
    public void onPlayError(PlayError playError, gn.e eVar) {
        com.transsion.player.orplayer.e.a.q(this, playError, eVar);
    }

    @Override
    public void onPlayerRelease(gn.e eVar) {
        com.transsion.player.orplayer.e.a.t(this, eVar);
    }

    @Override
    public void onPlayerReset() {
        com.transsion.player.orplayer.e.a.v(this);
    }

    @Override
    public void onPrepare(gn.e eVar) {
        com.transsion.player.orplayer.e.a.w(this, eVar);
    }

    @Override
    public void onProgress(long progress, gn.e mediaSource) {
        boolean zC;
        AppCompatImageView appCompatImageView;
        com.transsion.player.orplayer.e.a.y(this, progress, mediaSource);
        AudioBean audioBean = this.mAudioBean;
        if (audioBean != null) {
            ep.a mAudioApi = getMAudioApi();
            zC = Intrinsics.c(mAudioApi != null ? Boolean.valueOf(mAudioApi.b(audioBean)) : null, Boolean.TRUE);
        } else {
            zC = false;
        }
        if (zC) {
            s1(progress);
            return;
        }
        wn.m mViewBinding = getMViewBinding();
        if (mViewBinding == null || (appCompatImageView = mViewBinding.f74459d) == null) {
            return;
        }
        appCompatImageView.setImageResource(R$drawable.post_icon_play);
    }

    @Override
    public void onRemove() {
        AppCompatImageView appCompatImageView;
        wn.m mViewBinding = getMViewBinding();
        if (mViewBinding == null || (appCompatImageView = mViewBinding.f74459d) == null) {
            return;
        }
        appCompatImageView.setImageResource(R$drawable.post_icon_pro_play);
    }

    @Override
    public void onRenderFirstFrame() {
        com.transsion.player.orplayer.e.a.A(this);
    }

    @Override
    public void onSetDataSource() {
        com.transsion.player.orplayer.e.a.B(this);
    }

    @Override
    public void onTracksAudioBitrateChange(int i10) {
        com.transsion.player.orplayer.e.a.C(this, i10);
    }

    @Override
    public void onTracksChange(qn.c cVar) {
        com.transsion.player.orplayer.e.a.D(this, cVar);
    }

    @Override
    public void onTracksVideoBitrateChange(int i10) {
        com.transsion.player.orplayer.e.a.E(this, i10);
    }

    @Override
    public void onVideoPause(gn.e mediaSource) {
        boolean zC;
        wn.m mViewBinding;
        AppCompatImageView appCompatImageView;
        com.transsion.player.orplayer.e.a.F(this, mediaSource);
        AudioBean audioBean = this.mAudioBean;
        if (audioBean != null) {
            ep.a mAudioApi = getMAudioApi();
            zC = Intrinsics.c(mAudioApi != null ? Boolean.valueOf(mAudioApi.b(audioBean)) : null, Boolean.TRUE);
        } else {
            zC = false;
        }
        if (!zC || (mViewBinding = getMViewBinding()) == null || (appCompatImageView = mViewBinding.f74459d) == null) {
            return;
        }
        appCompatImageView.setImageResource(R$drawable.post_icon_play);
    }

    @Override
    public void onVideoSizeChanged(int i10, int i11) {
        com.transsion.player.orplayer.e.a.H(this, i10, i11);
    }

    @Override
    public void onVideoStart(gn.e mediaSource) {
        boolean zC;
        wn.m mViewBinding;
        AppCompatImageView appCompatImageView;
        com.transsion.player.orplayer.e.a.I(this, mediaSource);
        AudioBean audioBean = this.mAudioBean;
        if (audioBean != null) {
            ep.a mAudioApi = getMAudioApi();
            zC = Intrinsics.c(mAudioApi != null ? Boolean.valueOf(mAudioApi.b(audioBean)) : null, Boolean.TRUE);
        } else {
            zC = false;
        }
        if (!zC || (mViewBinding = getMViewBinding()) == null || (appCompatImageView = mViewBinding.f74459d) == null) {
            return;
        }
        appCompatImageView.setImageResource(R$drawable.post_icon_pro_pause);
    }

    public final void p1() {
        ep.a mAudioApi = getMAudioApi();
        if (mAudioApi == null || !mAudioApi.f()) {
            return;
        }
        q1(null, this.mAudioBean);
    }

    @Override
    public void setOnSeekCompleteListener() {
        com.transsion.player.orplayer.e.a.K(this);
    }
}
