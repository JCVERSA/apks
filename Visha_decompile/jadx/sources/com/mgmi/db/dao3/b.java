package com.mgmi.db.dao3;

import java.util.Map;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.AbstractDaoSession;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.identityscope.IdentityScopeType;
import org.greenrobot.greendao.internal.DaoConfig;

public class b extends AbstractDaoSession {
    private final DaoConfig a;
    private final DaoConfig b;
    private final DaoConfig c;
    private final DaoConfig d;
    private final DaoConfig e;
    private final MgmiOfflineAdResourceDao f;
    private final FileDownloadInfoDao g;
    private final MgmiAdReportinfoDao h;
    private final MgmiPullRefreshAdDao i;
    private final MgmiOfflineAdDao j;

    public b(Database database, IdentityScopeType identityScopeType, Map<Class<? extends AbstractDao<?, ?>>, DaoConfig> map) {
        super(database);
        DaoConfig daoConfigClone = map.get(MgmiOfflineAdResourceDao.class).clone();
        this.a = daoConfigClone;
        daoConfigClone.initIdentityScope(identityScopeType);
        DaoConfig daoConfigClone2 = map.get(FileDownloadInfoDao.class).clone();
        this.b = daoConfigClone2;
        daoConfigClone2.initIdentityScope(identityScopeType);
        DaoConfig daoConfigClone3 = map.get(MgmiAdReportinfoDao.class).clone();
        this.c = daoConfigClone3;
        daoConfigClone3.initIdentityScope(identityScopeType);
        DaoConfig daoConfigClone4 = map.get(MgmiPullRefreshAdDao.class).clone();
        this.d = daoConfigClone4;
        daoConfigClone4.initIdentityScope(identityScopeType);
        DaoConfig daoConfigClone5 = map.get(MgmiOfflineAdDao.class).clone();
        this.e = daoConfigClone5;
        daoConfigClone5.initIdentityScope(identityScopeType);
        MgmiOfflineAdResourceDao mgmiOfflineAdResourceDao = new MgmiOfflineAdResourceDao(daoConfigClone, this);
        this.f = mgmiOfflineAdResourceDao;
        FileDownloadInfoDao fileDownloadInfoDao = new FileDownloadInfoDao(daoConfigClone2, this);
        this.g = fileDownloadInfoDao;
        MgmiAdReportinfoDao mgmiAdReportinfoDao = new MgmiAdReportinfoDao(daoConfigClone3, this);
        this.h = mgmiAdReportinfoDao;
        MgmiPullRefreshAdDao mgmiPullRefreshAdDao = new MgmiPullRefreshAdDao(daoConfigClone4, this);
        this.i = mgmiPullRefreshAdDao;
        MgmiOfflineAdDao mgmiOfflineAdDao = new MgmiOfflineAdDao(daoConfigClone5, this);
        this.j = mgmiOfflineAdDao;
        registerDao(g.class, mgmiOfflineAdResourceDao);
        registerDao(c.class, fileDownloadInfoDao);
        registerDao(e.class, mgmiAdReportinfoDao);
        registerDao(h.class, mgmiPullRefreshAdDao);
        registerDao(f.class, mgmiOfflineAdDao);
    }

    public MgmiOfflineAdResourceDao a() {
        return this.f;
    }

    public FileDownloadInfoDao b() {
        return this.g;
    }

    public MgmiOfflineAdDao c() {
        return this.j;
    }
}
