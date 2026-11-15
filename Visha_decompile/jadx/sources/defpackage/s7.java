package defpackage;

import android.view.View;
import com.iab.omid.library.hisavana.adsession.FriendlyObstructionPurpose;

public abstract class s7 {
    public static s7 b(t7 t7Var, u7 u7Var) {
        agd.a();
        agd.d(t7Var, "AdSessionConfiguration is null");
        agd.d(u7Var, "AdSessionContext is null");
        return new e3d(t7Var, u7Var);
    }

    public abstract void a(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str);

    public abstract void c();

    public abstract void d(View view);

    public abstract void e();
}
