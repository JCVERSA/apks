package defpackage;

import com.blankj.utilcode.util.LogUtils;
import com.transsion.playercommon.data.CloudHistoryRequestData;
import com.transsion.playercommon.vishaapis.onlinevideo.IOnlineVideoApiService;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiManager;
import com.transsion.retrofit.reponse.BaseResponse;

public abstract class kh5 {

    public class a implements pd7 {
        public final String b;
        public final c c;

        public a(String str, c cVar) {
            this.b = str;
            this.c = cVar;
        }

        @Override
        public void onNext(BaseResponse baseResponse) {
            if (baseResponse != null && baseResponse.isSuccess()) {
                LogUtils.j("KtPlayRecordUtils", "Submit play record success: fileId=" + this.b);
                c cVar = this.c;
                if (cVar != null) {
                    cVar.onSuccess();
                    return;
                }
                return;
            }
            String msg = baseResponse != null ? baseResponse.getMsg() : "Unknown error";
            LogUtils.m("KtPlayRecordUtils", "Submit play record failed: " + msg);
            c cVar2 = this.c;
            if (cVar2 != null) {
                cVar2.onError(msg);
            }
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
            LogUtils.m("KtPlayRecordUtils", "Submit play record error: " + th.getMessage());
            c cVar = this.c;
            if (cVar != null) {
                cVar.onError(th.getMessage());
            }
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    public class b implements c {
        @Override
        public void onError(String str) {
            LogUtils.m("KtPlayRecordUtils", "Failed to submit play record: " + str);
        }

        @Override
        public void onSuccess() {
            h27.c().e(1134, new Object[0]);
            LogUtils.j("KtPlayRecordUtils", "Play record submitted successfully");
        }
    }

    public interface c {
        void onError(String str);

        void onSuccess();
    }

    public static void a(CloudHistoryRequestData cloudHistoryRequestData) {
        b(cloudHistoryRequestData, new b());
    }

    public static void b(CloudHistoryRequestData cloudHistoryRequestData, c cVar) {
        if (cloudHistoryRequestData == null) {
            LogUtils.m("KtPlayRecordUtils", "Submit play record failed: data is null");
            if (cVar != null) {
                cVar.onError("Data cannot be null");
            }
        }
        String fileId = cloudHistoryRequestData.getFileId();
        int i = Integer.parseInt(cloudHistoryRequestData.getPlayDuration());
        if (fileId.trim().isEmpty()) {
            LogUtils.m("KtPlayRecordUtils", "Submit play record failed: fileId is null or empty");
            if (cVar != null) {
                cVar.onError("File ID cannot be null or empty");
                return;
            }
            return;
        }
        if (i < 0) {
            LogUtils.m("KtPlayRecordUtils", "Submit play record failed: playDuration is negative");
            if (cVar != null) {
                cVar.onError("Play duration cannot be negative");
                return;
            }
            return;
        }
        LogUtils.j("KtPlayRecordUtils", "Submitting play record: =" + cloudHistoryRequestData);
        try {
            ((IOnlineVideoApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineVideoApiService.class)).submitPlayRecord(cloudHistoryRequestData).d0(k29.c()).M(vb.a()).subscribe(new a(fileId, cVar));
        } catch (Exception e) {
            LogUtils.m("KtPlayRecordUtils", "Submit play record exception: " + e.getMessage());
            if (cVar != null) {
                cVar.onError(e.getMessage());
            }
        }
    }
}
