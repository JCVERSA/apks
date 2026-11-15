package com.yalantis.ucrop;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;

public class a {
    public static final Bitmap.CompressFormat c = Bitmap.CompressFormat.JPEG;
    public Intent a = new Intent();
    public Bundle b;

    public static class C0277a {
        public final Bundle a = new Bundle();

        public Bundle a() {
            return this.a;
        }

        public void b(int i, int i2, int i3) {
            this.a.putIntArray("release.AllowedGestures", new int[]{i, i2, i3});
        }

        public void c(Bitmap.CompressFormat compressFormat) {
            this.a.putString("release.CompressionFormatName", compressFormat.name());
        }

        public void d(int i) {
            this.a.putInt("release.CompressionQuality", i);
        }

        public void e(int i) {
            this.a.putInt("release.CropFrameColor", i);
        }

        public void f(boolean z) {
            this.a.putBoolean("release.HideBottomControls", z);
        }

        public void g(boolean z) {
            this.a.putBoolean("release.ShowCropFrame", z);
        }

        public void h(boolean z) {
            this.a.putBoolean("release.ShowCropGrid", z);
        }
    }

    public a(Uri uri, Uri uri2) {
        Bundle bundle = new Bundle();
        this.b = bundle;
        bundle.putParcelable("release.InputUri", uri);
        this.b.putParcelable("release.OutputUri", uri2);
    }

    public static Uri a(Intent intent) {
        return (Uri) intent.getParcelableExtra("release.InputUri");
    }

    public static Uri c(Intent intent) {
        return (Uri) intent.getParcelableExtra("release.OutputUri");
    }

    public static a d(Uri uri, Uri uri2) {
        return new a(uri, uri2);
    }

    public Intent b(Context context) {
        this.a.setClassName(context, "com.transsion.playercommon.ucrop.UCropActivity");
        this.a.setPackage(context.getPackageName());
        this.a.putExtras(this.b);
        return this.a;
    }

    public void e(Activity activity) {
        f(activity, 69);
    }

    public void f(Activity activity, int i) {
        activity.startActivityForResult(b(activity), i);
    }

    public a g(float f, float f2) {
        this.b.putFloat("release.AspectRatioX", f);
        this.b.putFloat("release.AspectRatioY", f2);
        return this;
    }

    public a h(int i, int i2) {
        if (i < 10) {
            i = 10;
        }
        if (i2 < 10) {
            i2 = 10;
        }
        this.b.putInt("release.MaxSizeX", i);
        this.b.putInt("release.MaxSizeY", i2);
        return this;
    }

    public a i(C0277a c0277a) {
        this.b.putAll(c0277a.a());
        return this;
    }
}
