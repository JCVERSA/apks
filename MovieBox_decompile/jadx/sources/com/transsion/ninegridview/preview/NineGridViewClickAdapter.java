package com.transsion.ninegridview.preview;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.transsion.ninegridview.ImageInfo;
import com.transsion.ninegridview.NineGridView;
import com.transsion.ninegridview.NineGridViewAdapter;
import com.transsion.ninegridview.NineGridViewNew;
import java.io.Serializable;
import java.util.List;

public class NineGridViewClickAdapter extends NineGridViewAdapter {
    private int statusHeight;

    public NineGridViewClickAdapter(Context context, List<ImageInfo> list) {
        super(context, list);
        this.statusHeight = com.blankj.utilcode.util.d.c();
    }

    public int getStatusHeight(Context context) {
        try {
            Class<?> cls = Class.forName("com.android.internal.R$dimen");
            return context.getResources().getDimensionPixelSize(Integer.parseInt(cls.getField("status_bar_height").get(cls.newInstance()).toString()));
        } catch (Exception e10) {
            e10.printStackTrace();
            return -1;
        }
    }

    @Override
    protected void onImageItemClick(Context context, NineGridView nineGridView, int i10, List<ImageInfo> list) {
        int i11 = 0;
        while (i11 < list.size()) {
            ImageInfo imageInfo = list.get(i11);
            View childAt = i11 < nineGridView.getMaxSize() ? nineGridView.getChildAt(i11) : nineGridView.getChildAt(nineGridView.getMaxSize() - 1);
            imageInfo.imageViewWidth = childAt.getWidth();
            imageInfo.imageViewHeight = childAt.getHeight();
            int[] iArr = new int[2];
            childAt.getLocationInWindow(iArr);
            imageInfo.imageViewX = iArr[0];
            imageInfo.imageViewY = iArr[1] - this.statusHeight;
            i11++;
        }
        Intent intent = new Intent(context, (Class<?>) ImagePreviewActivity.class);
        Bundle bundle = new Bundle();
        bundle.putSerializable(ImagePreviewActivity.IMAGE_INFO, (Serializable) list);
        bundle.putInt("CURRENT_ITEM", i10);
        intent.putExtras(bundle);
        context.startActivity(intent);
    }

    @Override
    protected void onImageItemClick(Context context, NineGridViewNew nineGridViewNew, int i10, List<ImageInfo> list) {
        View childAt;
        for (int i11 = 0; i11 < list.size(); i11++) {
            ImageInfo imageInfo = list.get(i11);
            if (i11 < nineGridViewNew.getMaxImageSize()) {
                childAt = nineGridViewNew.getChildAt(i11);
            } else {
                childAt = nineGridViewNew.getChildAt(nineGridViewNew.getMaxImageSize() - 1);
            }
            imageInfo.imageViewWidth = childAt.getWidth();
            imageInfo.imageViewHeight = childAt.getHeight();
            int[] iArr = new int[2];
            childAt.getLocationInWindow(iArr);
            imageInfo.imageViewX = iArr[0];
            imageInfo.imageViewY = iArr[1] - this.statusHeight;
        }
        Intent intent = new Intent(context, (Class<?>) ImagePreviewActivity.class);
        Bundle bundle = new Bundle();
        bundle.putSerializable(ImagePreviewActivity.IMAGE_INFO, (Serializable) list);
        bundle.putInt("CURRENT_ITEM", i10);
        intent.putExtras(bundle);
        context.startActivity(intent);
    }
}
