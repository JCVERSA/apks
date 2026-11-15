package com.transsion.playercommon.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.util.TypedValue;
import com.transsion.playercommon.R;
import defpackage.jf;
import defpackage.pp3;
import java.util.Arrays;

public class NewAppFootActionBar extends AppFootActionBar {
    public static final int BOTTOM_ADD_MENU_INDEX = 2;
    public static final int BOTTOM_DELETE_MENU_INDEX = 3;
    public static final int BOTTOM_HIDE_MENU_INDEX = 1;
    public static final int BOTTOM_SHARE_OR_HISTORY_DELETE_MENU_INDEX = 0;
    public int[] b;
    public int[] c;
    public boolean d;

    public NewAppFootActionBar(Context context) {
        super(context);
    }

    @Override
    public int checkItemIndex(int i) {
        int i2 = this.mListFlag;
        return (i2 == 21 || i2 == 53 || i2 == 24 || i2 == 32 || i2 == 1000 || i2 == 1001 || this.d || i <= 0) ? i : i + 1;
    }

    @Override
    public void initMenuState() {
        int i = this.mListFlag;
        if (i == 1001) {
            this.b = new int[]{R.drawable.ic_clear_history_menu_all};
            this.c = new int[]{R.string.clear};
            return;
        }
        if (i == 1000) {
            this.b = new int[]{this.mDownloadIcon, this.mDeleteIcon};
            this.c = new int[]{R.string.download, R.string.delete};
            return;
        }
        if (i == 21 || i == 53 || i == 24) {
            this.b = new int[]{this.mShareIcon, this.mFilterIcon, this.mAddIcon, this.mDeleteIcon};
            this.c = new int[]{R.string.share, R.string.visha_file_filter, R.string.add_to, R.string.delete};
        } else if (i == 32) {
            this.b = new int[]{R.drawable.ic_clear_history_menu_all};
            this.c = new int[]{R.string.clear};
        } else if (this.d) {
            this.b = new int[]{this.mShareIcon, this.mHideIcon, this.mAddIcon, this.mDeleteIcon};
            this.c = new int[]{R.string.share, R.string.hide, R.string.add_to, R.string.delete};
        } else {
            this.b = new int[]{this.mShareIcon, this.mAddIcon, this.mDeleteIcon};
            this.c = new int[]{R.string.share, R.string.add_to, R.string.delete};
        }
    }

    @Override
    public void initView(Context context) {
        ((AppFootActionBar) this).mContext = context;
        this.d = pp3.p || jf.o(context);
        initResource();
        TypedValue typedValue = new TypedValue();
        ((AppFootActionBar) this).mContext.getTheme().resolveAttribute(R.attr.foot_bar_background, typedValue, true);
        setContainerBackgroundNoOverlay(typedValue.resourceId);
    }

    @Override
    public void setAllEnable(boolean z) {
        changeItemEnable(0, z);
        int i = this.mListFlag;
        if (i == 32) {
            return;
        }
        if (this.d && i == 2) {
            changeItemEnable(1, z);
            changeItemEnable(2, z);
            changeItemEnable(3, z);
        } else {
            changeItemEnable(1, z);
            changeItemEnable(2, z);
            changeItemEnable(3, z);
        }
    }

    public void setEnabled(int i, boolean z) {
        changeItemEnable(i, z);
    }

    @Override
    public void setListFlag(int i) {
        this.mListFlag = i;
        initMenuState();
        int[] iArr = this.b;
        int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
        int[] iArr2 = this.c;
        changeItems(iArrCopyOf, Arrays.copyOf(iArr2, iArr2.length));
    }

    public NewAppFootActionBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
