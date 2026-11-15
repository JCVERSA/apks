.class public Lcom/mgtv/downloader/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/downloader/a$a;
    }
.end annotation


# static fields
.field private static a:Lcom/mgtv/downloader/a;


# instance fields
.field private b:Lcom/mgtv/downloader/b/a;

.field private c:Lcom/mgtv/downloader/util/b;

.field private d:Lcom/mgtv/downloader/b/b;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mgtv/downloader/a;->e:Ljava/lang/String;

    const-string v1, "20"

    iput-object v1, p0, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/a;->h:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/mgtv/downloader/util/b;)I
    .locals 1

    .line 33
    invoke-static {}, Lcom/mgtv/downloader/b;->a()Lcom/mgtv/downloader/b;

    move-result-object v0

    iget-object p0, p0, Lcom/mgtv/downloader/a;->d:Lcom/mgtv/downloader/b/b;

    invoke-interface {p0}, Lcom/mgtv/downloader/b/b;->a()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/mgtv/downloader/b;->a(Landroid/content/Context;Lcom/mgtv/downloader/util/b;)I

    move-result p0

    return p0
.end method

.method public static declared-synchronized a()Lcom/mgtv/downloader/a;
    .locals 2

    const-class v0, Lcom/mgtv/downloader/a;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/mgtv/downloader/a;->a:Lcom/mgtv/downloader/a;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcom/mgtv/downloader/a;

    invoke-direct {v1}, Lcom/mgtv/downloader/a;-><init>()V

    sput-object v1, Lcom/mgtv/downloader/a;->a:Lcom/mgtv/downloader/a;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 7
    :cond_0
    :goto_0
    sget-object v1, Lcom/mgtv/downloader/a;->a:Lcom/mgtv/downloader/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static synthetic a(Lcom/mgtv/downloader/a;)Lcom/mgtv/downloader/b/a;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgtv/downloader/a;->b:Lcom/mgtv/downloader/b/a;

    return-object p0
.end method

