package com.transsion.cloud.updownload.livedata;

import android.util.Log;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.p004lifecycle.LiveData;
import androidx.p004lifecycle.MediatorLiveData;
import androidx.p004lifecycle.Observer;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.cloud.updownload.livedata.SmartTaskLiveData;
import com.transsion.cloudcore.db.CloudTaskDao;
import com.transsion.cloudcore.db.CloudTaskEntity;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import defpackage.cl0;
import defpackage.db3;
import defpackage.e74;
import defpackage.e84;
import defpackage.el0;
import defpackage.mc2;
import defpackage.nk1;
import defpackage.v6a;
import defpackage.wh1;
import defpackage.x74;
import defpackage.y45;
import defpackage.zfb;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlinx.coroutines.j;

@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 52\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0003\u00186\u001aB\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ'\u0010\u000e\u001a\u00020\r2\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ \u0010\u0011\u001a\u00020\u00102\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0082@¢\u0006\u0004\b\u0011\u0010\u0012J \u0010\u0014\u001a\u00020\u00132\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0082@¢\u0006\u0004\b\u0014\u0010\u0012J\u001e\u0010\u0017\u001a\u00020\u00162\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0082@¢\u0006\u0004\b\u0017\u0010\u0012R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u001e\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001f\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010#\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0016\u0010'\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010)\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010&R\u0018\u0010,\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0014\u00100\u001a\u00020-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/R\u0018\u00104\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103¨\u00067"}, d2 = {"Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;", "Landroidx/lifecycle/MediatorLiveData;", "", "Lcom/transsion/cloudcore/db/CloudTaskEntity;", "Lcom/transsion/cloudcore/db/CloudTaskDao;", "dao", "Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;", "taskType", MethodDecl.initName, "(Lcom/transsion/cloudcore/db/CloudTaskDao;Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;)V", "newList", "", "newCount", "Lzfb;", "q", "(Ljava/util/List;I)V", "", TtmlNode.TAG_P, "(Ljava/util/List;Lwh1;)Ljava/lang/Object;", "", "r", "taskList", "Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;", "o", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;", "b", "Ljava/util/List;", "lastValue", "c", "I", "lastCount", "", "d", "J", "lastUpdateTime", "", "e", "Ljava/lang/String;", "lastTaskIds", "f", "lastFileExistStatus", GslbInterceptor.HEADER_KEY_GSLB, "Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;", "lastSignature", "Lnk1;", CmcdData.STREAMING_FORMAT_HLS, "Lnk1;", "coroutineScope", "Lkotlinx/coroutines/j;", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "Lkotlinx/coroutines/j;", "currentJob", "j", "TaskType", "sniffer_load_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SmartTaskLiveData extends MediatorLiveData<List<? extends CloudTaskEntity>> {

    public final TaskType taskType;

    public List lastValue;

    public int lastCount;

    public long lastUpdateTime;

    public String lastTaskIds;

    public String lastFileExistStatus;

    public b lastSignature;

    public final nk1 coroutineScope;

    public j currentJob;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;", "", MethodDecl.initName, "(Ljava/lang/String;I)V", "DOWNLOADED", "UPLOADED", "sniffer_load_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public enum TaskType {
        DOWNLOADED,
        UPLOADED;

        private static final db3 $ENTRIES = kotlin.enums.a.a(values());

        public static db3 getEntries() {
            return $ENTRIES;
        }
    }

    public static final class b {
        public final Set a;
        public final Map b;
        public final long c;

        public b(Set set, Map map, long j) {
            y45.j(set, "taskIds");
            y45.j(map, "fileExistMap");
            this.a = set;
            this.b = map;
            this.c = j;
        }

        public final Map a() {
            return this.b;
        }

        public final long b() {
            return this.c;
        }

        public final Set c() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return y45.e(this.a, bVar.a) && y45.e(this.b, bVar.b) && this.c == bVar.c;
        }

        public int hashCode() {
            return (((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + Long.hashCode(this.c);
        }

        public String toString() {
            return "TaskSignature(taskIds=" + this.a + ", fileExistMap=" + this.b + ", maxUpdateTime=" + this.c + ")";
        }
    }

    public class c {
        public static final int[] a;

        static {
            int[] iArr = new int[TaskType.values().length];
            try {
                iArr[TaskType.DOWNLOADED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TaskType.UPLOADED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    public static final class d implements Observer, e84 {
        public final e74 a;

        public d(e74 e74Var) {
            y45.j(e74Var, "function");
            this.a = e74Var;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof Observer) && (obj instanceof e84)) {
                return y45.e(getFunctionDelegate(), ((e84) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override
        public final x74 getFunctionDelegate() {
            return this.a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.a.invoke(obj);
        }
    }

    public SmartTaskLiveData(CloudTaskDao cloudTaskDao, TaskType taskType) {
        LiveData<List<CloudTaskEntity>> allDownloadedTaskLiveData;
        y45.j(cloudTaskDao, "dao");
        y45.j(taskType, "taskType");
        this.taskType = taskType;
        this.lastCount = -1;
        this.lastUpdateTime = -1L;
        this.lastTaskIds = "";
        this.lastFileExistStatus = "";
        this.coroutineScope = kotlinx.coroutines.d.a(mc2.b().plus(v6a.b(null, 1, null)));
        int i = c.a[taskType.ordinal()];
        if (i == 1) {
            allDownloadedTaskLiveData = cloudTaskDao.getAllDownloadedTaskLiveData();
        } else {
            if (i != 2) {
                throw new NoWhenBranchMatchedException();
            }
            allDownloadedTaskLiveData = cloudTaskDao.getAllUploadedTaskLiveData();
        }
        addSource(allDownloadedTaskLiveData, new d(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return SmartTaskLiveData.b(this.b, (List) obj);
            }
        }));
    }

    public static final zfb b(SmartTaskLiveData smartTaskLiveData, List list) {
        Log.d("visha_cloud_SmartTaskLiveData", smartTaskLiveData.taskType.name() + " task list received, count: " + (list != null ? list.size() : 0));
        j jVar = smartTaskLiveData.currentJob;
        if (jVar != null && jVar.isActive()) {
            Log.d("visha_cloud_SmartTaskLiveData", smartTaskLiveData.taskType.name() + "  Cancelling previous job");
            j.a.b(jVar, null, 1, null);
        }
        int size = list != null ? list.size() : 0;
        if (smartTaskLiveData.lastValue == null || size != smartTaskLiveData.lastCount) {
            LogUtils.j("visha_cloud_SmartTaskLiveData", smartTaskLiveData.taskType.name() + "  Task count changed from " + smartTaskLiveData.lastCount + " to " + size + ", updating immediately");
            smartTaskLiveData.q(list, size);
        } else {
            smartTaskLiveData.currentJob = el0.d(smartTaskLiveData.coroutineScope, null, null, new SmartTaskLiveData$1$2(smartTaskLiveData, list, null), 3, null);
        }
        return zfb.a;
    }

    public final Object o(List list, wh1 wh1Var) {
        return cl0.g(mc2.b(), new SmartTaskLiveData$calculateTaskSignature$2(list, this, null), wh1Var);
    }

    public final Object p(List list, wh1 wh1Var) {
        return cl0.g(mc2.b(), new SmartTaskLiveData$shouldUpdateDetailed$2(list, this, null), wh1Var);
    }

    public final void q(List newList, int newCount) {
        this.lastValue = newList;
        this.lastCount = newCount;
        List list = newList;
        if (list == null || list.isEmpty()) {
            this.lastSignature = null;
            this.lastTaskIds = "";
            this.lastFileExistStatus = "";
            this.lastUpdateTime = -1L;
        }
        setValue(newList);
        LogUtils.j("visha_cloud_SmartTaskLiveData", this.taskType.name() + "  Task list updated immediately with count: " + newCount);
    }

    public final Object r(List list, wh1 wh1Var) {
        return cl0.g(mc2.b(), new SmartTaskLiveData$updateLastValues$2(this, list, null), wh1Var);
    }
}
