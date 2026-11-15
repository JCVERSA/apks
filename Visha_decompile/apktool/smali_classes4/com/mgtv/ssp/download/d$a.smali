.class public final Lcom/mgtv/ssp/download/d$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/ssp/download/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/mgtv/ssp/download/dao3/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private b:Lcom/mgtv/ssp/download/d$b;

.field private c:Z

.field private d:J

.field private e:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/download/dao3/c;Lcom/mgtv/ssp/download/d$b;)V
    .locals 2
    .param p1    # Lcom/mgtv/ssp/download/dao3/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "mgtv_fileDownld"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mgtv/ssp/download/d$a;->d:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgtv/ssp/download/d$a;->e:Ljava/io/RandomAccessFile;

    iput-object p1, p0, Lcom/mgtv/ssp/download/d$a;->a:Lcom/mgtv/ssp/download/dao3/c;

    iput-object p2, p0, Lcom/mgtv/ssp/download/d$a;->b:Lcom/mgtv/ssp/download/d$b;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mgtv/ssp/download/d$a;->c:Z

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/ssp/download/d$a;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/mgtv/ssp/download/d$a;->d:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/dao3/c;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgtv/ssp/download/d$a;->a:Lcom/mgtv/ssp/download/dao3/c;

    return-object p0
.end method

.method public static synthetic a(Lcom/mgtv/ssp/download/d$a;Ljava/io/RandomAccessFile;)Ljava/io/RandomAccessFile;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mgtv/ssp/download/d$a;->e:Ljava/io/RandomAccessFile;

    return-object p1
.end method

.method private a()V
    .locals 6

    .line 5
    :try_start_0
    invoke-static {}, Lcom/mgtv/ssp/download/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-static {}, Lcom/mgtv/ssp/download/d;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/ssp/download/a;->a(Landroid/content/Context;)Lcom/mgtv/ssp/download/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/ssp/download/a;->a()Lcom/mgtv/ssp/download/dao3/FileDownloadInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/ssp/download/d$a;->a:Lcom/mgtv/ssp/download/dao3/c;

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/download/dao3/FileDownloadInfoDao;->b(Lcom/mgtv/ssp/download/dao3/c;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-static {}, Lcom/mgtv/ssp/download/d;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/ssp/download/a;->a(Landroid/content/Context;)Lcom/mgtv/ssp/download/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/ssp/download/a;->a()Lcom/mgtv/ssp/download/dao3/FileDownloadInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/ssp/download/d$a;->a:Lcom/mgtv/ssp/download/dao3/c;

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_2

    .line 8
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mgtv/ssp/download/d$a;->a:Lcom/mgtv/ssp/download/dao3/c;

    iget-object v0, v0, Lcom/mgtv/ssp/download/dao3/c;->g:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mgtv/ssp/download/d$a;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 9
    iget-object v4, p0, Lcom/mgtv/ssp/download/d$a;->a:Lcom/mgtv/ssp/download/dao3/c;

    iget-object v4, v4, Lcom/mgtv/ssp/download/dao3/c;->h:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 10
    :cond_1
    iput-wide v2, p0, Lcom/mgtv/ssp/download/d$a;->d:J

    .line 11
    :cond_2
    const-string v0, "FileDownloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " APKDOWNLOAD THREAD mDownloadInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/ssp/download/d$a;->a:Lcom/mgtv/ssp/download/dao3/c;

    invoke-virtual {v2}, Lcom/mgtv/ssp/download/dao3/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mgtv/ssp/download/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/mgtv/ssp/download/d;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v1, p0, Lcom/mgtv/ssp/download/d$a;->a:Lcom/mgtv/ssp/download/dao3/c;

    iget-object v1, v1, Lcom/mgtv/ssp/download/dao3/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    const/4 v1, 0x0

    .line 14
    invoke-static {v1}, Lcom/mgtv/ssp/download/d;->a(Z)Z

    goto :goto_1

    .line 15
    :cond_3
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v1, p0, Lcom/mgtv/ssp/download/d$a;->a:Lcom/mgtv/ssp/download/dao3/c;

    iget-object v1, v1, Lcom/mgtv/ssp/download/dao3/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "RANGE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/mgtv/ssp/download/d$a;->d:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 16
    :goto_1
    invoke-static {}, Lcom/mgtv/ssp/download/d;->c()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->connectTimeoutMillis()I

    .line 17
    invoke-static {}, Lcom/mgtv/ssp/download/d;->c()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/mgtv/ssp/download/d$a$1;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/download/d$a$1;-><init>(Lcom/mgtv/ssp/download/d$a;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 18
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    iget-object v1, p0, Lcom/mgtv/ssp/download/d$a;->a:Lcom/mgtv/ssp/download/dao3/c;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/mgtv/ssp/download/d;->a(Lcom/mgtv/ssp/download/dao3/c;I)V

    .line 20
    iget-object v1, p0, Lcom/mgtv/ssp/download/d$a;->b:Lcom/mgtv/ssp/download/d$b;

    if-eqz v1, :cond_4

    .line 21
    iget-object p0, p0, Lcom/mgtv/ssp/download/d$a;->a:Lcom/mgtv/ssp/download/dao3/c;

    iget-object v2, p0, Lcom/mgtv/ssp/download/dao3/c;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, p0, v0}, Lcom/mgtv/ssp/download/d$b;->a(Ljava/lang/String;Lcom/mgtv/ssp/download/dao3/c;Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public static synthetic b(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/d$b;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/download/d$a;->b:Lcom/mgtv/ssp/download/d$b;

    return-object p0
.end method

.method public static synthetic c(Lcom/mgtv/ssp/download/d$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/mgtv/ssp/download/d$a;->d:J

    return-wide v0
.end method

.method public static synthetic d(Lcom/mgtv/ssp/download/d$a;)Ljava/io/RandomAccessFile;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/download/d$a;->e:Ljava/io/RandomAccessFile;

    return-object p0
.end method

.method public static synthetic e(Lcom/mgtv/ssp/download/d$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/ssp/download/d$a;->c:Z

    return p0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/mgtv/ssp/download/d$a;->c:Z

    return-void
.end method

.method public run()V
    .locals 0

    invoke-direct {p0}, Lcom/mgtv/ssp/download/d$a;->a()V

    return-void
.end method
