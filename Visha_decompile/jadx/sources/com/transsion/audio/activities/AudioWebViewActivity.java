package com.transsion.audio.activities;

import android.content.ClipboardManager;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.widget.LinearLayout;
import com.lzy.okgo.model.Progress;
import com.transsion.audio.R;
import com.transsion.audio.activities.AudioWebViewActivity;
import com.transsion.playercommon.vishaweb.VishaWebViewActivity;
import defpackage.dy0;
import defpackage.p06;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0003J\u0019\u0010\t\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u000b\u0010\u0003J\u000f\u0010\f\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\f\u0010\u0003J#\u0010\u0011\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J-\u0010\u0017\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J)\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00192\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0014¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0004H\u0002¢\u0006\u0004\b \u0010\u0003R\u0018\u0010$\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0018\u0010(\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010,\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0014\u0010.\u001a\u00020)8\u0002X\u0082D¢\u0006\u0006\n\u0004\b-\u0010+R\u0014\u00102\u001a\u00020/8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00101¨\u00063"}, d2 = {"Lcom/transsion/audio/activities/AudioWebViewActivity;", "Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;", MethodDecl.initName, "()V", "Lzfb;", "initView", "L0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onResume", "onDestroy", "Landroid/webkit/WebView;", "view", "", "url", "onPageFinished", "(Landroid/webkit/WebView;Ljava/lang/String;)V", "Landroid/webkit/WebResourceRequest;", Progress.REQUEST, "Landroid/webkit/WebResourceError;", "error", "B", "(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V", "", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "onActivityResult", "(IILandroid/content/Intent;)V", "M0", "Landroid/widget/LinearLayout;", "b0", "Landroid/widget/LinearLayout;", "rootContainer", "Landroid/view/View;", "c0", "Landroid/view/View;", "floatingLayout", "", "d0", "J", "lastClickTime", "e0", "delayMillis", "Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;", "f0", "Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;", "clipListener", "audio_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AudioWebViewActivity extends VishaWebViewActivity {

    public LinearLayout rootContainer;

    public View floatingLayout;

    public long lastClickTime;

    public final long delayMillis = 200;

    public final ClipboardManager.OnPrimaryClipChangedListener clipListener = new ClipboardManager.OnPrimaryClipChangedListener() {
        @Override
        public final void onPrimaryClipChanged() {
            AudioWebViewActivity.K0(this.a);
        }
    };

    public static final void K0(AudioWebViewActivity audioWebViewActivity) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - audioWebViewActivity.lastClickTime > audioWebViewActivity.delayMillis) {
            audioWebViewActivity.lastClickTime = jCurrentTimeMillis;
            audioWebViewActivity.M0();
            p06.d0("vd_audio_lyrics_google_result_show");
        }
    }

    private final void L0() {
        dy0.addChangedListener(this.clipListener);
    }

    private final void initView() {
        this.rootContainer = (LinearLayout) findViewById(R.id.root_container);
        this.floatingLayout = getLayoutInflater().inflate(R.layout.layout_google_search_lyrics_bottom_operation, (ViewGroup) this.rootContainer, false);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 80;
        LinearLayout linearLayout = this.rootContainer;
        if (linearLayout != null) {
            linearLayout.addView(this.floatingLayout, layoutParams);
        }
        View view = this.floatingLayout;
        if (view != null) {
            view.bringToFront();
        }
    }

    @Override
    public void B(WebView view, WebResourceRequest request, WebResourceError error) {
        View view2;
        super.B(view, request, error);
        if ((error == null || error.getErrorCode() != -1) && (view2 = this.floatingLayout) != null) {
            view2.setVisibility(8);
        }
    }

    public final void M0() {
        if (TextUtils.isEmpty(dy0.b().toString())) {
            return;
        }
        LyricEditActivity.B0(this, "google_search_for_lyrics");
    }

    @Override
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 1242 && resultCode != 0 && resultCode == -1) {
            setResult(-1);
            finish();
        }
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        initView();
        L0();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        dy0.removeChangedListener(this.clipListener);
    }

    @Override
    public void onPageFinished(WebView view, String url) {
        super.onPageFinished(view, url);
        View view2 = this.floatingLayout;
        if (view2 != null) {
            view2.setVisibility(0);
        }
        View view3 = this.floatingLayout;
        if (view3 != null) {
            view3.setOnClickListener(null);
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        p06.d0("vd_audio_lyrics_google_webview_show");
    }
}
