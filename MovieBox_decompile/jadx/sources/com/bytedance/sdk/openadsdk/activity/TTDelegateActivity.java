package com.bytedance.sdk.openadsdk.activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.Zq;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.sef;
import com.bytedance.sdk.openadsdk.core.uA;
import com.bytedance.sdk.openadsdk.core.uP;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.mvel2.ast.ASTNode;

public class TTDelegateActivity extends TTBaseActivity {
    private static final Map<String, com.bytedance.sdk.openadsdk.core.TKC.EjP.Sj> TKC = Collections.synchronizedMap(new HashMap());
    private Intent Sj;
    private uP sP;

    private void TKC() {
        int intExtra = this.Sj.getIntExtra(NativeComponentConstants.KEY_COMPONENT_TYPE, 0);
        if (intExtra != 1) {
            if (intExtra != 6) {
                finish();
                return;
            }
            Sj(this.Sj.getStringExtra("ext_info"), this.Sj.getStringExtra("filter_words"), this.Sj.getStringExtra("closed_listener_key"), this.Sj.getStringExtra("creative_info"));
        }
    }

    private void sP() {
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.alpha = 0.0f;
        window.setAttributes(attributes);
    }

    @Override
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (!sef.HiB()) {
            finish();
            return;
        }
        sP();
        this.Sj = getIntent();
        if (dNu.Sj() == null) {
            dNu.sP(this);
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        uP uPVar = this.sP;
        if (uPVar != null) {
            uPVar.sP();
        }
    }

    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (dNu.Sj() == null) {
            dNu.sP(this);
        }
        setIntent(intent);
        this.Sj = intent;
    }

    @Override
    protected void onResume() {
        super.onResume();
        uP uPVar = this.sP;
        if ((uPVar == null || ((com.bytedance.sdk.openadsdk.TKC.TKC) uPVar).Sj == null || !((com.bytedance.sdk.openadsdk.TKC.TKC) uPVar).Sj.isShowing()) && this.Sj != null) {
            TKC();
        }
    }

    public static void Sj(sU sUVar, String str, com.bytedance.sdk.openadsdk.core.TKC.EjP.Sj sj2) {
        if (sUVar == null) {
            return;
        }
        Intent intent = new Intent(dNu.Sj(), (Class<?>) TTDelegateActivity.class);
        intent.addFlags(ASTNode.DEOP);
        intent.putExtra(NativeComponentConstants.KEY_COMPONENT_TYPE, 6);
        intent.putExtra("ext_info", sUVar.mZN());
        intent.putExtra("filter_words", com.bytedance.sdk.openadsdk.tool.Sj.Sj(sUVar.nru()));
        intent.putExtra("creative_info", sUVar.SP().toString());
        intent.putExtra("closed_listener_key", str);
        if (sj2 != null) {
            if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
                uA.sP().Sj(str, sj2);
            } else {
                TKC.put(str, sj2);
            }
        }
        com.bytedance.sdk.component.utils.sP.Sj(dNu.Sj(), intent, null);
    }

    public static void Sj(sU sUVar, String str) {
        Sj(sUVar, str, null);
    }

    private void Sj(String str, String str2, final String str3, String str4) {
        if (str2 != null && str != null && this.sP == null) {
            com.bytedance.sdk.openadsdk.TKC.TKC tkc = new com.bytedance.sdk.openadsdk.TKC.TKC(this, str, com.bytedance.sdk.openadsdk.tool.Sj.Sj(str2), str4, OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER);
            this.sP = tkc;
            tkc.Sj(str3);
            this.sP.Sj(new uP.Sj() {
                @Override
                public void Sj(int i10, String str5) {
                    com.bytedance.sdk.openadsdk.core.TKC.EjP.Sj sjHiB;
                    if (TTDelegateActivity.TKC != null && TTDelegateActivity.TKC.size() > 0 && !TextUtils.isEmpty(str3) && !com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
                        com.bytedance.sdk.openadsdk.core.TKC.EjP.Sj sj2 = (com.bytedance.sdk.openadsdk.core.TKC.EjP.Sj) TTDelegateActivity.TKC.get(str3);
                        if (sj2 != null) {
                            sj2.Sj();
                        }
                    } else if (!TextUtils.isEmpty(str3) && (sjHiB = uA.sP().HiB(str3)) != null) {
                        sjHiB.Sj();
                        uA.sP().vS(str3);
                    }
                    TTDelegateActivity.this.Sj(str3);
                    TTDelegateActivity.this.finish();
                }

                @Override
                public void Sj() {
                    if (!((com.bytedance.sdk.openadsdk.TKC.TKC) TTDelegateActivity.this.sP).TKC()) {
                        TTDelegateActivity.this.Sj(str3);
                        TTDelegateActivity.this.finish();
                    }
                    ((com.bytedance.sdk.openadsdk.TKC.TKC) TTDelegateActivity.this.sP).Sj(false);
                }
            });
        }
        uP uPVar = this.sP;
        if (uPVar != null) {
            uPVar.Sj();
        }
    }

    public void Sj(String str) {
        Map<String, com.bytedance.sdk.openadsdk.core.TKC.EjP.Sj> map = TKC;
        if (map == null || TextUtils.isEmpty(str)) {
            return;
        }
        map.remove(str);
        if (Zq.EjP()) {
            map.size();
        }
    }
}
