package com.transsion.magicmovie.activity;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.viewpager2.widget.ViewPager2;
import com.tencent.mmkv.MMKV;
import com.transsion.magicmovie.adapter.SplashImageViewPagerAdapter;
import com.transsion.magicshow.R;
import defpackage.e80;
import defpackage.f5;
import defpackage.p06;
import defpackage.t81;
import defpackage.w6c;
import java.util.Arrays;

public class SplashActivity extends AppCompatActivity implements View.OnClickListener {
    public static final Integer[] T = {Integer.valueOf(R.drawable.splash_download_pic2)};
    public ViewPager2 O;
    public SplashImageViewPagerAdapter P;
    public Button Q;
    public Handler N = new Handler();
    public ViewPager2.OnPageChangeCallback R = new a();
    public Runnable S = new Runnable() {
        @Override
        public void run() {
            SplashActivity.this.G();
        }
    };

    public class a extends ViewPager2.OnPageChangeCallback {
        public a() {
        }

        @Override
        public void onPageSelected(int i) {
            super.onPageSelected(i);
            if (i == SplashActivity.T.length - 1) {
                SplashActivity.this.Q.setText(R.string.splash_pics_start);
            } else if (i == 0) {
                SplashActivity.this.Q.setText(R.string.splash_pics_next);
            } else {
                SplashActivity.this.Q.setText(R.string.splash_pics_continue);
            }
            p06.X(i + 1);
        }
    }

    public final void D() {
        Window window;
        if (getApplicationInfo().targetSdkVersion >= 36 && (window = getWindow()) != null) {
            WindowCompat.setDecorFitsSystemWindows(window, false);
            window.setNavigationBarContrastEnforced(false);
            window.setNavigationBarColor(0);
            WindowCompat.getInsetsController(window, window.getDecorView()).setAppearanceLightNavigationBars(true);
            final int i = ((ViewGroup.MarginLayoutParams) this.Q.getLayoutParams()).bottomMargin;
            View viewFindViewById = findViewById(R.id.splash_pics_root);
            ViewCompat.setOnApplyWindowInsetsListener(viewFindViewById, new OnApplyWindowInsetsListener() {
                @Override
                public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                    return this.a.F(i, view, windowInsetsCompat);
                }
            });
            ViewCompat.requestApplyInsets(viewFindViewById);
        }
    }

    public void E() {
        this.P = new SplashImageViewPagerAdapter();
        this.P.d(Arrays.asList(T));
        this.O.setAdapter(this.P);
        this.O.registerOnPageChangeCallback(this.R);
    }

    public final WindowInsetsCompat F(int i, View view, WindowInsetsCompat windowInsetsCompat) {
        Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.navigationBars());
        view.setPadding(insets.left, view.getPaddingTop(), insets.right, 0);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.Q.getLayoutParams();
        marginLayoutParams.bottomMargin = i + insets.bottom;
        this.Q.setLayoutParams(marginLayoutParams);
        return windowInsetsCompat;
    }

    public void G() {
        f5.c(new Intent(this, (Class<?>) VideoPlayerMainActivity.class), this);
        overridePendingTransition(0, 0);
        finish();
    }

    @Override
    public void finish() {
        super.finish();
    }

    @Override
    public void onClick(View view) {
        if (view.getId() == R.id.btn_guide) {
            int currentItem = this.O.getCurrentItem() + 1;
            if (currentItem >= this.P.getItemCount()) {
                G();
                w6c.E(this, true);
            }
            this.O.setCurrentItem(currentItem);
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        com.transsion.utils.a.b(this);
        super.onCreate(bundle);
        t81.a(this);
        supportRequestWindowFeature(1);
        e80.o(this, false);
        getWindow().addFlags(67108864);
        setContentView(R.layout.activity_splash_pics);
        this.O = (ViewPager2) findViewById(R.id.vp_guide_image);
        Button button = (Button) findViewById(R.id.btn_guide);
        this.Q = button;
        button.setOnClickListener(this);
        D();
        E();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        this.O.unregisterOnPageChangeCallback(this.R);
    }

    @Override
    public void onResume() {
        super.onResume();
        MMKV.p().y("mmkv_key_user_clear_migration", true);
    }
}
