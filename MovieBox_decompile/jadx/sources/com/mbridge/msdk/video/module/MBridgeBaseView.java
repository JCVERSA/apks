package com.mbridge.msdk.video.module;

import android.content.Context;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.video.module.listener.a;
import com.mbridge.msdk.video.module.listener.impl.f;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class MBridgeBaseView extends RelativeLayout {
    public static final String TAG = "MBridgeBaseView";

    protected Context f38393a;

    protected CampaignEx f38394b;

    protected LayoutInflater f38395c;

    protected int f38396d;

    protected boolean f38397e;

    protected float f38398f;

    protected float f38399g;

    protected boolean f38400h;

    protected int f38401i;

    protected boolean f38402j;

    protected int f38403k;

    protected int f38404l;
    public a notifyListener;

    public MBridgeBaseView(Context context) {
        this(context, null);
    }

    protected JSONObject a(int i10) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put(com.mbridge.msdk.foundation.same.a.f34504h, t0.b(c.m().d(), this.f38398f));
                jSONObject2.put(com.mbridge.msdk.foundation.same.a.f34505i, t0.b(c.m().d(), this.f38399g));
                jSONObject2.put(com.mbridge.msdk.foundation.same.a.f34509m, i10);
                try {
                    this.f38396d = getContext().getResources().getConfiguration().orientation;
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                jSONObject2.put(com.mbridge.msdk.foundation.same.a.f34507k, this.f38396d);
                jSONObject2.put(com.mbridge.msdk.foundation.same.a.f34508l, t0.d(getContext()));
                return jSONObject2;
            } catch (JSONException e11) {
                e = e11;
                jSONObject = jSONObject2;
                e.printStackTrace();
                return jSONObject;
            }
        } catch (JSONException e12) {
            e = e12;
        }
    }

    protected String c() {
        return a(0).toString();
    }

    protected void d() {
    }

    public void defaultShow() {
        o0.a(TAG, "defaultShow");
    }

    public int filterFindViewId(boolean z10, String str) {
        return z10 ? findDyID(str) : findID(str);
    }

    public int findColor(String str) {
        return g0.a(this.f38393a.getApplicationContext(), str, TtmlNode.ATTR_TTS_COLOR);
    }

    public int findDrawable(String str) {
        return g0.a(this.f38393a.getApplicationContext(), str, "drawable");
    }

    public int findDyID(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        return str.hashCode();
    }

    public int findID(String str) {
        return g0.a(this.f38393a.getApplicationContext(), str, "id");
    }

    public int findLayout(String str) {
        return g0.a(this.f38393a.getApplicationContext(), str, TtmlNode.TAG_LAYOUT);
    }

    public CampaignEx getCampaign() {
        return this.f38394b;
    }

    public LinearLayout.LayoutParams getParentLinearLayoutParams() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            return (LinearLayout.LayoutParams) layoutParams;
        }
        return null;
    }

    public RelativeLayout.LayoutParams getParentRelativeLayoutParams() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof RelativeLayout.LayoutParams) {
            return (RelativeLayout.LayoutParams) layoutParams;
        }
        return null;
    }

    public abstract void init(Context context);

    public boolean isLandscape() {
        return this.f38393a.getResources().getConfiguration().orientation == 2;
    }

    public boolean isNotNULL(View... viewArr) {
        if (viewArr == null) {
            return false;
        }
        int length = viewArr.length;
        int i10 = 0;
        boolean z10 = false;
        while (i10 < length) {
            if (viewArr[i10] == null) {
                return false;
            }
            i10++;
            z10 = true;
        }
        return z10;
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        this.f38396d = configuration.orientation;
        super.onConfigurationChanged(configuration);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onConfigurationChanged:");
        sb2.append(configuration.orientation);
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.f38398f = motionEvent.getRawX();
        this.f38399g = motionEvent.getRawY();
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void onSelfConfigurationChanged(Configuration configuration) {
        this.f38396d = configuration.orientation;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onSelfConfigurationChanged:");
        sb2.append(configuration.orientation);
    }

    public void setCampaign(CampaignEx campaignEx) {
        this.f38394b = campaignEx;
    }

    public void setLayoutCenter(int i10, int i11) {
        RelativeLayout.LayoutParams parentRelativeLayoutParams = getParentRelativeLayoutParams();
        LinearLayout.LayoutParams parentLinearLayoutParams = getParentLinearLayoutParams();
        if (parentRelativeLayoutParams != null) {
            parentRelativeLayoutParams.addRule(13);
            if (i10 != -999) {
                parentRelativeLayoutParams.width = i10;
            }
            if (i11 != -999) {
                parentRelativeLayoutParams.height = i11;
            }
            setLayoutParams(parentRelativeLayoutParams);
            return;
        }
        if (parentLinearLayoutParams != null) {
            parentLinearLayoutParams.gravity = 17;
            if (i10 != -999) {
                parentLinearLayoutParams.width = i10;
            }
            if (i11 != -999) {
                parentLinearLayoutParams.height = i11;
            }
            setLayoutParams(parentLinearLayoutParams);
        }
    }

    public void setLayoutParam(int i10, int i11, int i12, int i13) {
        RelativeLayout.LayoutParams parentRelativeLayoutParams = getParentRelativeLayoutParams();
        LinearLayout.LayoutParams parentLinearLayoutParams = getParentLinearLayoutParams();
        if (parentRelativeLayoutParams != null) {
            parentRelativeLayoutParams.topMargin = i11;
            parentRelativeLayoutParams.leftMargin = i10;
            if (i12 != -999) {
                parentRelativeLayoutParams.width = i12;
            }
            if (i13 != -999) {
                parentRelativeLayoutParams.height = i13;
            }
            setLayoutParams(parentRelativeLayoutParams);
            return;
        }
        if (parentLinearLayoutParams != null) {
            parentLinearLayoutParams.topMargin = i11;
            parentLinearLayoutParams.leftMargin = i10;
            if (i12 != -999) {
                parentLinearLayoutParams.width = i12;
            }
            if (i13 != -999) {
                parentLinearLayoutParams.height = i13;
            }
            setLayoutParams(parentLinearLayoutParams);
        }
    }

    public void setMatchParent() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        } else {
            layoutParams.height = -1;
            layoutParams.width = -1;
        }
    }

    public void setNotifyListener(a aVar) {
        this.notifyListener = aVar;
    }

    public void setWrapContent() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        } else {
            layoutParams.height = -2;
            layoutParams.width = -2;
        }
    }

    public MBridgeBaseView(Context context, AttributeSet attributeSet, boolean z10, int i10, boolean z11, int i11, int i12) {
        super(context, attributeSet);
        this.f38396d = 1;
        this.notifyListener = new f();
        this.f38397e = false;
        this.f38403k = 1;
        this.f38404l = 0;
        this.f38393a = context;
        this.f38395c = LayoutInflater.from(context);
        this.f38400h = z10;
        this.f38401i = i10;
        this.f38402j = z11;
        this.f38403k = i11;
        this.f38404l = i12;
        init(context);
    }

    public MBridgeBaseView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f38396d = 1;
        this.notifyListener = new f();
        this.f38397e = false;
        this.f38403k = 1;
        this.f38404l = 0;
        this.f38393a = context;
        this.f38395c = LayoutInflater.from(context);
        init(context);
    }
}
