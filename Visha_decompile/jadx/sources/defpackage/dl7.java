package defpackage;

import android.text.TextUtils;
import com.transsion.xuanniao.account.bind.contact.view.BindingEmergencyContactActivity;
import com.transsion.xuanniao.account.center.view.p;
import org.slf4j.Marker;

public class dl7 implements p.b {
    public final BindingEmergencyContactActivity a;

    public dl7(BindingEmergencyContactActivity bindingEmergencyContactActivity) {
        this.a = bindingEmergencyContactActivity;
    }

    @Override
    public void a(String str, String str2, String str3) {
        int iIndexOf;
        if (!TextUtils.isEmpty(str)) {
            this.a.f.setText(str);
        }
        if (!TextUtils.isEmpty(str2)) {
            if (str2.contains(Marker.ANY_NON_NULL_MARKER) && str2.indexOf(Marker.ANY_NON_NULL_MARKER) == 0 && (iIndexOf = (str2 = str2.replace("-", " ")).indexOf(" ")) > 0) {
                this.a.i.b = str2.substring(1, iIndexOf);
                BindingEmergencyContactActivity bindingEmergencyContactActivity = this.a;
                bindingEmergencyContactActivity.g.setCc(bindingEmergencyContactActivity.i.f());
                str2 = str2.substring(iIndexOf);
            }
            this.a.g.setText(str2.replaceAll("[[\\s-:punct:]]", ""));
        }
        if (TextUtils.isEmpty(str3)) {
            return;
        }
        this.a.h.setText(str3);
    }
}
