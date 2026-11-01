package com.snaptube.taskManager.task.video;

import com.snaptube.extractor.pluginlib.models.Format;
import com.snaptube.plugin.extension.chooseformat.subtitles.SubtitleManager;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.taskManager.datasets.TaskInfo;
import com.snaptube.taskManager.task.TaskError;
import java.io.File;
import o.al7;
import o.cn5;
import o.dx2;
import o.gd;
import o.hd;
import o.id;
import o.if9;
import o.or3;
import o.y48;

public final class AdditionExtractManager {
    public static final AdditionExtractManager a = new AdditionExtractManager();

    public static void a(g gVar, String str) {
        h(gVar, str);
    }

    public static void b(g gVar, String str) {
        g(gVar, str);
    }

    public static rx.c c(dx2 dx2Var, Object obj) {
        return e(dx2Var, obj);
    }

    public static final rx.c e(dx2 dx2Var, Object obj) {
        or3.f(dx2Var, "$tmp0");
        return (rx.c) dx2Var.invoke(obj);
    }

    public static final void g(g gVar, String str) {
        or3.f(gVar, "$task");
        y48.n(new hd(gVar, str));
    }

    public static final void h(g gVar, String str) {
        or3.f(gVar, "$task");
        gVar.n2();
        gVar.p1(str, false);
    }

    public final rx.c d(TaskInfo taskInfo) {
        or3.f(taskInfo, "taskInfo");
        rx.c cVarH = PhoenixApplication.O().f(new com.snaptube.premium.extractor.a.C0416a(taskInfo.p(), "partial_info").c(true).e("required_fields", cn5.a("title", Format.Fields.THUMBNAIL)).a(), 1).H(new id(AdditionExtractManager$getTitleAndCoverInfo$1.INSTANCE));
        or3.e(cVarH, "flatMap(...)");
        return cVarH;
    }

    public final void f(g gVar, String str, TaskInfo taskInfo) {
        or3.f(gVar, "task");
        or3.f(str, "oldFilePath");
        or3.f(taskInfo, "newTaskInfo");
        gVar.D0(new File(str), new File(taskInfo.i()), "addition extract", TaskError.MP3_RENAME_FILE_FAILED, new gd(gVar));
        String strP = taskInfo.p();
        String strI = taskInfo.i();
        or3.e(strI, "getFilePath(...)");
        i(strP, str, strI);
    }

    public final void i(String str, String str2, String str3) {
        if (if9.D(str)) {
            SubtitleManager.a.y(str2, str2);
            al7.k(str2, str3);
        }
    }
}
