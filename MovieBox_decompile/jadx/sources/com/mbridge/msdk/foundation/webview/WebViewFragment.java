package com.mbridge.msdk.foundation.webview;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.foundation.fragment.BaseFragment;
import com.mbridge.msdk.foundation.tools.s0;

public class WebViewFragment extends BaseFragment {

    class a implements BrowserView.e {
        a() {
        }

        @Override
        public void a(WebView webView, int i10, String str, String str2) {
        }

        @Override
        public boolean b(WebView webView, String str) {
            return false;
        }

        @Override
        public void c(WebView webView, String str) {
        }

        @Override
        public void a(WebView webView, String str) {
        }

        @Override
        public void a() {
            WebViewFragment.this.getActivity().finish();
        }

        @Override
        public void a(WebView webView, String str, Bitmap bitmap) {
            if (s0.a.b(str) && s0.a.a(WebViewFragment.this.getActivity().getApplicationContext(), str, null)) {
                WebViewFragment.this.getActivity().finish();
            }
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        BrowserView browserView = new BrowserView(getActivity());
        browserView.loadUrl(getActivity().getIntent().getExtras().getString(NotificationCompat.CATEGORY_MESSAGE));
        browserView.setListener(new a());
        return browserView;
    }
}
