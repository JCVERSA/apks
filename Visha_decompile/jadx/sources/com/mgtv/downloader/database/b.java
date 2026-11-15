package com.mgtv.downloader.database;

import java.util.Map;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.AbstractDaoSession;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.identityscope.IdentityScopeType;
import org.greenrobot.greendao.internal.DaoConfig;

public class b extends AbstractDaoSession {
    private final DaoConfig a;
    private final DownloadInfoDao b;

    public b(Database database, IdentityScopeType identityScopeType, Map<Class<? extends AbstractDao<?, ?>>, DaoConfig> map) {
        super(database);
        DaoConfig daoConfigClone = map.get(DownloadInfoDao.class).clone();
        this.a = daoConfigClone;
        daoConfigClone.initIdentityScope(identityScopeType);
        DownloadInfoDao downloadInfoDao = new DownloadInfoDao(daoConfigClone, this);
        this.b = downloadInfoDao;
        registerDao(c.class, downloadInfoDao);
    }

    public DownloadInfoDao a() {
        return this.b;
    }
}
