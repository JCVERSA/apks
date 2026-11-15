.class public Lcom/mgmi/db/a;
.super Lcom/mgmi/db/dao3/a$a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/mgmi/db/dao3/a$a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 0

    invoke-static {p1, p2}, Lcom/mgmi/db/dao3/FileDownloadInfoDao;->b(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p1, p2}, Lcom/mgmi/db/dao3/FileDownloadInfoDao;->a(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p1, p2}, Lcom/mgmi/db/dao3/MgmiOfflineAdDao;->b(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p1, p2}, Lcom/mgmi/db/dao3/MgmiOfflineAdDao;->a(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p1, p2}, Lcom/mgmi/db/dao3/MgmiOfflineAdResourceDao;->b(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p1, p2}, Lcom/mgmi/db/dao3/MgmiOfflineAdResourceDao;->a(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p1, p2}, Lcom/mgmi/db/dao3/MgmiPullRefreshAdDao;->b(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p1, p2}, Lcom/mgmi/db/dao3/MgmiPullRefreshAdDao;->a(Lorg/greenrobot/greendao/database/Database;Z)V

    return-void
.end method

.method public onCreate(Lorg/greenrobot/greendao/database/Database;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/mgmi/db/dao3/a$a;->onCreate(Lorg/greenrobot/greendao/database/Database;)V

    return-void
.end method

.method public onUpgrade(Lorg/greenrobot/greendao/database/Database;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->onUpgrade(Lorg/greenrobot/greendao/database/Database;II)V

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/mgmi/db/a;->a(Lorg/greenrobot/greendao/database/Database;Z)V

    return-void
.end method
