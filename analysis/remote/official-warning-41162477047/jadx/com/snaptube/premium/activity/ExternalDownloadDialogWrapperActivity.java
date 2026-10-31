package com.snaptube.premium.activity;

import android.os.Build;
import android.view.Window;
import kotlin.Metadata;
import o.io6;
import o.u81;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\b\u0010\u0003J\u000f\u0010\t\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\u0003R\u0016\u0010\f\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/snaptube/premium/activity/ExternalDownloadDialogWrapperActivity;", "Lcom/snaptube/premium/activity/DownloadDialogWrapperActivity;", "<init>", "()V", "", "enableTransparentStatusBar", "()Z", "Lo/mg8;", "onResume", "Q0", "l", "Z", "isSet", "snaptube_classicNormalRelease"}, k = 1, mv = {1, 9, 0})
public final class ExternalDownloadDialogWrapperActivity extends DownloadDialogWrapperActivity {

    public boolean isSet;

    public final void Q0() {
        if (Build.VERSION.SDK_INT == 35 && io6.v() && !this.isSet) {
            Window window = getWindow();
            Window window2 = getWindow();
            u81.f("DecorView", "window:" + window + ", peekDecorView:" + (window2 != null ? window2.peekDecorView() : null));
            this.isSet = true;
        }
    }

    @Override
    public boolean enableTransparentStatusBar() {
        return true;
    }

    @Override
    public void onResume() {
        super.onResume();
        Q0();
    }
}
