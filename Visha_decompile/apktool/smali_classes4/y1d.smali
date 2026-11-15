.class public Ly1d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Ly1d;


# instance fields
.field public a:Lcom/mgmi/db/dao3/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mgmi/db/dao3/d;->a(Landroid/content/Context;)Lcom/mgmi/db/dao3/d;

    move-result-object p1

    iput-object p1, p0, Ly1d;->a:Lcom/mgmi/db/dao3/d;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ly1d;
    .locals 2

    sget-object v0, Ly1d;->b:Ly1d;

    if-nez v0, :cond_2

    const-class v0, Ly1d;

    monitor-enter v0

    if-nez p0, :cond_0

    :try_start_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object v1, Ly1d;->b:Ly1d;

    if-nez v1, :cond_1

    new-instance v1, Ly1d;

    invoke-direct {v1, p0}, Ly1d;-><init>(Landroid/content/Context;)V

    sput-object v1, Ly1d;->b:Ly1d;

    :cond_1
    monitor-exit v0

    goto :goto_1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_1
    sget-object p0, Ly1d;->b:Ly1d;

    return-object p0
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 2

    iget-object p0, p0, Ly1d;->a:Lcom/mgmi/db/dao3/d;

    invoke-virtual {p0}, Lcom/mgmi/db/dao3/d;->c()Lcom/mgmi/db/dao3/FileDownloadInfoDao;

    move-result-object p0

    const-string v0, "download1"

    if-eqz p0, :cond_0

    const-string v1, "loadall"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->loadAll()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "loadall null"

    invoke-static {v0, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public c(Lcom/mgmi/db/dao3/c;)V
    .locals 2

    iget-object p0, p0, Ly1d;->a:Lcom/mgmi/db/dao3/d;

    invoke-virtual {p0}, Lcom/mgmi/db/dao3/d;->c()Lcom/mgmi/db/dao3/FileDownloadInfoDao;

    move-result-object p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;->delete(Ljava/lang/Object;)V

    const-string p0, "download1"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5220\u9664\u4e0b\u8f7d\u8bb0\u5f55\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgmi/db/dao3/c;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public d(Lcom/mgmi/db/dao3/c;)V
    .locals 0

    iget-object p0, p0, Ly1d;->a:Lcom/mgmi/db/dao3/d;

    invoke-virtual {p0}, Lcom/mgmi/db/dao3/d;->c()Lcom/mgmi/db/dao3/FileDownloadInfoDao;

    move-result-object p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public e(Lcom/mgmi/db/dao3/c;)V
    .locals 0

    iget-object p0, p0, Ly1d;->a:Lcom/mgmi/db/dao3/d;

    invoke-virtual {p0}, Lcom/mgmi/db/dao3/d;->c()Lcom/mgmi/db/dao3/FileDownloadInfoDao;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/greenrobot/greendao/DaoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
