package com.cloud.tmc.miniapp.base;

import android.R;
import android.view.View;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import com.cloud.tmc.integration.utils.MiniBarUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public abstract class MiniAppBaseActivity extends BaseActivity {
    private final Lazy taskTag$delegate = LazyKt.b(new Function0<String>() {
        {
            super(0);
        }

        @Override
        public final String invoke() {
            String stringExtra = this.this$0.getIntent().getStringExtra(TmcConstants.EXTRA_APP_ID);
            return stringExtra == null ? "" : stringExtra;
        }
    });

    public static final WindowInsetsCompat fitsSystemWindows$lambda$0(View v10, WindowInsetsCompat insets) {
        Intrinsics.h(v10, "v");
        Intrinsics.h(insets, "insets");
        z0.c insets2 = insets.getInsets(WindowInsetsCompat.Type.systemBars());
        Intrinsics.g(insets2, "insets.getInsets(WindowI…Compat.Type.systemBars())");
        v10.setPadding(v10.getPaddingLeft(), v10.getPaddingTop(), v10.getPaddingRight(), insets2.f76468d);
        return WindowInsetsCompat.CONSUMED;
    }

    @Override
    public void fitsSystemWindows() {
        WindowCompat.setDecorFitsSystemWindows(getWindow(), false);
        ViewCompat.setOnApplyWindowInsetsListener(getWindow().getDecorView().findViewById(R.id.content), new OnApplyWindowInsetsListener() {
            @Override
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return MiniAppBaseActivity.fitsSystemWindows$lambda$0(view, windowInsetsCompat);
            }
        });
    }

    public final String getTaskTag() {
        return (String) this.taskTag$delegate.getValue();
    }

    @Override
    public void initLayout() {
        super.initLayout();
        if (getLayoutId() > 0) {
            MiniBarUtils.transparentStatusBar(this);
        }
    }
}
