package v6;

import com.cloud.h5update.bean.UpdateEntity;
import java.io.File;

public interface b {
    void onDownloadProcess(String str, long j10, long j11);

    void onError(String str, int i10, String str2);

    boolean onGetEntity(UpdateEntity updateEntity);

    void onNoNeedDownload(String str);

    void onUnZipDownloadFinish(String str, String str2, File file);

    void onZipDownloadCancel(String str);

    void onZipDownloadFinish(String str);

    void onZipDownloadStart(String str);

    boolean onZipDownloaded(String str);

    boolean onZipTryDownload(String str, String str2, String str3);
}
