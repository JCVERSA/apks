package defpackage;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import android.util.Log;
import com.tencent.mmkv.MMKV;
import com.transsion.log.upload.data.RuleRequestModel;
import com.transsion.log.upload.data.base.HttpUbtError;
import com.transsion.log.upload.data.base.HttpUbtResponse;
import com.transsion.log.upload.net.RequestManager;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.lang3.time.DateUtils;

public class ydb extends vec {
    public static List b;

    public class a implements cs4 {
        public final Context a;

        public a(Context context) {
            this.a = context;
        }

        @Override
        public void a(HttpUbtError httpUbtError) {
            Log.e("UBTTask", "getCollectionRule onError: " + httpUbtError.getStatusCode());
            if (MMKV.p().e("mmkv_key_init_ubt", true)) {
                ydb.this.k(this.a, "x1yBlXoCD4qvv9fR", "x1yBlXoCD4qvv9fR", "vishaLogFile", 10485760L, Long.valueOf(DateUtils.MILLIS_PER_HOUR));
            }
        }

        @Override
        public void b(HttpUbtResponse httpUbtResponse) {
            if (httpUbtResponse.getData() != null) {
                MMKV.p().y("mmkv_key_init_ubt", ((RuleRequestModel) httpUbtResponse.getData()).isOpen());
            }
            if (httpUbtResponse.getData() == null || !((RuleRequestModel) httpUbtResponse.getData()).isOpen() || ((RuleRequestModel) httpUbtResponse.getData()).getAppSign().isEmpty() || ((RuleRequestModel) httpUbtResponse.getData()).getSecretKey().isEmpty() || ((RuleRequestModel) httpUbtResponse.getData()).getIv().isEmpty()) {
                return;
            }
            ydb.this.k(this.a, ((RuleRequestModel) httpUbtResponse.getData()).getSecretKey(), ((RuleRequestModel) httpUbtResponse.getData()).getIv(), ((RuleRequestModel) httpUbtResponse.getData()).getAppSign(), Long.valueOf(((RuleRequestModel) httpUbtResponse.getData()).getMaxFileSize()), Long.valueOf(((RuleRequestModel) httpUbtResponse.getData()).getCollectionLength()));
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        b = arrayList;
        arrayList.add(lw5.class);
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
    public Void create(Context context) {
        if (context == null) {
            return null;
        }
        if (ge.e()) {
            vdb.l(w6c.d(se.a(), "environment_mode", 0) == 0 ? "https://test-visha.transsion-os.com/visha/api/feedback" : "https://api.vishavideo.com/visha/api/feedback");
        } else {
            vdb.l("https://api.vishavideo.com/visha/api/feedback");
        }
        RequestManager.a(new a(context));
        return null;
    }

    public final long j(String str, long j) {
        try {
            StatFs statFs = new StatFs(str);
            long blockSizeLong = statFs.getBlockSizeLong();
            statFs.getBlockCountLong();
            long availableBlocksLong = statFs.getAvailableBlocksLong() * blockSizeLong;
            long j2 = ((double) j) > ((double) availableBlocksLong) * 0.4d ? (long) (availableBlocksLong * 0.4f) : 0L;
            return j2 == 0 ? j : j2;
        } catch (IllegalArgumentException e) {
            Log.e("UBTTask", "getTotalFileSize: " + e.getMessage());
            return j;
        }
    }

    public final void k(Context context, String str, String str2, String str3, Long l, Long l2) {
        if (str == null || str2 == null || str3 == null || context == null || context.getFilesDir() == null) {
            return;
        }
        File externalFilesDir = "mounted".equals(Environment.getExternalStorageState()) ? context.getExternalFilesDir(null) : context.getFilesDir();
        if (externalFilesDir == null) {
            return;
        }
        vdb.k(new wdb.a().c(context.getFilesDir().getAbsolutePath()).i(externalFilesDir.getAbsolutePath() + File.separator + "v_ubt_v1").g(str.getBytes()).f(str2.getBytes()).b(str3).j(j(externalFilesDir.getAbsolutePath(), l.longValue())).e(context).d(l2).h(Boolean.TRUE).a());
    }
}
