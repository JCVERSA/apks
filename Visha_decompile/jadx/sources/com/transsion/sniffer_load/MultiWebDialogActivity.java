package com.transsion.sniffer_load;

import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.WindowManager;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.sniffer_load.fragment.MultiWebFragment;
import com.transsion.utils.BaseConstant;
import defpackage.a64;

public class MultiWebDialogActivity extends BaseActivity {
    public MultiWebFragment N;
    public WindowManager.LayoutParams O;

    private void initFragment() {
        MultiWebFragment multiWebFragment = (MultiWebFragment) new MultiWebFragment().setBaseActivity(this);
        this.N = multiWebFragment;
        a64.i(this, multiWebFragment, false);
    }

    @Override
    public int loadSkin(boolean z) {
        return super.loadSkin(false);
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.O == null || !isInMultiWindowMode()) {
            return;
        }
        this.O.width = -1;
        getWindow().setAttributes(this.O);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_container);
        clearWindowDimFlag(true);
        setFinishOnTouchOutside(true);
        initFragment();
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        this.O = attributes;
        attributes.height = -1;
        updateWebWindowParams(attributes);
    }

    @Override
    public void onMultiWindowModeChanged(boolean z) {
        super.onMultiWindowModeChanged(z);
        updateWebWindowParams(this.O);
    }

    @Override
    public void onScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        super.onScreenTypeChange(screen_type);
        updateWebWindowParams(this.O);
    }

    @Override
    public void setThemeWindowBackground(Bitmap bitmap) {
        setDefaultWindowBackground();
    }
}
