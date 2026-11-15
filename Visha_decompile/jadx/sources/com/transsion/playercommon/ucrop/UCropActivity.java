package com.transsion.playercommon.ucrop;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.AccelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.core.content.ContextCompat;
import androidx.core.view.WindowCompat;
import androidx.transition.AutoTransition;
import androidx.transition.Transition;
import androidx.transition.TransitionManager;
import com.transsion.playercommon.R;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.ucrop.UCropActivity;
import com.transsion.widgetslib.view.LoadingView;
import com.yalantis.ucrop.model.AspectRatio;
import com.yalantis.ucrop.view.GestureCropImageView;
import com.yalantis.ucrop.view.OverlayView;
import com.yalantis.ucrop.view.TransformImageView;
import com.yalantis.ucrop.view.UCropView;
import com.yalantis.ucrop.view.widget.AspectRatioTextView;
import com.yalantis.ucrop.view.widget.HorizontalProgressWheelView;
import defpackage.k29;
import defpackage.mc7;
import defpackage.rb9;
import defpackage.t74;
import defpackage.vb;
import defpackage.ye0;
import defpackage.zf1;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public class UCropActivity extends BaseActivity implements View.OnClickListener {
    public String N;
    public int O;
    public int P;
    public int Q;
    public int R;
    public int S;
    public boolean T;
    public UCropView V;
    public GestureCropImageView W;
    public OverlayView X;
    public ViewGroup Y;
    public ViewGroup Z;
    public ViewGroup a0;
    public ViewGroup b0;
    public ViewGroup c0;
    public ViewGroup d0;
    public TextView f0;
    public TextView g0;
    public View h0;
    public Transition i0;
    public LoadingView m0;
    public boolean U = true;
    public final List e0 = new ArrayList();
    public Bitmap.CompressFormat j0 = com.yalantis.ucrop.a.c;
    public int k0 = 90;
    public int[] l0 = {1, 2, 3};
    public final TransformImageView.b n0 = new a();
    public final View.OnClickListener o0 = new g();

    public class a implements TransformImageView.b {
        public a() {
        }

        @Override
        public void a() {
            UCropActivity.this.V.animate().alpha(1.0f).setDuration(300L).setInterpolator(new AccelerateInterpolator());
            UCropActivity.this.h0.setClickable(false);
            UCropActivity.this.U = false;
            UCropActivity.this.supportInvalidateOptionsMenu();
        }

        @Override
        public void b(Exception exc) {
            UCropActivity.this.O0(exc);
            UCropActivity.this.finish();
        }

        @Override
        public void c(float f) {
            UCropActivity.this.Q0(f);
        }

        @Override
        public void d(float f) {
            UCropActivity.this.K0(f);
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override
        public void onClick(View view) {
            UCropActivity.this.W.setTargetAspectRatio(((AspectRatioTextView) ((ViewGroup) view).getChildAt(0)).getAspectRatio(view.isSelected()));
            UCropActivity.this.W.setImageToWrapCropBounds();
            if (view.isSelected()) {
                return;
            }
            for (ViewGroup viewGroup : UCropActivity.this.e0) {
                viewGroup.setSelected(viewGroup == view);
            }
        }
    }

    public class c implements HorizontalProgressWheelView.a {
        public c() {
        }

        @Override
        public void a(float f, float f2) {
            UCropActivity.this.W.postRotate(f / 42.0f);
        }

        @Override
        public void b() {
            UCropActivity.this.W.setImageToWrapCropBounds();
        }

        @Override
        public void c() {
            UCropActivity.this.W.cancelAllAnimations();
        }
    }

    public class d implements View.OnClickListener {
        public d() {
        }

        @Override
        public void onClick(View view) {
            UCropActivity.this.H0();
        }
    }

    public class e implements View.OnClickListener {
        public e() {
        }

        @Override
        public void onClick(View view) {
            UCropActivity.this.I0(90);
        }
    }

    public class f implements HorizontalProgressWheelView.a {
        public f() {
        }

        @Override
        public void a(float f, float f2) {
            if (f > 0.0f) {
                UCropActivity.this.W.zoomInImage(UCropActivity.this.W.getCurrentScale() + (f * ((UCropActivity.this.W.getMaxScale() - UCropActivity.this.W.getMinScale()) / 15000.0f)));
            } else {
                UCropActivity.this.W.zoomOutImage(UCropActivity.this.W.getCurrentScale() + (f * ((UCropActivity.this.W.getMaxScale() - UCropActivity.this.W.getMinScale()) / 15000.0f)));
            }
        }

        @Override
        public void b() {
            UCropActivity.this.W.setImageToWrapCropBounds();
        }

        @Override
        public void c() {
            UCropActivity.this.W.cancelAllAnimations();
        }
    }

    public class g implements View.OnClickListener {
        public g() {
        }

        @Override
        public void onClick(View view) {
            if (view.isSelected()) {
                return;
            }
            UCropActivity.this.T0(view.getId());
        }
    }

    public class h implements ye0 {
        public h() {
        }

        @Override
        public void a(final Uri uri, int i, int i2, int i3, int i4) {
            if (uri == null || !"file".equals(uri.getScheme())) {
                return;
            }
            mc7.K(this).g(UCropActivity.this.bindToLifecycle()).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return this.b.e(uri, (UCropActivity.h) obj);
                }
            }).M(vb.a()).d0(k29.c()).Z(new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.f((Uri) obj);
                }
            });
        }

        @Override
        public void b(Throwable th) {
            UCropActivity.this.O0(th);
            UCropActivity.this.m0.setVisibility(8);
            UCropActivity.this.finish();
        }

        public final Uri e(Uri uri, h hVar) {
            return UCropActivity.this.D0(uri);
        }

        public final void f(Uri uri) {
            UCropActivity.this.P0(uri);
            UCropActivity.this.m0.setVisibility(8);
            UCropActivity.this.finish();
        }
    }

    static {
        AppCompatDelegate.setCompatVectorFromResourcesEnabled(true);
    }

    private void fitSystemStatusBar() {
        Window window = getWindow();
        if (window == null) {
            return;
        }
        try {
            window.setBackgroundDrawableResource(R.color.black);
            window.clearFlags(201326592);
            window.addFlags(Integer.MIN_VALUE);
            View decorView = window.getDecorView();
            decorView.setSystemUiVisibility(1792);
            window.setNavigationBarContrastEnforced(false);
            window.setStatusBarColor(0);
            window.setNavigationBarColor(0);
            WindowCompat.getInsetsController(window, decorView).setAppearanceLightStatusBars(false);
            WindowCompat.getInsetsController(window, decorView).setAppearanceLightNavigationBars(false);
        } catch (Exception e2) {
            Log.e("UCropActivity", "fitSystemStatusBar " + e2);
        }
    }

    public final void B0() {
        if (this.h0 == null) {
            this.h0 = new View(this);
            this.h0.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            this.h0.setClickable(true);
        }
        ((RelativeLayout) findViewById(com.yalantis.ucrop.R.id.ucrop_photobox)).addView(this.h0);
    }

    public final void C0(int i) {
        TransitionManager.beginDelayedTransition((ViewGroup) findViewById(com.yalantis.ucrop.R.id.ucrop_photobox), this.i0);
        this.a0.findViewById(com.yalantis.ucrop.R.id.text_view_scale).setVisibility(i == com.yalantis.ucrop.R.id.state_scale ? 0 : 8);
        this.Y.findViewById(com.yalantis.ucrop.R.id.text_view_crop).setVisibility(i == com.yalantis.ucrop.R.id.state_aspect_ratio ? 0 : 8);
        this.Z.findViewById(com.yalantis.ucrop.R.id.text_view_rotate).setVisibility(i == com.yalantis.ucrop.R.id.state_rotate ? 0 : 8);
    }

    public final Uri D0(Uri uri) throws IOException {
        File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS), "VishaPlayer/images");
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file.getAbsolutePath(), String.format("%d_%s", Long.valueOf(Calendar.getInstance().getTimeInMillis()), uri.getLastPathSegment()));
        FileInputStream fileInputStream = new FileInputStream(uri.getPath());
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            try {
                FileChannel channel = fileInputStream.getChannel();
                channel.transferTo(0L, channel.size(), fileOutputStream.getChannel());
                fileOutputStream.close();
                fileInputStream.close();
                return Uri.fromFile(file2);
            } catch (Throwable th) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            try {
                fileInputStream.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }

    public void E0() {
        this.h0.setClickable(true);
        this.U = true;
        supportInvalidateOptionsMenu();
        this.m0.setVisibility(0);
        this.W.cropAndSaveImage(this.j0, this.k0, new h());
    }

    public final void F0() {
        UCropView uCropView = (UCropView) findViewById(com.yalantis.ucrop.R.id.ucrop);
        this.V = uCropView;
        this.W = uCropView.getCropImageView();
        this.X = this.V.getOverlayView();
        this.W.setTransformImageListener(this.n0);
        this.m0 = (LoadingView) findViewById(com.yalantis.ucrop.R.id.loading_view);
        int i = com.yalantis.ucrop.R.id.ucrop_frame;
        findViewById(i).setBackgroundColor(this.R);
        if (this.T) {
            return;
        }
        ((RelativeLayout.LayoutParams) findViewById(i).getLayoutParams()).bottomMargin = 0;
        findViewById(i).requestLayout();
    }

    public final void G0(Intent intent) {
        String stringExtra = intent.getStringExtra("release.CompressionFormatName");
        Bitmap.CompressFormat compressFormatValueOf = !TextUtils.isEmpty(stringExtra) ? Bitmap.CompressFormat.valueOf(stringExtra) : null;
        if (compressFormatValueOf == null) {
            compressFormatValueOf = com.yalantis.ucrop.a.c;
        }
        this.j0 = compressFormatValueOf;
        this.k0 = intent.getIntExtra("release.CompressionQuality", 90);
        int[] intArrayExtra = intent.getIntArrayExtra("release.AllowedGestures");
        if (intArrayExtra != null && intArrayExtra.length == 3) {
            this.l0 = intArrayExtra;
        }
        this.W.setMaxBitmapSize(intent.getIntExtra("release.MaxBitmapSize", 0));
        this.W.setMaxScaleMultiplier(intent.getFloatExtra("release.MaxScaleMultiplier", 10.0f));
        this.W.setImageToWrapCropBoundsAnimDuration(intent.getIntExtra("release.ImageToCropBoundsAnimDuration", 500));
        this.X.setFreestyleCropEnabled(intent.getBooleanExtra("release.FreeStyleCrop", false));
        this.X.setDimmedColor(intent.getIntExtra("release.DimmedLayerColor", getResources().getColor(com.yalantis.ucrop.R.color.ucrop_color_default_dimmed)));
        this.X.setCircleDimmedLayer(intent.getBooleanExtra("release.CircleDimmedLayer", false));
        this.X.setShowCropFrame(intent.getBooleanExtra("release.ShowCropFrame", true));
        this.X.setCropFrameColor(intent.getIntExtra("release.CropFrameColor", getResources().getColor(com.yalantis.ucrop.R.color.ucrop_color_default_crop_frame)));
        this.X.setCropFrameStrokeWidth(intent.getIntExtra("release.CropFrameStrokeWidth", getResources().getDimensionPixelSize(com.yalantis.ucrop.R.dimen.ucrop_default_crop_frame_stoke_width)));
        this.X.setShowCropGrid(intent.getBooleanExtra("release.ShowCropGrid", true));
        this.X.setCropGridRowCount(intent.getIntExtra("release.CropGridRowCount", 2));
        this.X.setCropGridColumnCount(intent.getIntExtra("release.CropGridColumnCount", 2));
        this.X.setCropGridColor(intent.getIntExtra("release.CropGridColor", getResources().getColor(com.yalantis.ucrop.R.color.ucrop_color_default_crop_grid)));
        this.X.setCropGridCornerColor(intent.getIntExtra("release.CropGridCornerColor", getResources().getColor(com.yalantis.ucrop.R.color.ucrop_color_white)));
        this.X.setCropGridStrokeWidth(intent.getIntExtra("release.CropGridStrokeWidth", getResources().getDimensionPixelSize(com.yalantis.ucrop.R.dimen.ucrop_default_crop_grid_stoke_width)));
        float floatExtra = intent.getFloatExtra("release.AspectRatioX", -1.0f);
        float floatExtra2 = intent.getFloatExtra("release.AspectRatioY", -1.0f);
        int intExtra = intent.getIntExtra("release.AspectRatioSelectedByDefault", 0);
        ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra("release.AspectRatioOptions");
        if (floatExtra >= 0.0f && floatExtra2 >= 0.0f) {
            ViewGroup viewGroup = this.Y;
            if (viewGroup != null) {
                viewGroup.setVisibility(8);
            }
            float f2 = floatExtra / floatExtra2;
            this.W.setTargetAspectRatio(Float.isNaN(f2) ? 0.0f : f2);
        } else if (parcelableArrayListExtra == null || intExtra >= parcelableArrayListExtra.size()) {
            this.W.setTargetAspectRatio(0.0f);
        } else {
            float aspectRatioX = ((AspectRatio) parcelableArrayListExtra.get(intExtra)).getAspectRatioX() / ((AspectRatio) parcelableArrayListExtra.get(intExtra)).getAspectRatioY();
            this.W.setTargetAspectRatio(Float.isNaN(aspectRatioX) ? 0.0f : aspectRatioX);
        }
        int intExtra2 = intent.getIntExtra("release.MaxSizeX", 0);
        int intExtra3 = intent.getIntExtra("release.MaxSizeY", 0);
        if (intExtra2 <= 0 || intExtra3 <= 0) {
            return;
        }
        this.W.setMaxResultImageSizeX(intExtra2);
        this.W.setMaxResultImageSizeY(intExtra3);
    }

    public final void H0() {
        GestureCropImageView gestureCropImageView = this.W;
        gestureCropImageView.postRotate(-gestureCropImageView.getCurrentAngle());
        this.W.setImageToWrapCropBounds();
    }

    public final void I0(int i) {
        this.W.postRotate(i);
        this.W.setImageToWrapCropBounds();
    }

    public final void J0(int i) {
        GestureCropImageView gestureCropImageView = this.W;
        int i2 = this.l0[i];
        gestureCropImageView.setScaleEnabled(i2 == 3 || i2 == 1);
        GestureCropImageView gestureCropImageView2 = this.W;
        int i3 = this.l0[i];
        gestureCropImageView2.setRotateEnabled(i3 == 3 || i3 == 2);
    }

    public final void K0(float f2) {
        TextView textView = this.f0;
        if (textView != null) {
            textView.setText(String.format(Locale.getDefault(), "%.1f°", Float.valueOf(f2)));
        }
    }

    public final void L0(int i) {
        TextView textView = this.f0;
        if (textView != null) {
            textView.setTextColor(i);
        }
    }

    public final void M0(Intent intent) {
        Uri uri = (Uri) intent.getParcelableExtra("release.InputUri");
        Uri uri2 = (Uri) intent.getParcelableExtra("release.OutputUri");
        G0(intent);
        if (uri == null || uri2 == null) {
            O0(new NullPointerException(getString(com.yalantis.ucrop.R.string.ucrop_error_input_data_is_absent)));
            finish();
            return;
        }
        try {
            this.W.setImageUri(uri, uri2);
        } catch (Exception e2) {
            O0(e2);
            finish();
        }
    }

    public final void N0() {
        if (!this.T) {
            J0(0);
        } else if (this.Y.getVisibility() == 0) {
            T0(com.yalantis.ucrop.R.id.state_aspect_ratio);
        } else {
            T0(com.yalantis.ucrop.R.id.state_scale);
        }
    }

    public void O0(Throwable th) {
        setResult(96, new Intent().putExtra("release.Error", th));
    }

    public void P0(Uri uri) {
        setResult(-1, new Intent().putExtra("release.OutputUri", uri).putExtra("release.InputUri", (Uri) getIntent().getParcelableExtra("release.InputUri")));
    }

    public final void Q0(float f2) {
        TextView textView = this.g0;
        if (textView != null) {
            textView.setText(String.format(Locale.getDefault(), "%d%%", Integer.valueOf((int) (f2 * 100.0f))));
        }
    }

    public final void R0(int i) {
        TextView textView = this.g0;
        if (textView != null) {
            textView.setTextColor(i);
        }
    }

    public final void S0(int i) {
        Window window = getWindow();
        if (window != null) {
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(i);
        }
    }

    public final void T0(int i) {
        if (this.T) {
            ViewGroup viewGroup = this.Y;
            int i2 = com.yalantis.ucrop.R.id.state_aspect_ratio;
            viewGroup.setSelected(i == i2);
            ViewGroup viewGroup2 = this.Z;
            int i3 = com.yalantis.ucrop.R.id.state_rotate;
            viewGroup2.setSelected(i == i3);
            ViewGroup viewGroup3 = this.a0;
            int i4 = com.yalantis.ucrop.R.id.state_scale;
            viewGroup3.setSelected(i == i4);
            this.b0.setVisibility(i == i2 ? 0 : 8);
            this.c0.setVisibility(i == i3 ? 0 : 8);
            this.d0.setVisibility(i == i4 ? 0 : 8);
            C0(i);
            if (i == i4) {
                J0(0);
            } else if (i == i3) {
                J0(1);
            } else {
                J0(2);
            }
        }
    }

    public final void U0() {
        S0(this.O);
        Window window = getWindow();
        if (window != null) {
            window.setNavigationBarColor(0);
        }
        ((ImageView) findViewById(com.yalantis.ucrop.R.id.iv_close)).setOnClickListener(this);
        ((ImageView) findViewById(com.yalantis.ucrop.R.id.iv_confirm)).setOnClickListener(this);
    }

    public final void V0(Intent intent) {
        int intExtra = intent.getIntExtra("release.AspectRatioSelectedByDefault", 0);
        ArrayList<AspectRatio> parcelableArrayListExtra = intent.getParcelableArrayListExtra("release.AspectRatioOptions");
        if (parcelableArrayListExtra == null || parcelableArrayListExtra.isEmpty()) {
            parcelableArrayListExtra = new ArrayList();
            parcelableArrayListExtra.add(new AspectRatio(null, 1.0f, 1.0f));
            parcelableArrayListExtra.add(new AspectRatio(null, 3.0f, 4.0f));
            parcelableArrayListExtra.add(new AspectRatio(getString(com.yalantis.ucrop.R.string.ucrop_label_original).toUpperCase(), 0.0f, 0.0f));
            parcelableArrayListExtra.add(new AspectRatio(null, 3.0f, 2.0f));
            parcelableArrayListExtra.add(new AspectRatio(null, 16.0f, 9.0f));
            intExtra = 2;
        }
        LinearLayout linearLayout = (LinearLayout) findViewById(com.yalantis.ucrop.R.id.layout_aspect_ratio);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -1);
        layoutParams.weight = 1.0f;
        for (AspectRatio aspectRatio : parcelableArrayListExtra) {
            FrameLayout frameLayout = (FrameLayout) getLayoutInflater().inflate(com.yalantis.ucrop.R.layout.ucrop_aspect_ratio, (ViewGroup) null);
            frameLayout.setLayoutParams(layoutParams);
            AspectRatioTextView aspectRatioTextView = (AspectRatioTextView) frameLayout.getChildAt(0);
            aspectRatioTextView.setActiveColor(this.P);
            aspectRatioTextView.setAspectRatio(aspectRatio);
            linearLayout.addView(frameLayout);
            this.e0.add(frameLayout);
        }
        ((ViewGroup) this.e0.get(intExtra)).setSelected(true);
        Iterator it = this.e0.iterator();
        while (it.hasNext()) {
            ((ViewGroup) it.next()).setOnClickListener(new b());
        }
    }

    public final void W0() {
        this.f0 = (TextView) findViewById(com.yalantis.ucrop.R.id.text_view_rotate);
        int i = com.yalantis.ucrop.R.id.rotate_scroll_wheel;
        ((HorizontalProgressWheelView) findViewById(i)).setScrollingListener(new c());
        ((HorizontalProgressWheelView) findViewById(i)).setMiddleLineColor(this.P);
        findViewById(com.yalantis.ucrop.R.id.wrapper_reset_rotate).setOnClickListener(new d());
        findViewById(com.yalantis.ucrop.R.id.wrapper_rotate_by_angle).setOnClickListener(new e());
        L0(this.P);
    }

    public final void X0() {
        this.g0 = (TextView) findViewById(com.yalantis.ucrop.R.id.text_view_scale);
        int i = com.yalantis.ucrop.R.id.scale_scroll_wheel;
        ((HorizontalProgressWheelView) findViewById(i)).setScrollingListener(new f());
        ((HorizontalProgressWheelView) findViewById(i)).setMiddleLineColor(this.P);
        R0(this.P);
    }

    public final void Y0() {
        ImageView imageView = (ImageView) findViewById(com.yalantis.ucrop.R.id.image_view_state_scale);
        ImageView imageView2 = (ImageView) findViewById(com.yalantis.ucrop.R.id.image_view_state_rotate);
        ImageView imageView3 = (ImageView) findViewById(com.yalantis.ucrop.R.id.image_view_state_aspect_ratio);
        imageView.setImageDrawable(new rb9(imageView.getDrawable(), this.P));
        imageView2.setImageDrawable(new rb9(imageView2.getDrawable(), this.P));
        imageView3.setImageDrawable(new rb9(imageView3.getDrawable(), this.P));
    }

    public final void Z0(Intent intent) {
        this.O = intent.getIntExtra("release.StatusBarColor", 0);
        this.P = intent.getIntExtra("release.UcropColorControlsWidgetActive", ContextCompat.getColor(this, com.yalantis.ucrop.R.color.ucrop_color_active_controls_color));
        this.Q = intent.getIntExtra("release.UcropToolbarWidgetColor", ContextCompat.getColor(this, com.yalantis.ucrop.R.color.ucrop_color_toolbar_widget));
        this.S = intent.getIntExtra("release.UcropToolbarCropDrawable", com.yalantis.ucrop.R.drawable.ucrop_ic_done);
        String stringExtra = intent.getStringExtra("release.UcropToolbarTitleText");
        this.N = stringExtra;
        if (stringExtra == null) {
            stringExtra = getResources().getString(com.yalantis.ucrop.R.string.ucrop_label_edit_photo);
        }
        this.N = stringExtra;
        this.T = !intent.getBooleanExtra("release.HideBottomControls", false);
        this.R = intent.getIntExtra("release.UcropRootViewBackgroundColor", ContextCompat.getColor(this, com.yalantis.ucrop.R.color.ucrop_color_crop_background));
        U0();
        F0();
        if (this.T) {
            ViewGroup viewGroup = (ViewGroup) ((ViewGroup) findViewById(com.yalantis.ucrop.R.id.ucrop_photobox)).findViewById(com.yalantis.ucrop.R.id.controls_wrapper);
            viewGroup.setVisibility(0);
            LayoutInflater.from(this).inflate(com.yalantis.ucrop.R.layout.ucrop_controls, viewGroup, true);
            AutoTransition autoTransition = new AutoTransition();
            this.i0 = autoTransition;
            autoTransition.setDuration(50L);
            ViewGroup viewGroup2 = (ViewGroup) findViewById(com.yalantis.ucrop.R.id.state_aspect_ratio);
            this.Y = viewGroup2;
            viewGroup2.setOnClickListener(this.o0);
            ViewGroup viewGroup3 = (ViewGroup) findViewById(com.yalantis.ucrop.R.id.state_rotate);
            this.Z = viewGroup3;
            viewGroup3.setOnClickListener(this.o0);
            ViewGroup viewGroup4 = (ViewGroup) findViewById(com.yalantis.ucrop.R.id.state_scale);
            this.a0 = viewGroup4;
            viewGroup4.setOnClickListener(this.o0);
            this.b0 = (ViewGroup) findViewById(com.yalantis.ucrop.R.id.layout_aspect_ratio);
            this.c0 = (ViewGroup) findViewById(com.yalantis.ucrop.R.id.layout_rotate_wheel);
            this.d0 = (ViewGroup) findViewById(com.yalantis.ucrop.R.id.layout_scale_wheel);
            V0(intent);
            W0();
            X0();
            Y0();
        }
    }

    @Override
    public boolean isSupportAdaptGestureNavigation() {
        return false;
    }

    @Override
    public int loadSkin(boolean z) {
        return super.loadSkin(false);
    }

    @Override
    public boolean needApplyBackground() {
        return false;
    }

    @Override
    public void onClick(View view) {
        int id = view.getId();
        if (id == com.yalantis.ucrop.R.id.iv_close) {
            onBackPressed();
        } else if (id == com.yalantis.ucrop.R.id.iv_confirm) {
            E0();
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(com.yalantis.ucrop.R.layout.ucrop_activity_photobox);
        Intent intent = getIntent();
        fitSystemStatusBar();
        Z0(intent);
        M0(intent);
        N0();
        B0();
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(com.yalantis.ucrop.R.menu.ucrop_menu_activity, menu);
        MenuItem menuItemFindItem = menu.findItem(com.yalantis.ucrop.R.id.menu_loader);
        Drawable icon = menuItemFindItem.getIcon();
        if (icon != null) {
            try {
                icon.mutate();
                icon.setColorFilter(this.Q, PorterDuff.Mode.SRC_ATOP);
                menuItemFindItem.setIcon(icon);
            } catch (IllegalStateException e2) {
                Log.i("UCropActivity", String.format("%s - %s", e2.getMessage(), getString(com.yalantis.ucrop.R.string.ucrop_mutate_exception_hint)));
            }
            ((Animatable) menuItemFindItem.getIcon()).start();
        }
        MenuItem menuItemFindItem2 = menu.findItem(com.yalantis.ucrop.R.id.menu_crop);
        Drawable drawable = ContextCompat.getDrawable(this, this.S);
        if (drawable == null) {
            return true;
        }
        drawable.mutate();
        drawable.setColorFilter(this.Q, PorterDuff.Mode.SRC_ATOP);
        menuItemFindItem2.setIcon(drawable);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == com.yalantis.ucrop.R.id.menu_crop) {
            E0();
            return true;
        }
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        onBackPressed();
        return true;
    }

    @Override
    public boolean onPrepareOptionsMenu(Menu menu) {
        menu.findItem(com.yalantis.ucrop.R.id.menu_crop).setVisible(!this.U);
        menu.findItem(com.yalantis.ucrop.R.id.menu_loader).setVisible(this.U);
        return super.onPrepareOptionsMenu(menu);
    }

    @Override
    public void onStop() {
        super.onStop();
        GestureCropImageView gestureCropImageView = this.W;
        if (gestureCropImageView != null) {
            gestureCropImageView.cancelAllAnimations();
        }
    }

    @Override
    public boolean shouldApplyLegacySystemBarPadding() {
        return false;
    }
}
