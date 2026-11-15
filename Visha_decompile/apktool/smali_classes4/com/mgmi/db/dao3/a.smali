.class public Lcom/mgmi/db/dao3/a;
.super Lorg/greenrobot/greendao/AbstractDaoMaster;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgmi/db/dao3/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;)V
    .locals 1

    const/16 v0, 0x14

    invoke-direct {p0, p1, v0}, Lorg/greenrobot/greendao/AbstractDaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;I)V

    const-class p1, Lcom/mgmi/db/dao3/MgmiOfflineAdResourceDao;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    const-class p1, Lcom/mgmi/db/dao3/FileDownloadInfoDao;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    const-class p1, Lcom/mgmi/db/dao3/MgmiAdReportinfoDao;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    const-class p1, Lcom/mgmi/db/dao3/MgmiPullRefreshAdDao;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    const-class p1, Lcom/mgmi/db/dao3/MgmiOfflineAdDao;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    return-void
.end method

.method public static a(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/mgmi/db/dao3/MgmiOfflineAdResourceDao;->a(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 2
    invoke-static {p0, p1}, Lcom/mgmi/db/dao3/FileDownloadInfoDao;->a(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 3
    invoke-static {p0, p1}, Lcom/mgmi/db/dao3/MgmiAdReportinfoDao;->a(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 4
    invoke-static {p0, p1}, Lcom/mgmi/db/dao3/MgmiPullRefreshAdDao;->a(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 5
    invoke-static {p0, p1}, Lcom/mgmi/db/dao3/MgmiOfflineAdDao;->a(Lorg/greenrobot/greendao/database/Database;Z)V

    return-void
.end method


# virtual methods
.method public a()Lcom/mgmi/db/dao3/b;
    .locals 3

    .line 6
    new-instance v0, Lcom/mgmi/db/dao3/b;

    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->db:Lorg/greenrobot/greendao/database/Database;

    sget-object v2, Lorg/greenrobot/greendao/identityscope/IdentityScopeType;->Session:Lorg/greenrobot/greendao/identityscope/IdentityScopeType;

    iget-object p0, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, v2, p0}, Lcom/mgmi/db/dao3/b;-><init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public a(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lcom/mgmi/db/dao3/b;
    .locals 2

    .line 7
    new-instance v0, Lcom/mgmi/db/dao3/b;

    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->db:Lorg/greenrobot/greendao/database/Database;

    iget-object p0, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, p1, p0}, Lcom/mgmi/db/dao3/b;-><init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public synthetic newSession()Lorg/greenrobot/greendao/AbstractDaoSession;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mgmi/db/dao3/a;->a()Lcom/mgmi/db/dao3/b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lorg/greenrobot/greendao/AbstractDaoSession;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/mgmi/db/dao3/a;->a(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lcom/mgmi/db/dao3/b;

    move-result-object p0

    return-object p0
.end method
