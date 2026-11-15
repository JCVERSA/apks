package com.transsion.cloud.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.webkit.WebView;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.playercommon.vishaweb.VishaWebViewActivity;
import com.transsion.vishaplayersdk.vkPlayer.VkConstant;
import defpackage.f5;
import defpackage.ge;
import defpackage.j1a;
import defpackage.se;
import defpackage.w41;
import defpackage.w6c;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\u0018\u0000 \u00132\u00020\u0001:\u0001\u0014B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ#\u0010\r\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u000f\u001a\u00020\u00062\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0014¢\u0006\u0004\b\u000f\u0010\u0010J\u0019\u0010\u0011\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0014¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0015"}, d2 = {"Lcom/transsion/cloud/activity/CloudPaymentWebViewActivity;", "Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;", MethodDecl.initName, "()V", "Landroid/os/Bundle;", "savedInstanceState", "Lzfb;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/webkit/WebView;", "view", "", "url", "onPageFinished", "(Landroid/webkit/WebView;Ljava/lang/String;)V", "v0", "(Ljava/lang/String;)V", "F0", "(Ljava/lang/String;)Ljava/lang/String;", "b0", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "clouddrive_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CloudPaymentWebViewActivity extends VishaWebViewActivity {

    public static final Companion INSTANCE = new Companion(null);

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a() {
            return (ge.e() && w6c.d(se.a(), "environment_mode", 0) == 0) ? "http://test-cloud-disk.palm.tech" : "https://cloud-disk.palm.tech";
        }

        public final void b(Context context, String str) {
            Intent intent = new Intent(context, (Class<?>) CloudPaymentWebViewActivity.class);
            intent.putExtra(VkConstant.URL, a() + "/cloud-space");
            intent.putExtra("title", str);
            f5.c(intent, context);
        }

        public Companion() {
        }
    }

    @Override
    public String F0(String url) {
        return url == null ? "" : url;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.Z = false;
    }

    @Override
    public void onPageFinished(WebView view, String url) {
        super.onPageFinished(view, url);
        if (url != null) {
            this.Z = j1a.X(url, "pay.html", false, 2, null) || j1a.X(url, "service.html", false, 2, null);
        }
    }

    @Override
    public void v0(String url) {
        this.N = w41.l.a(url);
    }
}
