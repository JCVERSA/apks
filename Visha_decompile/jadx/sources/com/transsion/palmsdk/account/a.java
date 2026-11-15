package com.transsion.palmsdk.account;

import android.os.Bundle;
import com.transsion.dbdata.beans.sniff.SniffSoucreBean;
import defpackage.rj7;
import defpackage.vj7;

public class a implements rj7 {
    public final XNManager.b.c a;

    public a(XNManager.b.c cVar) {
        this.a = cVar;
    }

    @Override
    public void a(int i, String str) {
        vj7.a.g("getAccessToken errorCode = " + i + ", errorMessage = " + str);
        this.a.a.setException(i, str);
    }

    @Override
    public void onSuccess(Object obj) {
        String str = (String) obj;
        vj7.a.g("getAccessToken response = " + str);
        if (str == null || !str.contains("access_token")) {
            this.a.a.setException(40104, "token data error");
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString(SniffSoucreBean.JSON_KEY_TOKEN_INFO, str);
        this.a.a.setResult(bundle);
    }
}
