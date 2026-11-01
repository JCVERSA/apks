package com.snaptube.taskManager.task.video;

import android.content.Context;
import android.text.TextUtils;
import com.phoenix.download.DownloadInfo;
import com.phoenix.download.DownloadRequest;
import com.snaptube.taskManager.datasets.TaskInfo;
import com.snaptube.taskManager.task.TaskError;
import java.io.File;
import o.ah3;
import o.du1;
import o.yj2;

public class c extends du1 {
    public g.d n;

    public c(Context context, TaskInfo taskInfo) {
        super(context, taskInfo);
        this.n = new b(context, this, taskInfo);
    }

    @Override
    public File A0(int i) {
        return this.n.c(i);
    }

    @Override
    public int B0() {
        return this.n.f();
    }

    @Override
    public void C0() {
        this.n.a();
    }

    @Override
    public void F0() {
        C0();
    }

    @Override
    public void O(ah3 ah3Var) {
        if (this.d == null || !TextUtils.equals(ah3Var.getAction(), "ok")) {
            return;
        }
        ah3Var.setProperty("meta_details", MetaInfoHelper.Q(this.d));
    }

    @Override
    public void Q() {
        super.Q();
        this.n.e();
    }

    @Override
    public void R() {
        super.R();
        this.n.b();
    }

    @Override
    public void T() {
        super.T();
        this.n.onDestroy();
    }

    @Override
    public void W(DownloadInfo downloadInfo) {
    }

    @Override
    public void Z() {
        super.Z();
        if (!yj2.v(this.d.f479o)) {
            x(TaskError.INVALID_MEDIA_FILE, "Video file not exist.");
        } else {
            this.n.g(null, null);
            F0();
        }
    }

    @Override
    public DownloadRequest z0(int i) {
        return null;
    }
}
