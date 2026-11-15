package com.transsion.playercommon.adapter;

import android.view.View;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.blankj.utilcode.util.ThreadUtils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.tencent.mmkv.MMKV;
import com.transsion.playercommon.R;
import com.transsion.playercommon.data.MediaOperateMenuBean;
import com.transsion.playercommon.vishaapis.appconfig.helper.SmartEditConfigHelper;
import com.transsion.widgetslib.widget.OSIconTextView;
import defpackage.ea7;
import defpackage.se;
import defpackage.ydc;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public class MediaOperateVerticalAdapter extends BaseQuickAdapter<MediaOperateMenuBean, BaseViewHolder> {
    public PopupWindow o;

    public MediaOperateVerticalAdapter(List list) {
        super(R.layout.item_media_operate_menu_vertical, list);
    }

    public void d(View view, AtomicInteger atomicInteger) {
        if (view == null || !view.isAttachedToWindow()) {
            return;
        }
        this.o = ea7.p(view, se.a().getString(R.string.visha_one_click_to_match_audio_info), 48);
        atomicInteger.getAndIncrement();
        MMKV.p().t("mmkv_key_show_audio_smart_edit_tip", atomicInteger.get());
    }

    private void g(final View view) {
        if (SmartEditConfigHelper.getSmartEditEnable().booleanValue() && !ydc.e()) {
            final AtomicInteger atomicInteger = new AtomicInteger(MMKV.p().g("mmkv_key_show_audio_smart_edit_tip", 0));
            if (atomicInteger.get() < 2) {
                ThreadUtils.t(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.d(view, atomicInteger);
                    }
                }, 300L);
            }
        }
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, MediaOperateMenuBean mediaOperateMenuBean) {
        View view = baseViewHolder.itemView;
        int i = R.id.iv_media_operate_menu_icon;
        ImageView imageView = (ImageView) view.findViewById(i);
        OSIconTextView oSIconTextView = (OSIconTextView) baseViewHolder.getView(R.id.icon_text);
        boolean z = mediaOperateMenuBean.getIconName() != null;
        if (z) {
            oSIconTextView.setText(mediaOperateMenuBean.getIconName());
        } else {
            imageView.setImageResource(mediaOperateMenuBean.iconResId);
        }
        imageView.setVisibility(z ? 8 : 0);
        oSIconTextView.setVisibility(!z ? 8 : 0);
        TextView textView = (TextView) baseViewHolder.itemView.findViewById(R.id.tv_media_operate_menu_name);
        textView.setText(mediaOperateMenuBean.name);
        baseViewHolder.itemView.findViewById(R.id.bv_point).setVisibility((!mediaOperateMenuBean.isNeedPoint || ydc.e()) ? 8 : 0);
        textView.setEnabled(mediaOperateMenuBean.isEnable);
        imageView.setEnabled(mediaOperateMenuBean.isEnable);
        oSIconTextView.setEnabled(mediaOperateMenuBean.isEnable);
        baseViewHolder.itemView.setEnabled(mediaOperateMenuBean.isEnable);
        if (mediaOperateMenuBean.flagId == 4) {
            g(baseViewHolder.getView(i));
        }
    }

    public void release() {
        PopupWindow popupWindow = this.o;
        if (popupWindow == null || !popupWindow.isShowing()) {
            return;
        }
        this.o.dismiss();
        this.o = null;
    }
}
