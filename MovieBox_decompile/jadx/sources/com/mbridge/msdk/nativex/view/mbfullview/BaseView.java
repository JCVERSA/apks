package com.mbridge.msdk.nativex.view.mbfullview;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;

public class BaseView extends RelativeLayout {

    protected RelativeLayout f35865a;

    protected RelativeLayout f35866b;

    protected RelativeLayout f35867c;

    protected ImageView f35868d;

    protected TextView f35869e;

    protected ProgressBar f35870f;

    protected FrameLayout f35871g;

    protected LinearLayout f35872h;

    protected RelativeLayout f35873i;
    public a style;

    public enum a {
        FULL_TOP_VIEW,
        FULL_MIDDLE_VIEW
    }

    public BaseView(Context context) {
        super(context);
        View viewInflate = LayoutInflater.from(getContext()).inflate(g0.a(getContext(), "mbridge_nativex_fullbasescreen", TtmlNode.TAG_LAYOUT), this);
        this.f35873i = (RelativeLayout) viewInflate;
        if (viewInflate != null) {
            this.f35865a = (RelativeLayout) viewInflate.findViewById(g0.a(getContext(), "mbridge_full_rl_playcontainer", "id"));
            this.f35866b = (RelativeLayout) viewInflate.findViewById(g0.a(getContext(), "mbridge_full_player_parent", "id"));
            this.f35867c = (RelativeLayout) viewInflate.findViewById(g0.a(getContext(), "mbridge_full_rl_close", "id"));
            this.f35868d = (ImageView) viewInflate.findViewById(g0.a(getContext(), "mbridge_full_iv_close", "id"));
            this.f35869e = (TextView) viewInflate.findViewById(g0.a(getContext(), "mbridge_full_tv_install", "id"));
            this.f35870f = (ProgressBar) viewInflate.findViewById(g0.a(getContext(), "mbridge_full_pb_loading", "id"));
            this.f35871g = (FrameLayout) viewInflate.findViewById(g0.a(getContext(), "mbridge_full_animation_content", "id"));
            this.f35872h = (LinearLayout) viewInflate.findViewById(g0.a(getContext(), "mbridge_full_animation_player", "id"));
            viewInflate.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        }
    }

    public RelativeLayout getMBridgeFullClose() {
        return this.f35867c;
    }

    public ImageView getMBridgeFullIvClose() {
        return this.f35868d;
    }

    public ProgressBar getMBridgeFullPb() {
        return this.f35870f;
    }

    public RelativeLayout getMBridgeFullPlayContainer() {
        return this.f35865a;
    }

    public RelativeLayout getMBridgeFullPlayerParent() {
        return this.f35866b;
    }

    public TextView getMBridgeFullTvInstall() {
        return this.f35869e;
    }

    public a getStytle() {
        return this.style;
    }

    public FrameLayout getmAnimationContent() {
        return this.f35871g;
    }

    public LinearLayout getmAnimationPlayer() {
        return this.f35872h;
    }

    public void setStytle(a aVar) {
        this.style = aVar;
    }
}
