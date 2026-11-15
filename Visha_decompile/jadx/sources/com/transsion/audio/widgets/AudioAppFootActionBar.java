package com.transsion.audio.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import com.transsion.playercommon.R;
import com.transsion.playercommon.widgets.AppFootActionBar;
import java.util.Arrays;

public class AudioAppFootActionBar extends AppFootActionBar {
    public static final int BOTTOM_ADD_MENU_INDEX = 2;
    public static final int BOTTOM_DELETE_MENU_INDEX = 3;
    public static final int BOTTOM_FILE_DELETE_MENU_INDEX = 4;
    public static final int BOTTOM_FILTER_MENU_INDEX = 1;
    public static final int BOTTOM_SHARE_MENU_INDEX = 0;
    private static final String TAG = "AudioAppFootActionBar";
    private int[] mOriginMenuIconIds;
    private int[] mOriginMenuTitleIds;

    public AudioAppFootActionBar(Context context) {
        super(context);
    }

    private boolean isFilter() {
        return this.mListFlag == 36;
    }

    @Override
    public void initMenuState() {
        int i = this.mListFlag;
        boolean z = i == 30 || i == 33;
        boolean z2 = i == 32;
        boolean z3 = i == 33;
        boolean z4 = i == 36;
        if (z) {
            this.mOriginMenuIconIds = new int[]{this.mShareIcon, this.mFilterIcon, this.mAddIcon, z3 ? R.drawable.ic_cancel_favorite : this.mRemoveIcon, this.mDeleteIcon};
            this.mOriginMenuTitleIds = new int[]{R.string.share, com.transsion.audio.R.string.visha_file_filter, R.string.add_to, z3 ? R.string.unfavorite : com.transsion.audio.R.string.remove, R.string.delete};
        } else {
            this.mOriginMenuIconIds = new int[]{this.mShareIcon, this.mFilterIcon, this.mAddIcon, z2 ? com.transsion.audio.R.drawable.ic_delete_all : this.mDeleteIcon};
            this.mOriginMenuTitleIds = new int[]{R.string.share, z4 ? com.transsion.audio.R.string.visha_file_not_filter : com.transsion.audio.R.string.visha_file_filter, R.string.add_to, z2 ? com.transsion.audio.R.string.clear : R.string.delete};
        }
    }

    @Override
    public void initResource() {
        super.initResource();
    }

    @Override
    public void initView(Context context) {
        ((AppFootActionBar) this).mContext = context;
        initResource();
        TypedValue typedValue = new TypedValue();
        ((AppFootActionBar) this).mContext.getTheme().resolveAttribute(com.transsion.audio.R.attr.foot_bar_background, typedValue, true);
        setContainerBackgroundNoOverlay(typedValue.resourceId);
    }

    @Override
    public void setAllEnable(boolean z) {
        View itemView;
        changeItemEnable(0, z);
        changeItemEnable(1, z);
        changeItemEnable(3, z);
        changeItemEnable(2, z);
        if (isFilter() && (itemView = getItemView(2)) != null) {
            itemView.setVisibility(8);
        }
        int i = this.mListFlag;
        if (i == 30 || i == 33) {
            changeItemEnable(4, z);
        }
    }

    @Override
    public void setListFlag(int i) {
        this.mListFlag = i;
        initMenuState();
        int[] iArr = this.mOriginMenuIconIds;
        int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
        int[] iArr2 = this.mOriginMenuTitleIds;
        changeItems(iArrCopyOf, Arrays.copyOf(iArr2, iArr2.length));
    }

    public AudioAppFootActionBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
