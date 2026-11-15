package com.transsion.onlinevideo.widgets.history;

import android.content.Context;
import android.util.AttributeSet;
import com.transsion.playercommon.R;
import com.transsion.playercommon.widgets.AppFootActionBar;
import java.util.Arrays;

public class OnlineFootActionBar extends AppFootActionBar {
    public int[] b;
    public int[] c;

    public OnlineFootActionBar(Context context) {
        super(context);
    }

    @Override
    public void initMenuState() {
        this.b = new int[]{this.mDeleteIcon};
        this.c = new int[]{R.string.delete};
    }

    @Override
    public void initResource() {
        this.mDeleteIcon = com.transsion.onlinevideo.R.drawable.ic_clear_history_all;
    }

    @Override
    public void initView(Context context) {
        ((AppFootActionBar) this).mContext = context;
        initResource();
        setContainerBackgroundNoOverlay(com.transsion.onlinevideo.R.color.online_video_bottom_player_operate_bar);
    }

    @Override
    public void setAllEnable(boolean z) {
        changeItemEnable(0, z);
    }

    @Override
    public void setListFlag(int i) {
        this.mListFlag = i;
        initMenuState();
        int[] iArr = this.c;
        if (iArr != null) {
            iArr[iArr.length - 1] = com.transsion.onlinevideo.R.string.clear;
        }
        int[] iArr2 = this.b;
        if (iArr2 != null) {
            iArr2[iArr2.length - 1] = com.transsion.onlinevideo.R.drawable.ic_clear_history_all;
        }
        int[] iArrCopyOf = Arrays.copyOf(iArr2, iArr2.length);
        int[] iArr3 = this.c;
        changeItems(iArrCopyOf, Arrays.copyOf(iArr3, iArr3.length));
    }

    public OnlineFootActionBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
