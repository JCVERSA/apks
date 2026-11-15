package com.mbridge.msdk.video.module;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.cloud.tmc.offline.download.model.TaskResultKt;
import com.mbridge.msdk.foundation.tools.g0;

public class MBridgeVastEndCardView extends MBridgeBaseView {

    private ViewGroup f38509m;

    private View f38510n;

    private View f38511o;

    class a implements View.OnClickListener {
        a() {
        }

        @Override
        public void onClick(View view) {
            MBridgeVastEndCardView.this.notifyListener.a(104, "");
        }
    }

    class b extends com.mbridge.msdk.widget.a {
        b() {
        }

        @Override
        protected void a(View view) {
            MBridgeVastEndCardView mBridgeVastEndCardView = MBridgeVastEndCardView.this;
            mBridgeVastEndCardView.notifyListener.a(TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY, mBridgeVastEndCardView.c());
        }
    }

    public MBridgeVastEndCardView(Context context) {
        super(context);
    }

    private boolean e() {
        this.f38509m = (ViewGroup) findViewById(findID("mbridge_rl_content"));
        this.f38510n = findViewById(findID("mbridge_iv_vastclose"));
        View viewFindViewById = findViewById(findID("mbridge_iv_vastok"));
        this.f38511o = viewFindViewById;
        return isNotNULL(this.f38509m, this.f38510n, viewFindViewById);
    }

    private void f() {
        if (this.f38397e) {
            setMatchParent();
            setBackgroundResource(findColor("mbridge_reward_endcard_vast_bg"));
            setClickable(true);
            ((RelativeLayout.LayoutParams) this.f38509m.getLayoutParams()).addRule(13, -1);
        }
    }

    @Override
    protected void d() {
        super.d();
        if (this.f38397e) {
            this.f38510n.setOnClickListener(new a());
            this.f38511o.setOnClickListener(new b());
        }
    }

    @Override
    public void init(Context context) {
        int iFindLayout = findLayout("mbridge_reward_endcard_vast");
        if (g0.a(iFindLayout)) {
            this.f38395c.inflate(iFindLayout, this);
            this.f38397e = e();
            d();
            f();
        }
    }

    public void notifyShowListener() {
        this.notifyListener.a(111, "");
    }

    public void preLoadData(com.mbridge.msdk.video.signal.factory.b bVar) {
    }

    public MBridgeVastEndCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