.method public static synthetic a(Lcom/mgtv/downloader/a;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/mgtv/downloader/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/mgtv/downloader/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/mgtv/downloader/a;->h:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
.end method

.method private b(ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "8099"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "6009-"

    const/16 v3, 0xa

    const-string v4, "6008-"

    if-eqz v1, :cond_8

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "6202-"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_0
    const/16 p2, 0x14

    if-ne p1, p2, :cond_1

    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_1
    const/4 p2, 0x7

    if-ne p1, p2, :cond_2

    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "8099-"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_2
    const/4 p2, 0x4

    if-ne p1, p2, :cond_3

    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "6299-"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    const p2, 0x499c0

    if-ne p1, p2, :cond_4

    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "6203-"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    const/4 p2, 0x1

    if-ne p1, p2, :cond_5

    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "6201-"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    const/4 p2, 0x5

    if-ne p1, p2, :cond_6

    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "6204-"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_6
    const/4 p2, 0x6

    if-ne p1, p2, :cond_7

    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "6205-"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_7
    if-ne p1, v3, :cond_c

    .line 30
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 31
    :cond_8
    const-string v1, "10007"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "10100"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_0

    .line 32
    :cond_9
    const-string v1, "10022"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "6004-"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_a
    if-ne p1, v3, :cond_c

    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 35
    :cond_b
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_c
    :goto_1
    return-object v0
.end method

.method private d(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mgtv/downloader/a;->c(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0x9

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 6
    :pswitch_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 7
    :pswitch_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x4

    .line 8
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    const/4 p0, 0x3

    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :pswitch_4
    const/4 p0, 0x2

    .line 10
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 11
    :cond_1
    :goto_0
    :pswitch_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private f()V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mgtv/downloader/a;->d:Lcom/mgtv/downloader/b/b;

    invoke-interface {v1}, Lcom/mgtv/downloader/b/b;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/downloader/database/d;->a(Landroid/content/Context;)Lcom/mgtv/downloader/database/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/downloader/database/d;->a()Lcom/mgtv/downloader/database/DownloadInfoDao;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->j:Lorg/greenrobot/greendao/Property;

    filled-new-array {v2}, [Lorg/greenrobot/greendao/Property;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initDownloadList [Database] Read Count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_0

    const-string v4, "(NULL)"

    goto :goto_0

    :catch_0
    move-exception v2

    goto/16 :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  DownloadInfoDao.Properties.OperateTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_3

    :cond_1
    const-string v2, ""

    const-string v3, "/data/data/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mgtv/downloader/a;->d:Lcom/mgtv/downloader/b/b;

    invoke-interface {v4}, Lcom/mgtv/downloader/b/b;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/databases/DOWNLOAD_INFO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initDownloadList fileDBPath is false = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initDownloadList fileDBPath is true = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v1, v0

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadSDK_1.8.0="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mgtv/downloader/util/c;->b(Ljava/lang/String;)V

    :cond_3
    :goto_2
    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgtv/downloader/database/c;

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Lcom/mgtv/downloader/database/c;->i()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_5

    const/4 v3, 0x0

    goto :goto_4

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_4
    const/4 v4, 0x1

    const/4 v5, 0x2

    const/16 v6, 0xa

    if-eq v4, v3, :cond_7

    const/4 v4, 0x5

    if-eq v4, v3, :cond_7

    const/4 v4, 0x6

    if-eq v4, v3, :cond_7

    if-ne v5, v3, :cond_6

    goto :goto_5

    :cond_6
    const/4 v4, 0x4

    if-ne v4, v3, :cond_8

    const/16 v6, 0xb

    goto :goto_6

    :cond_7
    :goto_5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mgtv/downloader/database/c;->a(Ljava/lang/Integer;)V

    :cond_8
    :goto_6
    invoke-static {}, Lcom/mgtv/downloader/b;->a()Lcom/mgtv/downloader/b;

    move-result-object v3

    new-instance v4, Lcom/mgtv/downloader/a$a;

    invoke-direct {v4, p0, v0}, Lcom/mgtv/downloader/a$a;-><init>(Lcom/mgtv/downloader/a;Lcom/mgtv/downloader/a$1;)V

    const-string v5, "initDownloadList"

    invoke-virtual {v3, v2, v6, v5, v4}, Lcom/mgtv/downloader/b;->a(Lcom/mgtv/downloader/database/c;ILjava/lang/String;Lcom/mgtv/downloader/a/b;)I

    goto :goto_3

    :cond_9
    const-string p0, "initDownloadList is Error downloadInfoList != null && !downloadInfoList.isEmpty()"

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    :cond_a
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/mgtv/downloader/net/entity/a;
    .locals 3

    .line 225
    invoke-static {}, Lcom/mgtv/downloader/b;->b()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    monitor-enter p0

    .line 226
    :try_start_0
    invoke-static {}, Lcom/mgtv/downloader/b;->b()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgtv/downloader/a/a;

    if-nez v1, :cond_1

    goto :goto_0

    .line 227
    :cond_1
    invoke-virtual {v1}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgtv/downloader/net/entity/a;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    invoke-virtual {v1}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 229
    :cond_2
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mgtv/downloader/util/ConfigJson;
    .locals 0

    .line 282
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    .line 283
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgtv/downloader/util/ConfigJson;

    return-object p0
.end method

.method public a(ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DownloadHWManager] setConfig param:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  optVal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 231
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "0000"

    if-eqz v0, :cond_0

    .line 232
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/mgtv/downloader/a;->c:Lcom/mgtv/downloader/util/b;

    if-nez v0, :cond_1

    .line 234
    new-instance v0, Lcom/mgtv/downloader/util/b;

    invoke-direct {v0}, Lcom/mgtv/downloader/util/b;-><init>()V

    iput-object v0, p0, Lcom/mgtv/downloader/a;->c:Lcom/mgtv/downloader/util/b;

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/mgtv/downloader/a;->c:Lcom/mgtv/downloader/util/b;

    const-string v2, "http://mobile.api.hunantv.com/v11/video/downloadUrl"

    iput-object v2, v0, Lcom/mgtv/downloader/util/b;->d:Ljava/lang/String;

    .line 236
    const-string v2, "http://mobile.api.hunantv.com/v10/video/downloadUrl"

    iput-object v2, v0, Lcom/mgtv/downloader/util/b;->c:Ljava/lang/String;

    const/4 v0, 0x1

    if-nez p1, :cond_3

    .line 237
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 238
    iget-object v2, p0, Lcom/mgtv/downloader/a;->c:Lcom/mgtv/downloader/util/b;

    iput v0, v2, Lcom/mgtv/downloader/util/b;->i:I

    goto :goto_0

    .line 239
    :cond_2
    iget-object v2, p0, Lcom/mgtv/downloader/a;->c:Lcom/mgtv/downloader/util/b;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/mgtv/downloader/util/b;->i:I

    :cond_3
    :goto_0
    const/4 v2, 0x0

    if-ne p1, v0, :cond_5

    .line 240
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 241
    iget-object v0, p0, Lcom/mgtv/downloader/a;->c:Lcom/mgtv/downloader/util/b;

    iput v2, v0, Lcom/mgtv/downloader/util/b;->h:I

    goto :goto_1

    .line 242
    :cond_4
    iget-object v0, p0, Lcom/mgtv/downloader/a;->c:Lcom/mgtv/downloader/util/b;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/mgtv/downloader/util/b;->h:I

    :cond_5
    :goto_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 243
    iput-object p2, p0, Lcom/mgtv/downloader/a;->f:Ljava/lang/String;

    :cond_6
    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    .line 244
    iput-object p2, p0, Lcom/mgtv/downloader/a;->e:Ljava/lang/String;

    .line 245
    invoke-static {}, Lcom/mgtv/downloader/dir/a;->c()Lcom/mgtv/downloader/dir/a;

    move-result-object v0

    iget-object v3, p0, Lcom/mgtv/downloader/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/mgtv/downloader/dir/a;->a(Ljava/lang/String;)V

    .line 246
    invoke-static {}, Lcom/mgtv/downloader/b;->a()Lcom/mgtv/downloader/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/downloader/b;->c()V

    :cond_7
    const/4 v0, 0x6

    if-ne p1, v0, :cond_9

    .line 247
    iget-object v0, p0, Lcom/mgtv/downloader/a;->c:Lcom/mgtv/downloader/util/b;

    iput-object p2, v0, Lcom/mgtv/downloader/util/b;->e:Ljava/lang/String;

    .line 248
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 249
    iget-object v0, p0, Lcom/mgtv/downloader/a;->c:Lcom/mgtv/downloader/util/b;

    const-class v3, Lcom/mgtv/downloader/util/ConfigJson;

    invoke-virtual {p0, p2, v3}, Lcom/mgtv/downloader/a;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mgtv/downloader/util/ConfigJson;

    move-result-object v3

    iget-object v3, v3, Lcom/mgtv/downloader/util/ConfigJson;->data:Lcom/mgtv/downloader/util/ConfigJson$Data;

    iget-object v3, v3, Lcom/mgtv/downloader/util/ConfigJson$Data;->cdnModule:Lcom/mgtv/downloader/util/ConfigJson$CdnModule;

    iget v3, v3, Lcom/mgtv/downloader/util/ConfigJson$CdnModule;->videoDownloadType:I

    iput v3, v0, Lcom/mgtv/downloader/util/b;->j:I

    goto :goto_2

    .line 250
    :cond_8
    iget-object v0, p0, Lcom/mgtv/downloader/a;->c:Lcom/mgtv/downloader/util/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{\"data\":{\"cdn\":{\"playertimeout\":45,\"timeout\":30},\"cdnModule\":{\"hlsconfig\":1,\"useMGHttpDns\":0,\"videoDownloadType\":1,\"offlineMaxHttpSpeedKB\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mgtv/downloader/a;->c:Lcom/mgtv/downloader/util/b;

    iget v4, v4, Lcom/mgtv/downloader/util/b;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "}}}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/mgtv/downloader/util/b;->e:Ljava/lang/String;

    .line 251
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/mgtv/downloader/a;->c:Lcom/mgtv/downloader/util/b;

    invoke-direct {p0, v0}, Lcom/mgtv/downloader/a;->a(Lcom/mgtv/downloader/util/b;)I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_a

    .line 252
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, v2}, Lcom/mgtv/downloader/a;->a(II)V

    .line 253
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/mgtv/downloader/b/b;Lcom/mgtv/downloader/b/a;)Ljava/lang/String;
    .locals 2

    .line 9
    invoke-virtual {p0, p1}, Lcom/mgtv/downloader/a;->a(Lcom/mgtv/downloader/b/b;)V

    .line 10
    iget-object p1, p0, Lcom/mgtv/downloader/a;->d:Lcom/mgtv/downloader/b/b;

    invoke-interface {p1}, Lcom/mgtv/downloader/b/b;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/hunantv/imgo/BaseApplication;->setContext(Landroid/content/Context;)V

    .line 11
    iget-object p1, p0, Lcom/mgtv/downloader/a;->d:Lcom/mgtv/downloader/b/b;

    invoke-interface {p1}, Lcom/mgtv/downloader/b/b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hunantv/imgo/util/b;->e(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/mgtv/downloader/a;->d:Lcom/mgtv/downloader/b/b;

    invoke-interface {p1}, Lcom/mgtv/downloader/b/b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hunantv/imgo/util/b;->f(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/mgtv/downloader/a;->d:Lcom/mgtv/downloader/b/b;

    invoke-interface {p1}, Lcom/mgtv/downloader/b/b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 14
    const-string p1, "a1007"

    invoke-static {p1}, Lcom/hunantv/imgo/util/b;->e(Ljava/lang/String;)V

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/mgtv/downloader/a;->d:Lcom/mgtv/downloader/b/b;

    invoke-interface {p1}, Lcom/mgtv/downloader/b/b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 16
    const-string p1, "e9+pDLfC@W"

    invoke-static {p1}, Lcom/hunantv/imgo/util/b;->f(Ljava/lang/String;)V

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/mgtv/downloader/a;->d:Lcom/mgtv/downloader/b/b;

    invoke-interface {p1}, Lcom/mgtv/downloader/b/b;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 18
    invoke-virtual {p0}, Lcom/mgtv/downloader/a;->b()Lcom/mgtv/downloader/b/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/mgtv/downloader/b/b;->f()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/mgtv/downloader/a;->c:Lcom/mgtv/downloader/util/b;

    if-nez p1, :cond_3

    .line 20
    new-instance p1, Lcom/mgtv/downloader/util/b;

    invoke-direct {p1}, Lcom/mgtv/downloader/util/b;-><init>()V

    iput-object p1, p0, Lcom/mgtv/downloader/a;->c:Lcom/mgtv/downloader/util/b;

    .line 21
    :cond_3
    iget-object p1, p0, Lcom/mgtv/downloader/a;->c:Lcom/mgtv/downloader/util/b;

    const-string v0, "http://mobile.api.hunantv.com/v11/video/downloadUrl"

    iput-object v0, p1, Lcom/mgtv/downloader/util/b;->d:Ljava/lang/String;

    .line 22
    const-string v0, "http://mobile.api.hunantv.com/v10/video/downloadUrl"

    iput-object v0, p1, Lcom/mgtv/downloader/util/b;->c:Ljava/lang/String;

    const/4 v0, 0x3

    .line 23
    iput v0, p1, Lcom/mgtv/downloader/util/b;->i:I

    const/4 v0, 0x0

    .line 24
    iput v0, p1, Lcom/mgtv/downloader/util/b;->h:I

    .line 25
    iget-object p1, p0, Lcom/mgtv/downloader/a;->d:Lcom/mgtv/downloader/b/b;

    invoke-interface {p1}, Lcom/mgtv/downloader/b/b;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 26
    iget-object p1, p0, Lcom/mgtv/downloader/a;->c:Lcom/mgtv/downloader/util/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"data\":{\"cdn\":{\"playertimeout\":45,\"timeout\":30},\"cdnModule\":{\"hlsconfig\":0,\"useMGHttpDns\":0,\"videoDownloadType\":1,\"offlineMaxHttpSpeedKB\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/a;->c:Lcom/mgtv/downloader/util/b;

    iget v1, v1, Lcom/mgtv/downloader/util/b;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/mgtv/downloader/util/b;->e:Ljava/lang/String;

    goto :goto_0

    .line 27
    :cond_4
    iget-object p1, p0, Lcom/mgtv/downloader/a;->c:Lcom/mgtv/downloader/util/b;

    iget-object v0, p0, Lcom/mgtv/downloader/a;->d:Lcom/mgtv/downloader/b/b;

    invoke-interface {v0}, Lcom/mgtv/downloader/b/b;->e()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/mgtv/downloader/util/ConfigJson;

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/downloader/a;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mgtv/downloader/util/ConfigJson;

    move-result-object v0

    iget-object v0, v0, Lcom/mgtv/downloader/util/ConfigJson;->data:Lcom/mgtv/downloader/util/ConfigJson$Data;

    iget-object v0, v0, Lcom/mgtv/downloader/util/ConfigJson$Data;->cdnModule:Lcom/mgtv/downloader/util/ConfigJson$CdnModule;

    iget v0, v0, Lcom/mgtv/downloader/util/ConfigJson$CdnModule;->videoDownloadType:I

    iput v0, p1, Lcom/mgtv/downloader/util/b;->j:I

    .line 28
    :goto_0
    iget-object p1, p0, Lcom/mgtv/downloader/a;->c:Lcom/mgtv/downloader/util/b;

    invoke-direct {p0, p1}, Lcom/mgtv/downloader/a;->a(Lcom/mgtv/downloader/util/b;)I

    move-result p1

    if-ltz p1, :cond_5

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0000"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "8099-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    if-eqz p2, :cond_6

    .line 30
    iput-object p2, p0, Lcom/mgtv/downloader/a;->b:Lcom/mgtv/downloader/b/a;

    .line 31
    :cond_6
    iget-object p2, p0, Lcom/mgtv/downloader/a;->d:Lcom/mgtv/downloader/b/b;

    invoke-interface {p2}, Lcom/mgtv/downloader/b/b;->a()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/mgtv/downloader/a;->a(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0}, Lcom/mgtv/downloader/a;->f()V

    return-object p1
.end method

.method public a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    .line 266
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "8099"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 267
    :cond_0
    invoke-static {}, Lcom/mgtv/downloader/b;->b()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    monitor-enter v0

    .line 268
    :try_start_0
    invoke-static {}, Lcom/mgtv/downloader/b;->b()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgtv/downloader/a/a;

    if-eqz v2, :cond_1

    .line 269
    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->d()I

    move-result v3

    const/16 v4, 0xa

    if-eq v4, v3, :cond_2

    goto :goto_0

    .line 270
    :cond_2
    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mgtv/downloader/net/entity/a;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p2, :cond_3

    .line 271
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/downloader/net/entity/a;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    if-ne p2, p1, :cond_4

    .line 272
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/downloader/net/entity/a;->g()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_4
    const/4 p1, 0x2

    if-ne p2, p1, :cond_5

    .line 273
    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/downloader/net/entity/a;->p()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 274
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "0000"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 275
    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "8099"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 277
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    .line 254
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "8099"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 255
    :cond_0
    invoke-static {}, Lcom/mgtv/downloader/b;->b()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    monitor-enter v0

    .line 256
    :try_start_0
    invoke-static {}, Lcom/mgtv/downloader/b;->b()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgtv/downloader/a/a;

    if-eqz v2, :cond_1

    .line 257
    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->d()I

    move-result v3

    const/16 v4, 0xa

    if-eq v4, v3, :cond_2

    goto :goto_0

    .line 258
    :cond_2
    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mgtv/downloader/net/entity/a;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p2, :cond_3

    .line 259
    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/mgtv/downloader/net/entity/a;->o(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    const/4 p1, 0x1

    if-ne p2, p1, :cond_4

    .line 260
    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mgtv/downloader/net/entity/a;->b(Ljava/lang/Integer;)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x2

    if-ne p2, p1, :cond_5

    .line 261
    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/mgtv/downloader/net/entity/a;->n(Ljava/lang/String;)V

    .line 262
    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "0000"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 263
    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "8099"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 265
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public a(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/mgtv/downloader/net/entity/a;",
            ">;"
        }
    .end annotation

    .line 217
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    invoke-static {}, Lcom/mgtv/downloader/b;->b()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    monitor-enter v0

    .line 219
    :try_start_0
    invoke-static {}, Lcom/mgtv/downloader/b;->b()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgtv/downloader/a/a;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 220
    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    .line 221
    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v3

    iget-object v3, v3, Lcom/mgtv/downloader/net/entity/a;->i:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x4

    if-ne v4, v3, :cond_2

    .line 222
    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 223
    :cond_2
    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 224
    :cond_3
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(II)V
    .locals 1

    .line 278
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 279
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "express_download"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "trial_time"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-static {}, Lcom/mgtv/downloader/b;->a()Lcom/mgtv/downloader/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mgtv/downloader/b;->a(Ljava/util/Map;)V

    return-void
.end method

.method public a(Lcom/mgtv/downloader/b/b;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/mgtv/downloader/a;->d:Lcom/mgtv/downloader/b/b;

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/downloader/b/c;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    monitor-enter p0

    .line 34
    :try_start_0
    const-string v4, ""

    iput-object v4, v1, Lcom/mgtv/downloader/a;->h:Ljava/lang/String;

    .line 35
    const-string v4, ""

    .line 36
    const-string v5, ""

    .line 37
    const-string v6, ""

    .line 38
    const-string v7, ""

    .line 39
    const-string v8, ""

    .line 40
    const-string v9, ""

    .line 41
    const-string v10, ""

    .line 42
    const-string v11, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    .line 43
    :try_start_1
    new-instance v13, Lorg/json/JSONObject;

    move-object/from16 v12, p1

    invoke-direct {v13, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 44
    const-string v12, "videoId"

    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 45
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v13, p2

    invoke-direct {v12, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46
    const-string v13, "PATH"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 47
    const-string v13, "DEFINITION"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 48
    const-string v13, "PRIORITY"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 49
    const-string v13, "LIMIT_SPEED"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 50
    const-string v13, "AT"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 51
    const-string v13, "OPENID"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 52
    const-string v13, "CONTENTID"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 53
    :try_start_2
    new-instance v12, Lcom/mgtv/downloader/database/c;

    invoke-direct {v12}, Lcom/mgtv/downloader/database/c;-><init>()V

    .line 54
    iput-object v10, v12, Lcom/mgtv/downloader/database/c;->M:Ljava/lang/String;

    .line 55
    iput-object v11, v12, Lcom/mgtv/downloader/database/c;->b:Ljava/lang/String;

    .line 56
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 57
    iget-object v13, v1, Lcom/mgtv/downloader/a;->f:Ljava/lang/String;

    invoke-direct {v1, v13}, Lcom/mgtv/downloader/a;->d(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iput-object v13, v12, Lcom/mgtv/downloader/database/c;->w:Ljava/lang/Integer;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_1f

    .line 58
    :cond_0
    invoke-direct {v1, v5}, Lcom/mgtv/downloader/a;->d(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iput-object v13, v12, Lcom/mgtv/downloader/database/c;->w:Ljava/lang/Integer;

    .line 59
    :goto_0
    iget-object v13, v1, Lcom/mgtv/downloader/a;->c:Lcom/mgtv/downloader/util/b;

    iget v13, v13, Lcom/mgtv/downloader/util/b;->j:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iput-object v13, v12, Lcom/mgtv/downloader/database/c;->G:Ljava/lang/Integer;

    .line 60
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 61
    iget-object v4, v1, Lcom/mgtv/downloader/a;->e:Ljava/lang/String;

    iput-object v4, v12, Lcom/mgtv/downloader/database/c;->f:Ljava/lang/String;

    goto :goto_1

    .line 62
    :cond_1
    iput-object v4, v12, Lcom/mgtv/downloader/database/c;->f:Ljava/lang/String;

    .line 63
    :goto_1
    invoke-static {}, Lcom/mgtv/downloader/dir/a;->c()Lcom/mgtv/downloader/dir/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mgtv/downloader/dir/a;->e()Lcom/mgtv/downloader/dir/DownloadDirInfo;

    move-result-object v4

    .line 64
    iget-object v13, v12, Lcom/mgtv/downloader/database/c;->f:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 65
    iget-object v13, v12, Lcom/mgtv/downloader/database/c;->f:Ljava/lang/String;

    iput-object v13, v4, Lcom/mgtv/downloader/dir/DownloadDirInfo;->path:Ljava/lang/String;

    .line 66
    invoke-static {}, Lcom/mgtv/downloader/dir/a;->c()Lcom/mgtv/downloader/dir/a;

    move-result-object v13

    invoke-virtual {v13, v4}, Lcom/mgtv/downloader/dir/a;->a(Lcom/mgtv/downloader/dir/DownloadDirInfo;)Lcom/mgtv/downloader/dir/DownloadDirInfo;

    .line 67
    const-string v13, "DownloadSDK_1.8.0"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "curDir : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_2
    iget-object v4, v4, Lcom/mgtv/downloader/dir/DownloadDirInfo;->path:Ljava/lang/String;

    .line 69
    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v4, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 70
    :goto_2
    invoke-virtual {v12}, Lcom/mgtv/downloader/database/c;->G()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-nez v13, :cond_4

    .line 71
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mgtv/downloader/util/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".mtv"

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 72
    invoke-virtual {v12, v4}, Lcom/mgtv/downloader/database/c;->e(Ljava/lang/String;)V

    :goto_3
    const/4 v4, 0x2

    goto :goto_4

    .line 73
    :cond_4
    invoke-virtual {v12, v4}, Lcom/mgtv/downloader/database/c;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 74
    :goto_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/mgtv/downloader/database/c;->a(Ljava/lang/Integer;)V

    const/4 v4, 0x1

    .line 75
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/mgtv/downloader/database/c;->e(Ljava/lang/Integer;)V

    .line 76
    invoke-virtual {v12, v11}, Lcom/mgtv/downloader/database/c;->c(Ljava/lang/String;)V

    .line 77
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/mgtv/downloader/database/c;->f(Ljava/lang/Integer;)V

    .line 78
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/mgtv/downloader/database/c;->c(Ljava/lang/Long;)V

    .line 79
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/mgtv/downloader/database/c;->b(Ljava/lang/Integer;)V

    .line 80
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/mgtv/downloader/database/c;->c(Ljava/lang/Integer;)V

    .line 81
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/mgtv/downloader/database/c;->b(Ljava/lang/Long;)V

    .line 82
    invoke-virtual {v12, v2}, Lcom/mgtv/downloader/database/c;->C(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v12, v6}, Lcom/mgtv/downloader/database/c;->z(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v12, v7}, Lcom/mgtv/downloader/database/c;->A(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v12, v8}, Lcom/mgtv/downloader/database/c;->B(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v12, v9}, Lcom/mgtv/downloader/database/c;->H(Ljava/lang/String;)V

    .line 87
    iget-object v4, v1, Lcom/mgtv/downloader/a;->d:Lcom/mgtv/downloader/b/b;

    invoke-interface {v4}, Lcom/mgtv/downloader/b/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/mgtv/downloader/database/c;->D(Ljava/lang/String;)V

    .line 88
    iget-object v4, v1, Lcom/mgtv/downloader/a;->d:Lcom/mgtv/downloader/b/b;

    invoke-interface {v4}, Lcom/mgtv/downloader/b/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/mgtv/downloader/database/c;->E(Ljava/lang/String;)V

    .line 89
    iget-object v4, v1, Lcom/mgtv/downloader/a;->d:Lcom/mgtv/downloader/b/b;

    invoke-interface {v4}, Lcom/mgtv/downloader/b/b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/mgtv/downloader/database/c;->G(Ljava/lang/String;)V

    .line 90
    const-string v4, "http://disp.titan.mgtv.com;http://disp1.titan.mgtv.com;http://123.59.21.240;"

    iput-object v4, v12, Lcom/mgtv/downloader/database/c;->n:Ljava/lang/String;

    .line 91
    invoke-static {}, Lcom/mgtv/downloader/b;->a()Lcom/mgtv/downloader/b;

    move-result-object v4

    new-instance v5, Lcom/mgtv/downloader/a$a;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6}, Lcom/mgtv/downloader/a$a;-><init>(Lcom/mgtv/downloader/a;Lcom/mgtv/downloader/a$1;)V

    const/16 v6, 0xa

    invoke-virtual {v4, v12, v6, v2, v5}, Lcom/mgtv/downloader/b;->a(Lcom/mgtv/downloader/database/c;ILjava/lang/String;Lcom/mgtv/downloader/a/b;)I

    move-result v2

    if-eqz v3, :cond_16

    if-ltz v2, :cond_5

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "0000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "8099-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 93
    :goto_6
    iget-object v5, v1, Lcom/mgtv/downloader/a;->h:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 94
    iget-object v4, v1, Lcom/mgtv/downloader/a;->h:Ljava/lang/String;

    const-string v5, "10007"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, v1, Lcom/mgtv/downloader/a;->h:Ljava/lang/String;

    const-string v5, "10100"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_7

    .line 95
    :cond_6
    iget-object v4, v1, Lcom/mgtv/downloader/a;->h:Ljava/lang/String;

    const-string v5, "10022"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "6004-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mgtv/downloader/a;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    .line 97
    :cond_7
    iget-object v4, v1, Lcom/mgtv/downloader/a;->h:Ljava/lang/String;

    const-string v5, "10"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "6009-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mgtv/downloader/a;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    .line 99
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "8099-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mgtv/downloader/a;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    .line 100
    :cond_9
    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "6008-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mgtv/downloader/a;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 101
    :goto_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "if taskID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", errorCode "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " createCode "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/mgtv/downloader/a;->h:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    goto :goto_9

    .line 102
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "else taskID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", errorCode "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " createCode "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/mgtv/downloader/a;->h:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 103
    :goto_9
    invoke-interface {v3, v10, v4}, Lcom/mgtv/downloader/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_13

    :catchall_1
    move-exception v0

    move-object v12, v0

    goto/16 :goto_14

    :catch_0
    move-exception v0

    move-object v12, v0

    .line 104
    :try_start_3
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 105
    :try_start_4
    new-instance v12, Lcom/mgtv/downloader/database/c;

    invoke-direct {v12}, Lcom/mgtv/downloader/database/c;-><init>()V

    .line 106
    iput-object v10, v12, Lcom/mgtv/downloader/database/c;->M:Ljava/lang/String;

    .line 107
    iput-object v11, v12, Lcom/mgtv/downloader/database/c;->b:Ljava/lang/String;

    .line 108
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 109
    iget-object v13, v1, Lcom/mgtv/downloader/a;->f:Ljava/lang/String;

    invoke-direct {v1, v13}, Lcom/mgtv/downloader/a;->d(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iput-object v13, v12, Lcom/mgtv/downloader/database/c;->w:Ljava/lang/Integer;

    goto :goto_a

    .line 110
    :cond_b
    invoke-direct {v1, v5}, Lcom/mgtv/downloader/a;->d(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iput-object v13, v12, Lcom/mgtv/downloader/database/c;->w:Ljava/lang/Integer;

    .line 111
    :goto_a
    iget-object v13, v1, Lcom/mgtv/downloader/a;->c:Lcom/mgtv/downloader/util/b;

    iget v13, v13, Lcom/mgtv/downloader/util/b;->j:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iput-object v13, v12, Lcom/mgtv/downloader/database/c;->G:Ljava/lang/Integer;

    .line 112
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 113
    iget-object v4, v1, Lcom/mgtv/downloader/a;->e:Ljava/lang/String;

    iput-object v4, v12, Lcom/mgtv/downloader/database/c;->f:Ljava/lang/String;

    goto :goto_b

    .line 114
    :cond_c
    iput-object v4, v12, Lcom/mgtv/downloader/database/c;->f:Ljava/lang/String;

    .line 115
    :goto_b
    invoke-static {}, Lcom/mgtv/downloader/dir/a;->c()Lcom/mgtv/downloader/dir/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mgtv/downloader/dir/a;->e()Lcom/mgtv/downloader/dir/DownloadDirInfo;

    move-result-object v4

    .line 116
    iget-object v13, v12, Lcom/mgtv/downloader/database/c;->f:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_d

    .line 117
    iget-object v13, v12, Lcom/mgtv/downloader/database/c;->f:Ljava/lang/String;

    iput-object v13, v4, Lcom/mgtv/downloader/dir/DownloadDirInfo;->path:Ljava/lang/String;

    .line 118
    invoke-static {}, Lcom/mgtv/downloader/dir/a;->c()Lcom/mgtv/downloader/dir/a;

    move-result-object v13

    invoke-virtual {v13, v4}, Lcom/mgtv/downloader/dir/a;->a(Lcom/mgtv/downloader/dir/DownloadDirInfo;)Lcom/mgtv/downloader/dir/DownloadDirInfo;

    .line 119
    const-string v13, "DownloadSDK_1.8.0"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "curDir : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_d
    iget-object v4, v4, Lcom/mgtv/downloader/dir/DownloadDirInfo;->path:Ljava/lang/String;

    .line 121
    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    goto :goto_c

    :cond_e
    invoke-virtual {v4, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 122
    :goto_c
    invoke-virtual {v12}, Lcom/mgtv/downloader/database/c;->G()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-nez v13, :cond_f

    .line 123
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mgtv/downloader/util/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".mtv"

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 124
    invoke-virtual {v12, v4}, Lcom/mgtv/downloader/database/c;->e(Ljava/lang/String;)V

    :goto_d
    const/4 v4, 0x2

    goto :goto_e

    .line 125
    :cond_f
    invoke-virtual {v12, v4}, Lcom/mgtv/downloader/database/c;->e(Ljava/lang/String;)V

    goto :goto_d

    .line 126
    :goto_e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/mgtv/downloader/database/c;->a(Ljava/lang/Integer;)V

    const/4 v4, 0x1

    .line 127
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/mgtv/downloader/database/c;->e(Ljava/lang/Integer;)V

    .line 128
    invoke-virtual {v12, v11}, Lcom/mgtv/downloader/database/c;->c(Ljava/lang/String;)V

    .line 129
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/mgtv/downloader/database/c;->f(Ljava/lang/Integer;)V

    .line 130
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/mgtv/downloader/database/c;->c(Ljava/lang/Long;)V

    .line 131
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/mgtv/downloader/database/c;->b(Ljava/lang/Integer;)V

    .line 132
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/mgtv/downloader/database/c;->c(Ljava/lang/Integer;)V

    .line 133
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/mgtv/downloader/database/c;->b(Ljava/lang/Long;)V

    .line 134
    invoke-virtual {v12, v2}, Lcom/mgtv/downloader/database/c;->C(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v12, v6}, Lcom/mgtv/downloader/database/c;->z(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v12, v7}, Lcom/mgtv/downloader/database/c;->A(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v12, v8}, Lcom/mgtv/downloader/database/c;->B(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v12, v9}, Lcom/mgtv/downloader/database/c;->H(Ljava/lang/String;)V

    .line 139
    iget-object v4, v1, Lcom/mgtv/downloader/a;->d:Lcom/mgtv/downloader/b/b;

    invoke-interface {v4}, Lcom/mgtv/downloader/b/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/mgtv/downloader/database/c;->D(Ljava/lang/String;)V

    .line 140
    iget-object v4, v1, Lcom/mgtv/downloader/a;->d:Lcom/mgtv/downloader/b/b;

    invoke-interface {v4}, Lcom/mgtv/downloader/b/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/mgtv/downloader/database/c;->E(Ljava/lang/String;)V

    .line 141
    iget-object v4, v1, Lcom/mgtv/downloader/a;->d:Lcom/mgtv/downloader/b/b;

    invoke-interface {v4}, Lcom/mgtv/downloader/b/b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/mgtv/downloader/database/c;->G(Ljava/lang/String;)V

    .line 142
    const-string v4, "http://disp.titan.mgtv.com;http://disp1.titan.mgtv.com;http://123.59.21.240;"

    iput-object v4, v12, Lcom/mgtv/downloader/database/c;->n:Ljava/lang/String;

    .line 143
    invoke-static {}, Lcom/mgtv/downloader/b;->a()Lcom/mgtv/downloader/b;

    move-result-object v4

    new-instance v5, Lcom/mgtv/downloader/a$a;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6}, Lcom/mgtv/downloader/a$a;-><init>(Lcom/mgtv/downloader/a;Lcom/mgtv/downloader/a$1;)V

    const/16 v6, 0xa

    invoke-virtual {v4, v12, v6, v2, v5}, Lcom/mgtv/downloader/b;->a(Lcom/mgtv/downloader/database/c;ILjava/lang/String;Lcom/mgtv/downloader/a/b;)I

    move-result v2

    if-eqz v3, :cond_16

    if-ltz v2, :cond_10

    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "0000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_10

    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "8099-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 145
    :goto_10
    iget-object v5, v1, Lcom/mgtv/downloader/a;->h:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 146
    iget-object v4, v1, Lcom/mgtv/downloader/a;->h:Ljava/lang/String;

    const-string v5, "10007"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14

    iget-object v4, v1, Lcom/mgtv/downloader/a;->h:Ljava/lang/String;

    const-string v5, "10100"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_11

    .line 147
    :cond_11
    iget-object v4, v1, Lcom/mgtv/downloader/a;->h:Ljava/lang/String;

    const-string v5, "10022"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "6004-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mgtv/downloader/a;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_12

    .line 149
    :cond_12
    iget-object v4, v1, Lcom/mgtv/downloader/a;->h:Ljava/lang/String;

    const-string v5, "10"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "6009-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mgtv/downloader/a;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_12

    .line 151
    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "8099-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mgtv/downloader/a;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_12

    .line 152
    :cond_14
    :goto_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "6008-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mgtv/downloader/a;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 153
    :goto_12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "if taskID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", errorCode "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " createCode "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/mgtv/downloader/a;->h:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 154
    :cond_15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "else taskID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", errorCode "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " createCode "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/mgtv/downloader/a;->h:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_9

    .line 155
    :cond_16
    :goto_13
    monitor-exit p0

    return-void

    .line 156
    :goto_14
    :try_start_5
    new-instance v13, Lcom/mgtv/downloader/database/c;

    invoke-direct {v13}, Lcom/mgtv/downloader/database/c;-><init>()V

    .line 157
    iput-object v10, v13, Lcom/mgtv/downloader/database/c;->M:Ljava/lang/String;

    .line 158
    iput-object v11, v13, Lcom/mgtv/downloader/database/c;->b:Ljava/lang/String;

    .line 159
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 160
    iget-object v14, v1, Lcom/mgtv/downloader/a;->f:Ljava/lang/String;

    invoke-direct {v1, v14}, Lcom/mgtv/downloader/a;->d(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iput-object v14, v13, Lcom/mgtv/downloader/database/c;->w:Ljava/lang/Integer;

    goto :goto_15

    .line 161
    :cond_17
    invoke-direct {v1, v5}, Lcom/mgtv/downloader/a;->d(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iput-object v14, v13, Lcom/mgtv/downloader/database/c;->w:Ljava/lang/Integer;

    .line 162
    :goto_15
    iget-object v14, v1, Lcom/mgtv/downloader/a;->c:Lcom/mgtv/downloader/util/b;

    iget v14, v14, Lcom/mgtv/downloader/util/b;->j:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iput-object v14, v13, Lcom/mgtv/downloader/database/c;->G:Ljava/lang/Integer;

    .line 163
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_18

    .line 164
    iget-object v4, v1, Lcom/mgtv/downloader/a;->e:Ljava/lang/String;

    iput-object v4, v13, Lcom/mgtv/downloader/database/c;->f:Ljava/lang/String;

    goto :goto_16

    .line 165
    :cond_18
    iput-object v4, v13, Lcom/mgtv/downloader/database/c;->f:Ljava/lang/String;

    .line 166
    :goto_16
    invoke-static {}, Lcom/mgtv/downloader/dir/a;->c()Lcom/mgtv/downloader/dir/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mgtv/downloader/dir/a;->e()Lcom/mgtv/downloader/dir/DownloadDirInfo;

    move-result-object v4

    .line 167
    iget-object v14, v13, Lcom/mgtv/downloader/database/c;->f:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_19

    .line 168
    iget-object v14, v13, Lcom/mgtv/downloader/database/c;->f:Ljava/lang/String;

    iput-object v14, v4, Lcom/mgtv/downloader/dir/DownloadDirInfo;->path:Ljava/lang/String;

    .line 169
    invoke-static {}, Lcom/mgtv/downloader/dir/a;->c()Lcom/mgtv/downloader/dir/a;

    move-result-object v14

    invoke-virtual {v14, v4}, Lcom/mgtv/downloader/dir/a;->a(Lcom/mgtv/downloader/dir/DownloadDirInfo;)Lcom/mgtv/downloader/dir/DownloadDirInfo;

    .line 170
    const-string v14, "DownloadSDK_1.8.0"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p1, v12

    const-string v12, "curDir : "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v14, v12}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_19
    move-object/from16 p1, v12

    .line 171
    :goto_17
    iget-object v4, v4, Lcom/mgtv/downloader/dir/DownloadDirInfo;->path:Ljava/lang/String;

    .line 172
    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1a

    goto :goto_18

    :cond_1a
    invoke-virtual {v4, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 173
    :goto_18
    invoke-virtual {v13}, Lcom/mgtv/downloader/database/c;->G()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-nez v12, :cond_1b

    .line 174
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mgtv/downloader/util/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".mtv"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 175
    invoke-virtual {v13, v4}, Lcom/mgtv/downloader/database/c;->e(Ljava/lang/String;)V

    :goto_19
    const/4 v4, 0x2

    goto :goto_1a

    .line 176
    :cond_1b
    invoke-virtual {v13, v4}, Lcom/mgtv/downloader/database/c;->e(Ljava/lang/String;)V

    goto :goto_19

    .line 177
    :goto_1a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/mgtv/downloader/database/c;->a(Ljava/lang/Integer;)V

    const/4 v4, 0x1

    .line 178
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/mgtv/downloader/database/c;->e(Ljava/lang/Integer;)V

    .line 179
    invoke-virtual {v13, v11}, Lcom/mgtv/downloader/database/c;->c(Ljava/lang/String;)V

    .line 180
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/mgtv/downloader/database/c;->f(Ljava/lang/Integer;)V

    .line 181
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/mgtv/downloader/database/c;->c(Ljava/lang/Long;)V

    .line 182
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/mgtv/downloader/database/c;->b(Ljava/lang/Integer;)V

    .line 183
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/mgtv/downloader/database/c;->c(Ljava/lang/Integer;)V

    .line 184
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/mgtv/downloader/database/c;->b(Ljava/lang/Long;)V

    .line 185
    invoke-virtual {v13, v2}, Lcom/mgtv/downloader/database/c;->C(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v13, v6}, Lcom/mgtv/downloader/database/c;->z(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v13, v7}, Lcom/mgtv/downloader/database/c;->A(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v13, v8}, Lcom/mgtv/downloader/database/c;->B(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v13, v9}, Lcom/mgtv/downloader/database/c;->H(Ljava/lang/String;)V

    .line 190
    iget-object v4, v1, Lcom/mgtv/downloader/a;->d:Lcom/mgtv/downloader/b/b;

    invoke-interface {v4}, Lcom/mgtv/downloader/b/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/mgtv/downloader/database/c;->D(Ljava/lang/String;)V

    .line 191
    iget-object v4, v1, Lcom/mgtv/downloader/a;->d:Lcom/mgtv/downloader/b/b;

    invoke-interface {v4}, Lcom/mgtv/downloader/b/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/mgtv/downloader/database/c;->E(Ljava/lang/String;)V

    .line 192
    iget-object v4, v1, Lcom/mgtv/downloader/a;->d:Lcom/mgtv/downloader/b/b;

    invoke-interface {v4}, Lcom/mgtv/downloader/b/b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/mgtv/downloader/database/c;->G(Ljava/lang/String;)V

    .line 193
    const-string v4, "http://disp.titan.mgtv.com;http://disp1.titan.mgtv.com;http://123.59.21.240;"

    iput-object v4, v13, Lcom/mgtv/downloader/database/c;->n:Ljava/lang/String;

    .line 194
    invoke-static {}, Lcom/mgtv/downloader/b;->a()Lcom/mgtv/downloader/b;

    move-result-object v4

    new-instance v5, Lcom/mgtv/downloader/a$a;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6}, Lcom/mgtv/downloader/a$a;-><init>(Lcom/mgtv/downloader/a;Lcom/mgtv/downloader/a$1;)V

    const/16 v6, 0xa

    invoke-virtual {v4, v13, v6, v2, v5}, Lcom/mgtv/downloader/b;->a(Lcom/mgtv/downloader/database/c;ILjava/lang/String;Lcom/mgtv/downloader/a/b;)I

    move-result v2

    if-eqz v3, :cond_21

    if-ltz v2, :cond_1c

    .line 195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "0000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1c

    :cond_1c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "8099-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 196
    :goto_1c
    iget-object v5, v1, Lcom/mgtv/downloader/a;->h:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_20

    .line 197
    iget-object v4, v1, Lcom/mgtv/downloader/a;->h:Ljava/lang/String;

    const-string v5, "10007"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1f

    iget-object v4, v1, Lcom/mgtv/downloader/a;->h:Ljava/lang/String;

    const-string v5, "10100"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 198
    iget-object v4, v1, Lcom/mgtv/downloader/a;->h:Ljava/lang/String;

    const-string v5, "10022"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 199
    iget-object v4, v1, Lcom/mgtv/downloader/a;->h:Ljava/lang/String;

    const-string v5, "10"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 200
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "6009-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mgtv/downloader/a;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1d

    .line 201
    :cond_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "8099-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mgtv/downloader/a;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1d

    .line 202
    :cond_1e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "6004-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mgtv/downloader/a;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1d

    .line 203
    :cond_1f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "6008-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mgtv/downloader/a;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 204
    :goto_1d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "if taskID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", errorCode "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " createCode "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/mgtv/downloader/a;->h:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    goto :goto_1e

    .line 205
    :cond_20
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "else taskID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", errorCode "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " createCode "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/mgtv/downloader/a;->h:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 206
    :goto_1e
    invoke-interface {v3, v10, v4}, Lcom/mgtv/downloader/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_21
    throw p1

    :goto_1f
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 208
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 209
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_2

    .line 210
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 211
    invoke-static {}, Lcom/mgtv/downloader/b;->a()Lcom/mgtv/downloader/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mgtv/downloader/b;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 212
    invoke-static {}, Lcom/mgtv/downloader/b;->a()Lcom/mgtv/downloader/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mgtv/downloader/b;->b(I)I

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 213
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 214
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_2

    .line 215
    invoke-static {}, Lcom/mgtv/downloader/b;->a()Lcom/mgtv/downloader/b;

    move-result-object v0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mgtv/downloader/b;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 216
    invoke-static {}, Lcom/mgtv/downloader/b;->a()Lcom/mgtv/downloader/b;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p2, v2}, Lcom/mgtv/downloader/b;->a(ILjava/lang/String;Z)I

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public b()Lcom/mgtv/downloader/b/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/downloader/a;->d:Lcom/mgtv/downloader/b/b;

    return-object p0
.end method

.method public b(I)Ljava/lang/String;
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/mgtv/downloader/a;->c:Lcom/mgtv/downloader/util/b;

    const-string v1, "8099"

    if-nez v0, :cond_0

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    const-string v0, ""

    if-nez p1, :cond_1

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgtv/downloader/a;->c:Lcom/mgtv/downloader/util/b;

    iget p0, p0, Lcom/mgtv/downloader/util/b;->h:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgtv/downloader/a;->c:Lcom/mgtv/downloader/util/b;

    iget p0, p0, Lcom/mgtv/downloader/util/b;->h:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 11
    iget-object p0, p0, Lcom/mgtv/downloader/a;->f:Ljava/lang/String;

    return-object p0

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 12
    iget-object p0, p0, Lcom/mgtv/downloader/a;->e:Ljava/lang/String;

    return-object p0

    .line 13
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 14
    const-string v0, "8099"

    if-nez p1, :cond_0

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 16
    :cond_0
    invoke-static {}, Lcom/mgtv/downloader/b;->a()Lcom/mgtv/downloader/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mgtv/downloader/b;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_1

    .line 18
    invoke-static {}, Lcom/mgtv/downloader/b;->a()Lcom/mgtv/downloader/b;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mgtv/downloader/b;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/mgtv/downloader/a;->g:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_2

    .line 4
    invoke-static {}, Lcom/mgtv/downloader/b;->a()Lcom/mgtv/downloader/b;

    move-result-object v0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mgtv/downloader/b;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 5
    invoke-static {}, Lcom/mgtv/downloader/b;->a()Lcom/mgtv/downloader/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mgtv/downloader/b;->c(I)I

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/mgtv/downloader/b;->a()Lcom/mgtv/downloader/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/downloader/b;->d()I

    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    const-string p0, "\\d+"

    invoke-virtual {p1, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {}, Lcom/hunantv/imgo/util/b;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
