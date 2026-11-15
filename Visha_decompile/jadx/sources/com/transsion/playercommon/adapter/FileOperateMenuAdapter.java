package com.transsion.playercommon.adapter;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.blankj.utilcode.util.ThreadUtils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.tencent.mmkv.MMKV;
import com.transsion.playercommon.R;
import com.transsion.playercommon.data.FileOperateItem;
import com.transsion.playercommon.vishaapis.appconfig.helper.SmartEditConfigHelper;
import com.transsion.widgetslib.widget.OSIconTextView;
import defpackage.ea7;
import defpackage.se;
import defpackage.ydc;
import java.util.concurrent.atomic.AtomicInteger;

public class FileOperateMenuAdapter extends BaseQuickAdapter<FileOperateItem, BaseViewHolder> {
    public ImageView o;
    public PopupWindow p;

    public FileOperateMenuAdapter(Context context) {
        super(R.layout.file_operate_item_view);
        this.mContext = context;
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, FileOperateItem fileOperateItem) {
        baseViewHolder.itemView.setTag(fileOperateItem);
        baseViewHolder.itemView.setEnabled(fileOperateItem.isEnable() || fileOperateItem.getFlag() == 15);
        int i = R.id.item_name;
        baseViewHolder.setText(i, fileOperateItem.getTextResId());
        int i2 = R.id.item_icon;
        baseViewHolder.setImageResource(i2, fileOperateItem.getImageResId());
        TextView textView = (TextView) baseViewHolder.itemView.findViewById(i);
        ImageView imageView = (ImageView) baseViewHolder.itemView.findViewById(i2);
        if (fileOperateItem.getFlag() == 7) {
            this.o = imageView;
        }
        baseViewHolder.itemView.findViewById(R.id.bv_point).setVisibility((!fileOperateItem.isNeedPoint() || ydc.e()) ? 8 : 0);
        textView.setEnabled(fileOperateItem.isEnable());
        imageView.setEnabled(fileOperateItem.isEnable());
        OSIconTextView oSIconTextView = (OSIconTextView) baseViewHolder.getView(R.id.icon_text);
        View view = baseViewHolder.getView(i2);
        if (fileOperateItem.getIconText() == 0 || fileOperateItem.getIconText() == -1) {
            view.setVisibility(0);
            oSIconTextView.setVisibility(8);
        } else {
            view.setVisibility(8);
            oSIconTextView.setVisibility(0);
            oSIconTextView.setText(fileOperateItem.getIconText());
        }
        if (fileOperateItem.getFlag() == 16) {
            i(imageView);
        }
    }

    public ImageView g() {
        return this.o;
    }

    public final void h(View view, AtomicInteger atomicInteger) {
        if (view == null || !view.isAttachedToWindow()) {
            return;
        }
        this.p = ea7.p(view, se.a().getString(R.string.visha_one_click_to_match_audio_info), 48);
        atomicInteger.getAndIncrement();
        MMKV.p().t("mmkv_key_show_audio_smart_edit_tip", atomicInteger.get());
    }

    public final void i(final View view) {
        if (SmartEditConfigHelper.getSmartEditEnable().booleanValue() && !ydc.e()) {
            final AtomicInteger atomicInteger = new AtomicInteger(MMKV.p().g("mmkv_key_show_audio_smart_edit_tip", 0));
            if (atomicInteger.get() < 2) {
                ThreadUtils.t(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.h(view, atomicInteger);
                    }
                }, 300L);
            }
        }
    }

    public void release() {
        PopupWindow popupWindow = this.p;
        if (popupWindow == null || !popupWindow.isShowing()) {
            return;
        }
        this.p.dismiss();
        this.p = null;
    }
}
