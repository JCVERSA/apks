package com.transsion.playercommon.vishaweb;

import android.graphics.Bitmap;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;

public interface IWebLoadStatusCallback {

    public enum MENU {
        OPEN_B,
        OPEN_F,
        COPY_LINK
    }

    default void A(WebView webView, int i) {
    }

    default void B(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
    }

    default void C(WebView webView, Bitmap bitmap) {
    }

    default void g(WebView webView, String str, Bitmap bitmap) {
    }

    default boolean j(Object obj, int i) {
        return false;
    }

    default void l(WebView webView, String str) {
    }

    default void o(WebView webView, String str) {
    }

    default void onPageFinished(WebView webView, String str) {
    }

    default void x() {
    }

    default void y(MENU menu, String str, String str2) {
    }

    default void z(WebView webView, String str) {
    }
}
