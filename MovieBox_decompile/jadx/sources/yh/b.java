package yh;

import android.text.TextUtils;
import com.transsion.ad.monopoly.model.AdPlans;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.SOURCE)
public @interface b {

    public static final a f76265a = a.f76266a;

    public static final class a {

        static final a f76266a = new a();

        private a() {
        }

        public final boolean a(AdPlans adPlans) {
            return TextUtils.equals("AdShowFinal", adPlans != null ? adPlans.getAdShowLevel() : null);
        }
    }
}
