package defpackage;

import android.provider.Settings;
import com.google.android.gms.internal.ads.e0;
import java.lang.reflect.InvocationTargetException;

public final class rse extends tte {
    public rse(e0 e0Var, String str, String str2, ooe ooeVar, int i, int i2) {
        super(e0Var, "fKVfiHZPk3J/7s88V7DzlZpEiXT6V6JMDKZcc8OXmSTlXSMCJqbgkpAjwt4Hv42+", "vXYwSfgYAf7Qju1dl2aLGAb3jpSjakcmzbZlMMTwaIs=", ooeVar, i, 49);
    }

    @Override
    public final void a() throws InvocationTargetException {
        ooe ooeVar = this.e;
        ooeVar.U(3);
        try {
            int i = 1;
            if (true == ((Boolean) this.f.invoke(null, this.b.b())).booleanValue()) {
                i = 2;
            }
            ooeVar.U(i);
        } catch (InvocationTargetException e) {
            if (!(e.getTargetException() instanceof Settings.SettingNotFoundException)) {
                throw e;
            }
        }
    }
}
