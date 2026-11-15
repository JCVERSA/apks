package com.transsion.sniffer_load.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.util.TypedValue;
import com.transsion.playercommon.R;
import com.transsion.widgetslib.widget.FootOperationBar;
import java.util.ArrayList;
import java.util.Arrays;

public class BookmarkFootOperateBar extends FootOperationBar {
    public static final int BOTTOM_DELETE_MENU_INDEX = 1;
    public static final int BOTTOM_EDIT_MENU_INDEX = 0;
    public int[] b;
    public int[] c;
    public int d;
    public int e;
    public final ArrayList f;

    public BookmarkFootOperateBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f = new ArrayList();
        initView(context);
    }

    public void initMenuState() {
        this.b = new int[]{this.d, this.e};
        this.c = new int[]{R.string.download_bookmark_bottom_edit, R.string.remove};
    }

    public void initResource() {
        this.d = R.drawable.ic_bookmark_edit_1;
        this.e = R.drawable.ic_bookmark_remove_1;
    }

    public void initView(Context context) {
        initResource();
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(com.transsion.common.R.attr.foot_bar_background, typedValue, true);
        setContainerBackgroundNoOverlay(typedValue.resourceId);
        initMenuState();
        int[] iArr = this.b;
        int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
        int[] iArr2 = this.c;
        changeItems(iArrCopyOf, Arrays.copyOf(iArr2, iArr2.length));
    }

    public void setAllEnable(boolean z) {
        changeItemEnable(0, z);
        changeItemEnable(1, z);
    }

    public void setEditEnable(boolean z) {
        changeItemEnable(0, z);
    }

    public void setSelectItems(ArrayList arrayList) {
        this.f.clear();
        this.f.addAll(arrayList);
    }
}
