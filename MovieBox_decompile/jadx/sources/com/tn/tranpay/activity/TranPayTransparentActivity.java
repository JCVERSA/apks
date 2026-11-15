package com.tn.tranpay.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.Window;
import androidx.appcompat.app.AppCompatActivity;
import com.tn.tranpay.BillingParams;
import com.tn.tranpay.TranPayClient;
import com.tn.tranpay.c;
import com.tn.tranpay.d;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import lh.a;
import org.mvel2.ast.ASTNode;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\t\u0010\u0003¨\u0006\u000b"}, d2 = {"Lcom/tn/tranpay/activity/TranPayTransparentActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "onDestroy", "a", "lib_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class TranPayTransparentActivity extends AppCompatActivity {

    public static final Companion INSTANCE = new Companion(null);

    private static final Map f40515b = new LinkedHashMap();

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Context context, BillingParams params, d callback) {
            Intrinsics.h(context, "context");
            Intrinsics.h(params, "params");
            Intrinsics.h(callback, "callback");
            long jCurrentTimeMillis = System.currentTimeMillis();
            double dRandom = Math.random();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(jCurrentTimeMillis);
            sb2.append(dRandom);
            String string = sb2.toString();
            TranPayTransparentActivity.f40515b.put(string, callback);
            Intent intent = new Intent(context, (Class<?>) TranPayTransparentActivity.class);
            intent.putExtra("extra_billing_params", params);
            intent.putExtra("extra_callback_id", string);
            intent.addFlags(ASTNode.DEOP);
            context.startActivity(intent);
        }

        private Companion() {
        }
    }

    public static final class b implements d {

        final d f40516a;

        final TranPayTransparentActivity f40517b;

        b(d dVar, TranPayTransparentActivity tranPayTransparentActivity) {
            this.f40516a = dVar;
            this.f40517b = tranPayTransparentActivity;
        }

        @Override
        public void a(com.tn.tranpay.b result, c cVar) {
            Intrinsics.h(result, "result");
            a aVar = a.f65699a;
            a.g(aVar, "TranPayTransparentActivity: Payment callback received, code=" + result.b(), null, 2, null);
            this.f40516a.a(result, cVar);
            a.g(aVar, "TranPayTransparentActivity: Payment completed, finishing activity", null, 2, null);
            this.f40517b.finish();
        }
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Window window = getWindow();
        if (window != null) {
            window.setStatusBarColor(0);
            window.setNavigationBarColor(0);
            window.setFlags(67108864, 67108864);
            window.addFlags(128);
        }
        a aVar = a.f65699a;
        a.g(aVar, "TranPayTransparentActivity: onCreate, keeping activity alive", null, 2, null);
        BillingParams billingParams = (BillingParams) getIntent().getParcelableExtra("extra_billing_params");
        String stringExtra = getIntent().getStringExtra("extra_callback_id");
        d dVar = stringExtra != null ? (d) f40515b.get(stringExtra) : null;
        if (billingParams == null || dVar == null) {
            a.e(aVar, "TranPayTransparentActivity: missing params or callback", null, 2, null);
            if (dVar != null) {
                dVar.a(new com.tn.tranpay.b(-1, ""), null);
            }
            finish();
            return;
        }
        a.g(aVar, "TranPayTransparentActivity: launching billing flow with txnId: " + billingParams.getTxnId(), null, 2, null);
        a.g(aVar, "TranPayTransparentActivity: Ready to launch payment, will keep activity alive until callback", null, 2, null);
        TranPayClient.f40493a.c(this, billingParams, new b(dVar, this));
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        a aVar = a.f65699a;
        a.e(aVar, "TranPayTransparentActivity: onDestroy - This should only happen after payment callback!", null, 2, null);
        String stringExtra = getIntent().getStringExtra("extra_callback_id");
        if (stringExtra == null || ((d) f40515b.remove(stringExtra)) == null) {
            return;
        }
        a.k(aVar, "TranPayTransparentActivity: Callback was removed due to activity destruction!", null, 2, null);
    }
}
