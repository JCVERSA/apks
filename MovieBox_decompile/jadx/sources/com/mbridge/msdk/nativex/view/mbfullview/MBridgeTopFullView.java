package com.mbridge.msdk.nativex.view.mbfullview;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;

public class MBridgeTopFullView extends BaseView {
    public static final String INTERFACE_RESULT = MBridgeTopFullView.class.getName() + "WithResault";

    protected ImageView f35877j;

    protected TextView f35878k;

    protected TextView f35879l;

    protected StarLevelLayoutView f35880m;

    public MBridgeTopFullView(Context context) {
        super(context);
        View viewInflate = LayoutInflater.from(getContext()).inflate(g0.a(getContext(), "mbridge_nativex_fullscreen_top", TtmlNode.TAG_LAYOUT), this.f35873i);
        if (viewInflate != null) {
            this.f35877j = (ImageView) viewInflate.findViewById(g0.a(getContext(), "mbridge_full_tv_display_icon", "id"));
            this.f35878k = (TextView) viewInflate.findViewById(g0.a(getContext(), "mbridge_full_tv_display_title", "id"));
            this.f35879l = (TextView) viewInflate.findViewById(g0.a(getContext(), "mbridge_full_tv_display_description", "id"));
            this.f35880m = (StarLevelLayoutView) viewInflate.findViewById(g0.a(getContext(), "mbridge_full_tv_feeds_star", "id"));
            this.f35879l.setTextColor(-7829368);
            viewInflate.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            updateLayoutParams();
        }
    }

    public TextView getMBridgeFullViewDisplayDscription() {
        return this.f35879l;
    }

    public ImageView getMBridgeFullViewDisplayIcon() {
        return this.f35877j;
    }

    public TextView getMBridgeFullViewDisplayTitle() {
        return this.f35878k;
    }

    public StarLevelLayoutView getStarLevelLayoutView() {
        return this.f35880m;
    }

    public void updateLayoutParams() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(10);
        this.f35865a.setLayoutParams(layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(10);
        this.f35866b.setLayoutParams(layoutParams2);
    }
}
