.class public Lcom/mgtv/ssp/download/dao3/b;
.super Lorg/greenrobot/greendao/AbstractDaoSession;
.source "SourceFile"


# instance fields
.field private final a:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final b:Lcom/mgtv/ssp/download/dao3/FileDownloadInfoDao;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V
    .locals 0
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

    const-class p1, Lcom/mgtv/ssp/download/dao3/FileDownloadInfoDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/ssp/download/dao3/b;->a:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    new-instance p2, Lcom/mgtv/ssp/download/dao3/FileDownloadInfoDao;

    invoke-direct {p2, p1, p0}, Lcom/mgtv/ssp/download/dao3/FileDownloadInfoDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/mgtv/ssp/download/dao3/b;)V

    iput-object p2, p0, Lcom/mgtv/ssp/download/dao3/b;->b:Lcom/mgtv/ssp/download/dao3/FileDownloadInfoDao;

    const-class p1, Lcom/mgtv/ssp/download/dao3/c;

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/mgtv/ssp/download/dao3/FileDownloadInfoDao;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/download/dao3/b;->b:Lcom/mgtv/ssp/download/dao3/FileDownloadInfoDao;

    return-object p0
.end method
