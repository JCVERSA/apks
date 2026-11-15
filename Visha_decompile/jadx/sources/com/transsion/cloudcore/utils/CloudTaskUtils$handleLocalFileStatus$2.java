package com.transsion.cloudcore.utils;

import com.blankj.utilcode.util.LogUtils;
import com.transsion.cloudcore.db.CloudTaskEntity;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.io.File;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lnk1;", "", "", "", "<anonymous>", "(Lnk1;)Ljava/util/Map;"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.cloudcore.utils.CloudTaskUtils$handleLocalFileStatus$2", f = "CloudTaskUtils.kt", l = {}, m = "invokeSuspend")
public final class CloudTaskUtils$handleLocalFileStatus$2 extends SuspendLambda implements s74 {
    final List<CloudTaskEntity> $taskList;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CloudTaskUtils$handleLocalFileStatus$2(List<? extends CloudTaskEntity> list, wh1<? super CloudTaskUtils$handleLocalFileStatus$2> wh1Var) {
        super(2, wh1Var);
        this.$taskList = list;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new CloudTaskUtils$handleLocalFileStatus$2(this.$taskList, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super Map<String, Boolean>> wh1Var) {
        return ((CloudTaskUtils$handleLocalFileStatus$2) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        String str;
        z45.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        c.b(obj);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<CloudTaskEntity> it = this.$taskList.iterator();
        while (true) {
            boolean z = false;
            if (!it.hasNext()) {
                LogUtils.j("handleLocalFileStatus:" + linkedHashMap.size(), new Object[0]);
                return linkedHashMap;
            }
            CloudTaskEntity next = it.next();
            if (!next.isLocalFileExist || (str = next.localFilePath) == null || str.length() == 0) {
                String str2 = next.taskId;
                y45.i(str2, "taskId");
            } else {
                File file = new File(next.localFilePath);
                String str3 = next.taskId;
                y45.i(str3, "taskId");
                if (file.isFile() && file.exists()) {
                    z = true;
                }
            }
        }
    }
}
