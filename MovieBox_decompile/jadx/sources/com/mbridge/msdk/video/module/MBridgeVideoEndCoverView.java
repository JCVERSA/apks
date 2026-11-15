package com.mbridge.msdk.video.module;

import android.content.Context;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.video.module.listener.impl.j;
import org.json.JSONException;
import org.json.JSONObject;

public class MBridgeVideoEndCoverView extends MBridgeBaseView {

    private final String f38514m;

    private View f38515n;

    private ImageView f38516o;

    private ImageView f38517p;

    private TextView f38518q;

    private TextView f38519r;

    private TextView f38520s;

    private com.mbridge.msdk.video.signal.factory.b f38521t;

    class a implements View.OnClickListener {
        a() {
        }

        @Override
        public void onClick(View view) {
            MBridgeVideoEndCoverView.this.notifyListener.a(104, "");
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override
        public void onClick(View view) {
            MBridgeVideoEndCoverView.this.g();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override
        public void onClick(View view) {
            MBridgeVideoEndCoverView.this.g();
        }
    }

    public MBridgeVideoEndCoverView(Context context) {
        super(context);
        this.f38514m = "MBridgeVideoEndCoverView";
    }

    private boolean a(View view) {
        if (view == null) {
            return true;
        }
        try {
            this.f38516o = (ImageView) view.findViewById(findID("mbridge_vec_iv_icon"));
            this.f38517p = (ImageView) view.findViewById(findID("mbridge_vec_iv_close"));
            this.f38518q = (TextView) view.findViewById(findID("mbridge_vec_tv_title"));
            this.f38519r = (TextView) view.findViewById(findID("mbridge_vec_tv_desc"));
            this.f38520s = (TextView) view.findViewById(findID("mbridge_vec_btn"));
            return true;
        } catch (Throwable th2) {
            o0.b("MBridgeVideoEndCoverView", th2.getMessage());
            return false;
        }
    }

    private void e() {
        ImageView imageView;
        CampaignEx campaignEx = this.f38394b;
        if (campaignEx != null) {
            if (!TextUtils.isEmpty(campaignEx.getIconUrl()) && (imageView = this.f38516o) != null) {
                com.mbridge.msdk.foundation.same.image.b.a(this.f38393a.getApplicationContext()).a(this.f38394b.getIconUrl(), new j(imageView, t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 8.0f)));
            }
            TextView textView = this.f38518q;
            if (textView != null) {
                textView.setText(this.f38394b.getAppName());
            }
            TextView textView2 = this.f38520s;
            if (textView2 != null) {
                textView2.setText(this.f38394b.getAdCall());
            }
            TextView textView3 = this.f38519r;
            if (textView3 != null) {
                textView3.setText(this.f38394b.getAppDesc());
            }
        }
    }

    private void f() {
        View view = this.f38515n;
        if (view == null) {
            init(this.f38393a);
            preLoadData(this.f38521t);
            return;
        }
        if (view.getParent() != null) {
            ((ViewGroup) this.f38515n.getParent()).removeView(this.f38515n);
        }
        addView(this.f38515n);
        a(this.f38515n);
        d();
    }

    @Override
    protected void d() {
        super.d();
        this.f38517p.setOnClickListener(new a());
        this.f38516o.setOnClickListener(new b());
        this.f38520s.setOnClickListener(new c());
    }

    protected void g() {
        JSONException e10;
        JSONObject jSONObject;
        JSONObject jSONObject2;
        JSONException e11;
        try {
            JSONObject jSONObject3 = new JSONObject();
            try {
                jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put(com.mbridge.msdk.foundation.same.a.f34504h, t0.b(com.mbridge.msdk.foundation.controller.c.m().d(), this.f38398f));
                    jSONObject2.put(com.mbridge.msdk.foundation.same.a.f34505i, t0.b(com.mbridge.msdk.foundation.controller.c.m().d(), this.f38399g));
                    jSONObject2.put(com.mbridge.msdk.foundation.same.a.f34509m, 0);
                    try {
                        this.f38396d = getContext().getResources().getConfiguration().orientation;
                    } catch (Exception e12) {
                        e12.printStackTrace();
                    }
                    jSONObject2.put(com.mbridge.msdk.foundation.same.a.f34507k, this.f38396d);
                    jSONObject2.put(com.mbridge.msdk.foundation.same.a.f34508l, t0.d(getContext()));
                } catch (JSONException e13) {
                    e11 = e13;
                    o0.b("MBridgeVideoEndCoverView", e11.getMessage());
                }
            } catch (JSONException e14) {
                jSONObject2 = jSONObject3;
                e11 = e14;
            }
            jSONObject = new JSONObject();
            try {
                jSONObject.put(com.mbridge.msdk.foundation.same.a.f34506j, jSONObject2);
            } catch (JSONException e15) {
                e10 = e15;
                e10.printStackTrace();
            }
        } catch (JSONException e16) {
            e10 = e16;
            jSONObject = null;
        }
        this.notifyListener.a(105, jSONObject);
    }

    @Override
    public void init(Context context) {
        int iFindLayout = findLayout("mbridge_reward_videoend_cover");
        if (g0.a(iFindLayout)) {
            View viewInflate = this.f38395c.inflate(iFindLayout, (ViewGroup) null);
            this.f38515n = viewInflate;
            if (viewInflate != null) {
                this.f38397e = a(viewInflate);
                addView(this.f38515n, -1, -1);
                d();
            }
        }
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.f38398f = motionEvent.getRawX();
        this.f38399g = motionEvent.getRawY();
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override
    public void onSelfConfigurationChanged(Configuration configuration) {
        super.onSelfConfigurationChanged(configuration);
        this.f38396d = configuration.orientation;
        removeView(this.f38515n);
        f();
    }

    public void preLoadData(com.mbridge.msdk.video.signal.factory.b bVar) {
        this.f38521t = bVar;
        try {
            if (this.f38394b == null || !this.f38397e) {
                return;
            }
            e();
        } catch (Throwable th2) {
            o0.a("MBridgeVideoEndCoverView", th2.getMessage());
        }
    }

    public MBridgeVideoEndCoverView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f38514m = "MBridgeVideoEndCoverView";
    }
}
