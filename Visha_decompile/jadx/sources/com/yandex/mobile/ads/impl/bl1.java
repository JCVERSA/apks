package com.yandex.mobile.ads.impl;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Base64;
import defpackage.c74;
import defpackage.g1a;
import defpackage.j1a;
import defpackage.y45;
import defpackage.yi5;
import kotlin.Result;
import kotlin.jvm.internal.Lambda;

public final class bl1 {
    private static final yi5 a = kotlin.b.a(a.b);

    public static final class a extends Lambda implements c74 {
        public static final a b = new a();

        public a() {
            super(0);
        }

        @Override
        public final Object invoke() {
            return Base64.decode("/9j/2wBDAAUDBAQEAwUEBAQFBQUGBwwIBwcHBw8LCwkMEQ8SEhEPERETFhwXExQaFRERGCEYGh0dHx8fExciJCIeJBweHx7/2wBDAQUFBQcGBw4ICA4eFBEUHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh7/xAAfAAABBQEBAQEBAQAAAAAAAAAAAQIDBAUGBwgJCgv/xAC1EAACAQMDAgQDBQUEBAAAAX0BAgMABBEFEiExQQYTUWEHInEUMoGRoQgjQrHBFVLR8CQzYnKCCQoWFxgZGiUmJygpKjQ1Njc4OTpDREVGR0hJSlNUVVZXWFlaY2RlZmdoaWpzdHV2d3h5eoOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4eLj5OXm5+jp6vHy8/T19vf4+fr/xAAfAQADAQEBAQEBAQEBAAAAAAAAAQIDBAUGBwgJCgv/xAC1EQACAQIEBAMEBwUEBAABAncAAQIDEQQFITEGEkFRB2FxEyIygQgUQpGhscEJIzNS8BVictEKFiQ04SXxFxgZGiYnKCkqNTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqCg4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2dri4+Tl5ufo6ery8/T19vf4+fo=", 0);
        }
    }

    public static Bitmap a(String str) {
        Object objM279constructorimpl;
        y45.j(str, "previewBase64");
        try {
            Result.Companion companion = Result.INSTANCE;
            byte[] bArrB = b(str);
            objM279constructorimpl = Result.m279constructorimpl(!(bArrB.length == 0) ? BitmapFactory.decodeByteArray(bArrB, 0, bArrB.length) : null);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
        }
        return (Bitmap) (Result.m285isFailureimpl(objM279constructorimpl) ? null : objM279constructorimpl);
    }

    private static byte[] b(String str) {
        byte[] bArrDecode = Base64.decode(j1a.F0(str, "data:image/png;base64,"), 0);
        if (!g1a.R(str, "data:image/png;base64,", false, 2, null)) {
            y45.g(bArrDecode);
            if (bArrDecode.length == 0) {
                bArrDecode = new byte[0];
            } else {
                byte[] bArr = (byte[]) a.getValue();
                y45.i(bArr, "access$getPreviewHeader(...)");
                bArrDecode = defpackage.fi.z(bArr, bArrDecode);
            }
        }
        y45.g(bArrDecode);
        return bArrDecode;
    }
}
