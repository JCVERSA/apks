package com.snaptube.taskManager.task.video;

import com.snaptube.extractor.pluginlib.models.Format;
import com.snaptube.extractor.pluginlib.models.VideoInfo;
import com.snaptube.taskManager.datasets.TaskInfo;
import o.fs2;
import o.or3;
import o.pg1;

public final class a extends MetaInfoHelper {
    public static final C0471a g = new C0471a(null);
    public final Format f;

    public static final class C0471a {
        public C0471a() {
        }

        public C0471a(pg1 pg1Var) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(TaskInfo taskInfo, VideoInfo videoInfo, Format format) {
        super(taskInfo, videoInfo);
        or3.f(taskInfo, "taskInfo");
        or3.f(videoInfo, "videoInfo");
        this.f = format;
    }

    public final boolean j0() {
        Format format = this.f;
        if (format != null) {
            return fs2.r(format);
        }
        return false;
    }

    @Override
    public boolean w() {
        return S().isYoutube() && j0();
    }

    @Override
    public boolean x() {
        return g.g2(R());
    }
}
