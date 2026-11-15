package defpackage;

import android.content.Context;
import android.database.SQLException;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgmi.db.dao3.FileDownloadInfoDao;
import com.mgmi.db.dao3.c;
import com.mgmi.db.dao3.d;
import java.util.List;
import org.greenrobot.greendao.DaoException;

public class y1d {
    public static y1d b;
    public d a;

    public y1d(Context context) {
        this.a = d.a(context.getApplicationContext());
    }

    public static y1d a(Context context) {
        if (b == null) {
            synchronized (y1d.class) {
                try {
                    if (context == null) {
                        return null;
                    }
                    if (b == null) {
                        b = new y1d(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return b;
    }

    public List b() {
        FileDownloadInfoDao fileDownloadInfoDaoC = this.a.c();
        if (fileDownloadInfoDaoC != null) {
            SourceKitLogger.a("download1", "loadall");
            return fileDownloadInfoDaoC.loadAll();
        }
        SourceKitLogger.a("download1", "loadall null");
        return null;
    }

    public void c(c cVar) {
        FileDownloadInfoDao fileDownloadInfoDaoC = this.a.c();
        if (fileDownloadInfoDaoC == null || cVar == null) {
            return;
        }
        try {
            fileDownloadInfoDaoC.delete(cVar);
            SourceKitLogger.a("download1", "删除下载记录：" + cVar.toString());
        } catch (Exception unused) {
        }
    }

    public void d(c cVar) {
        FileDownloadInfoDao fileDownloadInfoDaoC = this.a.c();
        if (fileDownloadInfoDaoC == null || cVar == null) {
            return;
        }
        try {
            fileDownloadInfoDaoC.insert(cVar);
        } catch (Exception unused) {
        }
    }

    public void e(c cVar) {
        FileDownloadInfoDao fileDownloadInfoDaoC = this.a.c();
        if (fileDownloadInfoDaoC != null) {
            try {
                fileDownloadInfoDaoC.update(cVar);
            } catch (DaoException | SQLException | Exception unused) {
            }
        }
    }
}
