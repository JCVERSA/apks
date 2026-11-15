package com.yalantis.ucrop;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.transition.Transition;
import androidx.transition.TransitionManager;
import com.yalantis.ucrop.model.AspectRatio;
import com.yalantis.ucrop.view.GestureCropImageView;
import com.yalantis.ucrop.view.OverlayView;
import com.yalantis.ucrop.view.TransformImageView;
import com.yalantis.ucrop.view.UCropView;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class UCropFragment extends Fragment {
    public TextView A;
    public TextView B;
    public View C;
    public int l;
    public int m;
    public int n;
    public boolean o;
    public Transition p;
    public UCropView q;
    public GestureCropImageView r;
    public OverlayView s;
    public ViewGroup t;
    public ViewGroup u;
    public ViewGroup v;
    public ViewGroup w;
    public ViewGroup x;
    public ViewGroup y;
    public List z = new ArrayList();
    public Bitmap.CompressFormat D = com.yalantis.ucrop.a.c;
    public int E = 90;
    public int[] F = {1, 2, 3};
    public TransformImageView.b G = new a();
    public final View.OnClickListener H = new b();

    public class a implements TransformImageView.b {
        public a() {
        }

        @Override
        public void a() {
            UCropFragment.this.q.animate().alpha(1.0f).setDuration(300L).setInterpolator(new AccelerateInterpolator());
            UCropFragment.this.C.setClickable(false);
            UCropFragment.u(UCropFragment.this);
            throw null;
        }

        @Override
        public void b(Exception exc) {
            UCropFragment.u(UCropFragment.this);
            UCropFragment.this.I(exc);
            throw null;
        }

        @Override
        public void c(float f) {
            UCropFragment.this.P(f);
        }

        @Override
        public void d(float f) {
            UCropFragment.this.M(f);
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override
        public void onClick(View view) {
            if (view.isSelected()) {
                return;
            }
            UCropFragment.this.Q(view.getId());
        }
    }

    public class c {
        public int a;
        public Intent b;

        public c(int i, Intent intent) {
            this.a = i;
            this.b = intent;
        }
    }

    static {
        AppCompatDelegate.setCompatVectorFromResourcesEnabled(true);
    }

    private void H(int i) {
        if (getView() != null) {
            TransitionManager.beginDelayedTransition((ViewGroup) getView().findViewById(R.id.ucrop_photobox), this.p);
        }
        this.v.findViewById(R.id.text_view_scale).setVisibility(i == R.id.state_scale ? 0 : 8);
        this.t.findViewById(R.id.text_view_crop).setVisibility(i == R.id.state_aspect_ratio ? 0 : 8);
        this.u.findViewById(R.id.text_view_rotate).setVisibility(i == R.id.state_rotate ? 0 : 8);
    }

    private void L(int i) {
        GestureCropImageView gestureCropImageView = this.r;
        int i2 = this.F[i];
        gestureCropImageView.setScaleEnabled(i2 == 3 || i2 == 1);
        GestureCropImageView gestureCropImageView2 = this.r;
        int i3 = this.F[i];
        gestureCropImageView2.setRotateEnabled(i3 == 3 || i3 == 2);
    }

    public void M(float f) {
        TextView textView = this.A;
        if (textView != null) {
            textView.setText(String.format(Locale.getDefault(), "%.1f°", Float.valueOf(f)));
        }
    }

    private void O() {
        if (!this.o) {
            L(0);
        } else if (this.t.getVisibility() == 0) {
            Q(R.id.state_aspect_ratio);
        } else {
            Q(R.id.state_scale);
        }
    }

    public void P(float f) {
        TextView textView = this.B;
        if (textView != null) {
            textView.setText(String.format(Locale.getDefault(), "%d%%", Integer.valueOf((int) (f * 100.0f))));
        }
    }

    public void Q(int i) {
        if (this.o) {
            ViewGroup viewGroup = this.t;
            int i2 = R.id.state_aspect_ratio;
            viewGroup.setSelected(i == i2);
            ViewGroup viewGroup2 = this.u;
            int i3 = R.id.state_rotate;
            viewGroup2.setSelected(i == i3);
            ViewGroup viewGroup3 = this.v;
            int i4 = R.id.state_scale;
            viewGroup3.setSelected(i == i4);
            this.w.setVisibility(i == i2 ? 0 : 8);
            this.x.setVisibility(i == i3 ? 0 : 8);
            this.y.setVisibility(i == i4 ? 0 : 8);
            H(i);
            if (i == i4) {
                L(0);
            } else if (i == i3) {
                L(1);
            } else {
                L(2);
            }
        }
    }

    public static com.yalantis.ucrop.b u(UCropFragment uCropFragment) {
        uCropFragment.getClass();
        return null;
    }

    public final void G(View view) {
        if (this.C == null) {
            this.C = new View(getContext());
            this.C.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            this.C.setClickable(true);
        }
        ((RelativeLayout) view.findViewById(R.id.ucrop_photobox)).addView(this.C);
    }

    public c I(Throwable th) {
        return new c(96, new Intent().putExtra("release.Error", th));
    }

    public final void J(View view) {
        UCropView uCropView = (UCropView) view.findViewById(R.id.ucrop);
        this.q = uCropView;
        this.r = uCropView.getCropImageView();
        this.s = this.q.getOverlayView();
        this.r.setTransformImageListener(this.G);
        ((ImageView) view.findViewById(R.id.image_view_logo)).setColorFilter(this.n, PorterDuff.Mode.SRC_ATOP);
        view.findViewById(R.id.ucrop_frame).setBackgroundColor(this.m);
    }

    public final void K(Bundle bundle) {
        String string = bundle.getString("release.CompressionFormatName");
        Bitmap.CompressFormat compressFormatValueOf = !TextUtils.isEmpty(string) ? Bitmap.CompressFormat.valueOf(string) : null;
        if (compressFormatValueOf == null) {
            compressFormatValueOf = com.yalantis.ucrop.a.c;
        }
        this.D = compressFormatValueOf;
        this.E = bundle.getInt("release.CompressionQuality", 90);
        int[] intArray = bundle.getIntArray("release.AllowedGestures");
        if (intArray != null && intArray.length == 3) {
            this.F = intArray;
        }
        this.r.setMaxBitmapSize(bundle.getInt("release.MaxBitmapSize", 0));
        this.r.setMaxScaleMultiplier(bundle.getFloat("release.MaxScaleMultiplier", 10.0f));
        this.r.setImageToWrapCropBoundsAnimDuration(bundle.getInt("release.ImageToCropBoundsAnimDuration", 500));
        this.s.setFreestyleCropEnabled(bundle.getBoolean("release.FreeStyleCrop", false));
        this.s.setDimmedColor(bundle.getInt("release.DimmedLayerColor", getResources().getColor(R.color.ucrop_color_default_dimmed)));
        this.s.setCircleDimmedLayer(bundle.getBoolean("release.CircleDimmedLayer", false));
        this.s.setShowCropFrame(bundle.getBoolean("release.ShowCropFrame", true));
        this.s.setCropFrameColor(bundle.getInt("release.CropFrameColor", getResources().getColor(R.color.ucrop_color_default_crop_frame)));
        this.s.setCropFrameStrokeWidth(bundle.getInt("release.CropFrameStrokeWidth", getResources().getDimensionPixelSize(R.dimen.ucrop_default_crop_frame_stoke_width)));
        this.s.setShowCropGrid(bundle.getBoolean("release.ShowCropGrid", true));
        this.s.setCropGridRowCount(bundle.getInt("release.CropGridRowCount", 2));
        this.s.setCropGridColumnCount(bundle.getInt("release.CropGridColumnCount", 2));
        this.s.setCropGridColor(bundle.getInt("release.CropGridColor", getResources().getColor(R.color.ucrop_color_default_crop_grid)));
        this.s.setCropGridStrokeWidth(bundle.getInt("release.CropGridStrokeWidth", getResources().getDimensionPixelSize(R.dimen.ucrop_default_crop_grid_stoke_width)));
        float f = bundle.getFloat("release.AspectRatioX", -1.0f);
        float f2 = bundle.getFloat("release.AspectRatioY", -1.0f);
        int i = bundle.getInt("release.AspectRatioSelectedByDefault", 0);
        ArrayList parcelableArrayList = bundle.getParcelableArrayList("release.AspectRatioOptions");
        if (f >= 0.0f && f2 >= 0.0f) {
            ViewGroup viewGroup = this.t;
            if (viewGroup != null) {
                viewGroup.setVisibility(8);
            }
            float f3 = f / f2;
            this.r.setTargetAspectRatio(Float.isNaN(f3) ? 0.0f : f3);
        } else if (parcelableArrayList == null || i >= parcelableArrayList.size()) {
            this.r.setTargetAspectRatio(0.0f);
        } else {
            float aspectRatioX = ((AspectRatio) parcelableArrayList.get(i)).getAspectRatioX() / ((AspectRatio) parcelableArrayList.get(i)).getAspectRatioY();
            this.r.setTargetAspectRatio(Float.isNaN(aspectRatioX) ? 0.0f : aspectRatioX);
        }
        int i2 = bundle.getInt("release.MaxSizeX", 0);
        int i3 = bundle.getInt("release.MaxSizeY", 0);
        if (i2 <= 0 || i3 <= 0) {
            return;
        }
        this.r.setMaxResultImageSizeX(i2);
        this.r.setMaxResultImageSizeY(i3);
    }

    public final void N(Bundle bundle) {
        Uri uri = (Uri) bundle.getParcelable("release.InputUri");
        Uri uri2 = (Uri) bundle.getParcelable("release.OutputUri");
        K(bundle);
        if (uri == null || uri2 == null) {
            I(new NullPointerException(getString(R.string.ucrop_error_input_data_is_absent)));
            throw null;
        }
        try {
            this.r.setImageUri(uri, uri2);
        } catch (Exception e) {
            I(e);
            throw null;
        }
    }

    public void R(View view, Bundle bundle) {
        this.l = bundle.getInt("release.UcropColorControlsWidgetActive", ContextCompat.getColor(getContext(), R.color.ucrop_color_widget_active));
        this.n = bundle.getInt("release.UcropLogoColor", ContextCompat.getColor(getContext(), R.color.ucrop_color_default_logo));
        this.o = !bundle.getBoolean("release.HideBottomControls", false);
        this.m = bundle.getInt("release.UcropRootViewBackgroundColor", ContextCompat.getColor(getContext(), R.color.ucrop_color_crop_background));
        J(view);
        throw null;
    }

    @Override
    public void onAttach(Context context) {
        super.onAttach(context);
        getParentFragment();
        throw new IllegalArgumentException(context.toString() + " must implement UCropFragmentCallback");
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.ucrop_fragment_photobox, viewGroup, false);
        Bundle arguments = getArguments();
        R(viewInflate, arguments);
        N(arguments);
        O();
        G(viewInflate);
        return viewInflate;
    }
}
