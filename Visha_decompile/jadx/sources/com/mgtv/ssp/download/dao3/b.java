package com.mgtv.ssp.download.dao3;

import java.util.Map;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.AbstractDaoSession;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.identityscope.IdentityScopeType;
import org.greenrobot.greendao.internal.DaoConfig;

public class b extends AbstractDaoSession {
    private final DaoConfig a;
    private final FileDownloadInfoDao b;

    public b(Database database, IdentityScopeType identityScopeType, Map<Class<? extends AbstractDao<?, ?>>, DaoConfig> map) {
        super(database);
        DaoConfig daoConfigM459clone = map.get(FileDownloadInfoDao.class).clone();
        this.a = daoConfigM459clone;
        daoConfigM459clone.initIdentityScope(identityScopeType);
        FileDownloadInfoDao fileDownloadInfoDao = new FileDownloadInfoDao(daoConfigM459clone, this);
        this.b = fileDownloadInfoDao;
        registerDao(c.class, fileDownloadInfoDao);
    }

    public FileDownloadInfoDao a() {
        return this.b;
    }
}
