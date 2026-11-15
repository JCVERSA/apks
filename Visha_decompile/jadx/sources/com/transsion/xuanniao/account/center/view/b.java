package com.transsion.xuanniao.account.center.view;

import android.text.TextUtils;
import org.slf4j.Marker;

public class b implements p.b {
    public final EditAddressActivity a;

    public b(EditAddressActivity editAddressActivity) {
        this.a = editAddressActivity;
    }

    @Override
    public void a(String str, String str2, String str3) {
        int iIndexOf;
        if (!TextUtils.isEmpty(str)) {
            this.a.g.setText(str);
        }
        if (!TextUtils.isEmpty(str2)) {
            if (str2.contains(Marker.ANY_NON_NULL_MARKER) && str2.indexOf(Marker.ANY_NON_NULL_MARKER) == 0 && (iIndexOf = (str2 = str2.replace("-", " ")).indexOf(" ")) > 0) {
                this.a.p.d = str2.substring(1, iIndexOf);
                EditAddressActivity editAddressActivity = this.a;
                editAddressActivity.h.setCc(editAddressActivity.p.f());
                str2 = str2.substring(iIndexOf);
            }
            this.a.h.setText(str2.replaceAll("[[\\s-:punct:]]", ""));
        }
        if (TextUtils.isEmpty(this.a.g.getText())) {
            this.a.m.setVisibility(0);
        } else {
            this.a.m.setVisibility(4);
        }
        if (TextUtils.isEmpty(this.a.h.getText())) {
            this.a.n.setVisibility(0);
        } else {
            this.a.n.setVisibility(4);
        }
    }
}
