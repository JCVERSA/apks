package com.transsion.onlinevideo.mangotv;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.transsion.dbdata.beans.onlinevideo.FeedStreamBean;
import com.transsion.onlinevideo.R;
import defpackage.dt7;
import defpackage.fi1;

public class VkDialog extends IntroDialog {
    public FeedStreamBean E;
    public String F;
    public String G;
    public String H;
    public String I;
    public String J;

    public static VkDialog O(FeedStreamBean feedStreamBean, String str, String str2, String str3, String str4, String str5) {
        VkDialog vkDialog = new VkDialog();
        vkDialog.E = feedStreamBean;
        vkDialog.F = str;
        vkDialog.G = str2;
        vkDialog.H = str3;
        vkDialog.I = str4;
        vkDialog.J = str5;
        Bundle bundle = new Bundle();
        if (feedStreamBean != null) {
            bundle.putString("arg_vk_feed_bean", fi1.e(feedStreamBean));
        }
        bundle.putString("arg_vk_id", str);
        bundle.putString("arg_vk_source_image", str2);
        bundle.putString("arg_vk_cover_image", str3);
        bundle.putString("arg_vk_source_name", str4);
        bundle.putString("arg_vk_video_name", str5);
        vkDialog.setArguments(bundle);
        return vkDialog;
    }

    public final void P() {
        Bundle arguments = getArguments();
        if (arguments == null) {
            return;
        }
        if (this.E == null) {
            String string = arguments.getString("arg_vk_feed_bean");
            if (!TextUtils.isEmpty(string)) {
                this.E = (FeedStreamBean) fi1.b(string, FeedStreamBean.class);
            }
        }
        if (this.F == null) {
            this.F = arguments.getString("arg_vk_id");
        }
        if (this.G == null) {
            this.G = arguments.getString("arg_vk_source_image");
        }
        if (this.H == null) {
            this.H = arguments.getString("arg_vk_cover_image");
        }
        if (this.I == null) {
            this.I = arguments.getString("arg_vk_source_name");
        }
        if (this.J == null) {
            this.J = arguments.getString("arg_vk_video_name");
        }
    }

    @Override
    public int getLayoutId() {
        return R.layout.layout_vk_introduce;
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        P();
    }

    @Override
    public void v(View view) {
        P();
        TextView textView = (TextView) view.findViewById(R.id.vk_title);
        if (!TextUtils.isEmpty(this.J)) {
            textView.setText(this.J);
        }
        TextView textView2 = (TextView) view.findViewById(R.id.vk_short_desc);
        FeedStreamBean feedStreamBean = this.E;
        FeedStreamBean.VideoBean video = feedStreamBean != null ? feedStreamBean.getVideo() : null;
        if (video != null) {
            textView2.setText(dt7.g(video.getViews().longValue(), video.getLikes().longValue(), video.getCreated()));
        }
        TextView textView3 = (TextView) view.findViewById(R.id.vk_desc);
        FeedStreamBean feedStreamBean2 = this.E;
        if (feedStreamBean2 == null || TextUtils.isEmpty(feedStreamBean2.getShortDescribe())) {
            return;
        }
        textView3.setText(this.E.getShortDescribe());
    }
}
