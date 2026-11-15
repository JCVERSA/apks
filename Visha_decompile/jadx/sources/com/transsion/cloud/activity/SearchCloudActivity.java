package com.transsion.cloud.activity;

import android.os.Bundle;
import android.view.MotionEvent;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.cloud.fragment.SearchCloudFragment;
import com.transsion.netdisk.R;
import com.transsion.playercommon.activities.BaseActivity;
import defpackage.h27;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Route(path = "/cloud/searchcloudactivity")
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\r\u0010\n\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\f\u0010\u0003J\u0019\u0010\u000f\u001a\u00020\t2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0012\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0014\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u00118\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0016\u0010\u0013¨\u0006\u0017"}, d2 = {"Lcom/transsion/cloud/activity/SearchCloudActivity;", "Lcom/transsion/playercommon/activities/BaseActivity;", MethodDecl.initName, "()V", "Landroid/os/Bundle;", "savedInstanceState", "Lzfb;", "onCreate", "(Landroid/os/Bundle;)V", "", "isSetAppTheme", "()Z", "finish", "Landroid/view/MotionEvent;", "ev", "dispatchTouchEvent", "(Landroid/view/MotionEvent;)Z", "", "startY", "F", "isScrolling", "Z", "scrollThreshold", "clouddrive_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SearchCloudActivity extends BaseActivity {
    private boolean isScrolling;
    private final float scrollThreshold = 300.0f;
    private float startY;

    /* JADX WARN: Code duplicated, block: B:20:0x003a  */
    @Override
    public boolean dispatchTouchEvent(MotionEvent ev) {
        if (ev != null) {
            int action = ev.getAction();
            if (action == 0) {
                float y = ev.getY();
                this.startY = y;
                this.isScrolling = false;
                LogUtils.i("Touch down at Y: " + y);
            } else if (action == 1) {
                this.isScrolling = false;
                LogUtils.i("Touch ended");
            } else if (action != 2) {
                if (action == 3) {
                    this.isScrolling = false;
                    LogUtils.i("Touch ended");
                }
            } else if (!this.isScrolling && Math.abs(ev.getY() - this.startY) >= this.scrollThreshold) {
                if (!this.isScrolling) {
                    h27.c().e(1135, new Object[0]);
                }
                this.isScrolling = true;
            }
        }
        return super.dispatchTouchEvent(ev);
    }

    @Override
    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }

    public final boolean isSetAppTheme() {
        return false;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.layout_search_activity);
        String stringExtra = getIntent().getStringExtra("source");
        if (stringExtra == null) {
            stringExtra = "";
        }
        if (savedInstanceState == null) {
            SearchCloudFragment searchCloudFragment = new SearchCloudFragment();
            Bundle bundle = new Bundle();
            bundle.putString("source", stringExtra);
            searchCloudFragment.setArguments(bundle);
            getSupportFragmentManager().beginTransaction().replace(R.id.fragment_content, searchCloudFragment).commit();
        }
    }
}
