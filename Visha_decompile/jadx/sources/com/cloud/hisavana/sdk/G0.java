package com.cloud.hisavana.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.push.PushConstants;
import defpackage.e74;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 \u00142\u00020\u0001:\u0001\u0015B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0016\b\u0002\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\tJ#\u0010\u000e\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R$\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcom/cloud/hisavana/sdk/G0;", "Landroid/content/BroadcastReceiver;", "", PushConstants.PROVIDER_FIELD_APP_ID, "Lkotlin/Function1;", "", "Lzfb;", "onAddResult", MethodDecl.initName, "(Ljava/lang/String;Le74;)V", "Landroid/content/Context;", "context", "Landroid/content/Intent;", "intent", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Ljava/lang/String;", "b", "Le74;", "c", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class G0 extends BroadcastReceiver {

    public final String appId;

    public e74 onAddResult;

    public G0(String str, e74 e74Var) {
        y45.j(str, PushConstants.PROVIDER_FIELD_APP_ID);
        this.appId = str;
        this.onAddResult = e74Var;
    }

    @Override
    public void onReceive(Context context, Intent intent) {
        if (context == null || intent == null || !y45.e(intent.getAction(), "action_add_item_result_receiver")) {
            return;
        }
        String stringExtra = intent.getStringExtra("add_item_info_id_key");
        if (stringExtra == null) {
            stringExtra = "";
        }
        if (stringExtra.length() != 0 && y45.e(stringExtra, this.appId)) {
            int intExtra = intent.getIntExtra("add_item_result_key", -1);
            if (intExtra == 0) {
                e74 e74Var = this.onAddResult;
                if (e74Var != null) {
                    e74Var.invoke(0);
                }
            } else if (intExtra != 1) {
                e74 e74Var2 = this.onAddResult;
                if (e74Var2 != null) {
                    e74Var2.invoke(0);
                }
            } else {
                e74 e74Var3 = this.onAddResult;
                if (e74Var3 != null) {
                    e74Var3.invoke(1);
                }
            }
            this.onAddResult = null;
        }
    }
}
