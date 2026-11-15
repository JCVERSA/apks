package com.transsion.launch.task;

import android.content.Context;
import com.blankj.utilcode.util.ThreadUtils;
import com.tencent.mmkv.MMKV;
import com.transsion.sniffer_load.GlobalDownloadManger;
import defpackage.bg;
import defpackage.dec;
import defpackage.ec2;
import defpackage.jh5;
import defpackage.lw5;
import defpackage.v06;
import defpackage.vec;
import java.util.ArrayList;
import java.util.List;

public class GlobalDownloadMangerTask extends vec {
    public static List b;

    static {
        ArrayList arrayList = new ArrayList();
        b = arrayList;
        arrayList.add(lw5.class);
        b.add(bg.class);
        b.add(ec2.class);
        b.add(dec.class);
        b.add(v06.class);
        b.add(jh5.class);
    }

    @Override
    public boolean b() {
        return false;
    }

    @Override
    public boolean c() {
        return false;
    }

    @Override
    public List dependencies() {
        return b;
    }

    @Override
    public Void create(final Context context) {
        ThreadUtils.o().post(new Runnable() {
            @Override
            public void run() {
                GlobalDownloadManger.B().D(context);
            }
        });
        GlobalDownloadManger.d = MMKV.p().e("show_bt_enter", false);
        return null;
    }
}
