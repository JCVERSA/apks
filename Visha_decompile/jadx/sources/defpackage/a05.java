package defpackage;

import com.transsion.cloud_drive.transfer.internal.download.DownloadManagerImpl;
import com.transsion.cloud_drive.transfer.internal.upload.UploadManagerImpl;

public abstract class a05 {
    public static final s03 a(ny2 ny2Var) {
        y45.j(ny2Var, "downloadConfig");
        return new DownloadManagerImpl(ny2Var);
    }

    public static final qhb b(jhb jhbVar) {
        y45.j(jhbVar, "uploadConfig");
        return new UploadManagerImpl(jhbVar);
    }
}
