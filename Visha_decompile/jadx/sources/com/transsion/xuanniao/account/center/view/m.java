package com.transsion.xuanniao.account.center.view;

import java.io.File;

public class m implements o.c {
    public final PersonInfoActivity a;

    public m(PersonInfoActivity personInfoActivity) {
        this.a = personInfoActivity;
    }

    @Override
    public void a(File file) {
        this.a.f.d("jpg", Long.valueOf(file.length()));
    }
}
