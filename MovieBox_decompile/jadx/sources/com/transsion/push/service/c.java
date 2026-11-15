package com.transsion.push.service;

import android.app.job.JobWorkItem;
import android.content.Intent;

public abstract class c {
    public static JobWorkItem a(Intent intent) {
        return new JobWorkItem(intent);
    }
}
