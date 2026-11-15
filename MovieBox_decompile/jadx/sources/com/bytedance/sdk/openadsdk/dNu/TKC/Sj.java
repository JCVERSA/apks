package com.bytedance.sdk.openadsdk.dNu.TKC;

import android.content.Context;
import android.content.SharedPreferences;

public class Sj {
    private final SharedPreferences Sj;

    public Sj(Context context) {
        this.Sj = context.getSharedPreferences("pag_monitor_record", 0);
    }

    public long Sj() {
        return this.Sj.getLong("last_upload_time", 0L);
    }

    public void Sj(long j10) {
        SharedPreferences.Editor editorEdit = this.Sj.edit();
        editorEdit.putLong("last_upload_time", j10);
        editorEdit.apply();
    }
}
