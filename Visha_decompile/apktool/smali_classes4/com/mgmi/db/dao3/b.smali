.class public Lcom/mgmi/db/dao3/b;
.super Lorg/greenrobot/greendao/AbstractDaoSession;
.source "SourceFile"


# instance fields
.field private final a:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final b:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final c:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final d:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final e:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final f:Lcom/mgmi/db/dao3/MgmiOfflineAdResourceDao;

.field private final g:Lcom/mgmi/db/dao3/FileDownloadInfoDao;

.field private final h:Lcom/mgmi/db/dao3/MgmiAdReportinfoDao;

.field private final i:Lcom/mgmi/db/dao3/MgmiPullRefreshAdDao;

.field private final j:Lcom/mgmi/db/dao3/MgmiOfflineAdDao;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/Database;",
            "Lorg/greenrobot/greendao/identityscope/IdentityScopeType;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;",
            "Lorg/greenrobot/greendao/internal/DaoConfig;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    const-class p1, Lcom/mgmi/db/dao3/MgmiOfflineAdResourceDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/db/dao3/b;->a:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    const-class v0, Lcom/mgmi/db/dao3/FileDownloadInfoDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/mgmi/db/dao3/b;->b:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    const-class v1, Lcom/mgmi/db/dao3/MgmiAdReportinfoDao;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/mgmi/db/dao3/b;->c:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    const-class v2, Lcom/mgmi/db/dao3/MgmiPullRefreshAdDao;

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v2}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/mgmi/db/dao3/b;->d:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v2, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    const-class v3, Lcom/mgmi/db/dao3/MgmiOfflineAdDao;

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p3}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p3

    iput-object p3, p0, Lcom/mgmi/db/dao3/b;->e:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p3, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    new-instance p2, Lcom/mgmi/db/dao3/MgmiOfflineAdResourceDao;

    invoke-direct {p2, p1, p0}, Lcom/mgmi/db/dao3/MgmiOfflineAdResourceDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/mgmi/db/dao3/b;)V

    iput-object p2, p0, Lcom/mgmi/db/dao3/b;->f:Lcom/mgmi/db/dao3/MgmiOfflineAdResourceDao;

    new-instance p1, Lcom/mgmi/db/dao3/FileDownloadInfoDao;

    invoke-direct {p1, v0, p0}, Lcom/mgmi/db/dao3/FileDownloadInfoDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/mgmi/db/dao3/b;)V

    iput-object p1, p0, Lcom/mgmi/db/dao3/b;->g:Lcom/mgmi/db/dao3/FileDownloadInfoDao;

    new-instance v0, Lcom/mgmi/db/dao3/MgmiAdReportinfoDao;

    invoke-direct {v0, v1, p0}, Lcom/mgmi/db/dao3/MgmiAdReportinfoDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/mgmi/db/dao3/b;)V

    iput-object v0, p0, Lcom/mgmi/db/dao3/b;->h:Lcom/mgmi/db/dao3/MgmiAdReportinfoDao;

    new-instance v1, Lcom/mgmi/db/dao3/MgmiPullRefreshAdDao;

    invoke-direct {v1, v2, p0}, Lcom/mgmi/db/dao3/MgmiPullRefreshAdDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/mgmi/db/dao3/b;)V

    iput-object v1, p0, Lcom/mgmi/db/dao3/b;->i:Lcom/mgmi/db/dao3/MgmiPullRefreshAdDao;

    new-instance v2, Lcom/mgmi/db/dao3/MgmiOfflineAdDao;

    invoke-direct {v2, p3, p0}, Lcom/mgmi/db/dao3/MgmiOfflineAdDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/mgmi/db/dao3/b;)V

    iput-object v2, p0, Lcom/mgmi/db/dao3/b;->j:Lcom/mgmi/db/dao3/MgmiOfflineAdDao;

    const-class p3, Lcom/mgmi/db/dao3/g;

    invoke-virtual {p0, p3, p2}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    const-class p2, Lcom/mgmi/db/dao3/c;

    invoke-virtual {p0, p2, p1}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    const-class p1, Lcom/mgmi/db/dao3/e;

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    const-class p1, Lcom/mgmi/db/dao3/h;

    invoke-virtual {p0, p1, v1}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    const-class p1, Lcom/mgmi/db/dao3/f;

    invoke-virtual {p0, p1, v2}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/mgmi/db/dao3/MgmiOfflineAdResourceDao;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/db/dao3/b;->f:Lcom/mgmi/db/dao3/MgmiOfflineAdResourceDao;

    return-object p0
.end method

.method public b()Lcom/mgmi/db/dao3/FileDownloadInfoDao;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/db/dao3/b;->g:Lcom/mgmi/db/dao3/FileDownloadInfoDao;

    return-object p0
.end method

.method public c()Lcom/mgmi/db/dao3/MgmiOfflineAdDao;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/db/dao3/b;->j:Lcom/mgmi/db/dao3/MgmiOfflineAdDao;

    return-object p0
.end method
