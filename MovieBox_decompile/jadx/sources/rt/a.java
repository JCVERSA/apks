package rt;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import androidx.p009lifecycle.u;
import com.transsion.transfer.wifi.ui.WifiConnectActivity;
import com.transsion.transfer.wifi.ui.WifiCreateActivity;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.ast.ASTNode;

public final class a implements bu.a {
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void a(u ctx) {
        Intrinsics.h(ctx, "ctx");
        Activity activity = (Activity) ctx;
        Intent intent = new Intent(activity, (Class<?>) WifiCreateActivity.class);
        intent.addFlags(ASTNode.DEOP);
        activity.startActivity(intent);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void b(u ctx) {
        Intrinsics.h(ctx, "ctx");
        Activity activity = (Activity) ctx;
        Intent intent = new Intent(activity, (Class<?>) WifiConnectActivity.class);
        if (ctx instanceof Application) {
            intent.addFlags(ASTNode.DEOP);
        }
        activity.startActivity(intent);
    }
}
