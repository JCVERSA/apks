package com.snaptube.premium.files.binder.viewholder;

import android.text.TextUtils;
import android.view.View;
import com.snaptube.premium.model.VideoMyThingsCardModel;
import com.snaptube.taskManager.datasets.TaskInfo;
import com.snaptube.taskManager.datasets.a;
import com.snaptube.taskManager.provider.TaskInfoDBUtils;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import o.ap3;
import o.dx2;
import o.mg8;
import o.or3;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Landroid/view/View;", "it", "Lo/mg8;", "invoke", "(Landroid/view/View;)V", "<anonymous>"}, k = 3, mv = {1, 9, 0})
public final class ApkAdViewHolder$bind$1 extends Lambda implements dx2 {
    final VideoMyThingsCardModel $model;
    final ApkAdViewHolder this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApkAdViewHolder$bind$1(ApkAdViewHolder apkAdViewHolder, VideoMyThingsCardModel videoMyThingsCardModel) {
        super(1);
        this.this$0 = apkAdViewHolder;
        this.$model = videoMyThingsCardModel;
    }

    @Override
    public Object invoke(Object obj) {
        invoke((View) obj);
        return mg8.a;
    }

    public final void invoke(@NotNull View view) {
        or3.f(view, "it");
        ApkAdViewHolder apkAdViewHolder = this.this$0;
        ApkAdViewHolder.U(apkAdViewHolder, ApkAdViewHolder.T(apkAdViewHolder));
        List<TaskInfo> listH0 = TaskInfoDBUtils.H0();
        or3.e(listH0, "syncQueryFinishedApkTasks(...)");
        for (TaskInfo taskInfo : listH0) {
            if (taskInfo instanceof a) {
                a aVar = (a) taskInfo;
                if (TextUtils.equals(aVar.i(), this.$model.n().k().getFilePath())) {
                    ap3.g(aVar, "manually_install", "guide_apk_view_holder");
                    return;
                }
            }
        }
        ap3.i(this.$model.n().k().getFilePath(), ApkAdViewHolder.T(this.this$0), "guide_apk_view_holder");
    }
}
