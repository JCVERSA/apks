package com.transsion.cloud.updownload.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.util.TypedValue;
import com.transsion.playercommon.R;
import com.transsion.widgetslib.widget.FootOperationBar;

public class TransferOperationBar extends FootOperationBar {
    public static final int BOTTOM_OPERATION_DELETE_MENU_INDEX = 0;
    public int b;
    public int c;
    public Context d;
    public int[] e;
    public int[] f;

    public TransferOperationBar(Context context) {
        this(context, null);
    }

    public void initMenu(int i) {
        int i2;
        if (i != 2) {
            i2 = i != 3 ? R.string.delete : R.string.visha_download_cancel;
        } else {
            i2 = R.string.visha_upload_cancel;
        }
        int[] iArr = {this.b};
        this.e = iArr;
        int[] iArr2 = {i2};
        this.f = iArr2;
        changeItems(iArr, iArr2);
    }

    public void initResource() {
        int i = R.drawable.ic_delete;
        this.b = i;
        this.c = i;
    }

    public void initView(Context context) {
        this.d = context;
        initResource();
        TypedValue typedValue = new TypedValue();
        this.d.getTheme().resolveAttribute(R.attr.foot_bar_background, typedValue, true);
        setContainerBackgroundNoOverlay(typedValue.resourceId);
    }

    public TransferOperationBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initView(context);
    }
}
