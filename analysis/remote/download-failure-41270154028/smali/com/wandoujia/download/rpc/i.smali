.class public Lcom/wandoujia/download/rpc/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/wandoujia/download/rpc/IBlockDownloadTask;
.implements Lcom/wandoujia/download/rpc/k$a;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/wandoujia/download/rpc/g;

.field public c:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

.field public d:Lo/cn3;

.field public e:J

.field public f:Lo/hg4;

.field public g:Lcom/wandoujia/download/rpc/k;

.field public h:J

.field public i:J

.field public j:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/wandoujia/download/rpc/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->PENDING:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    iput-object v0, p0, Lcom/wandoujia/download/rpc/i;->c:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    iput-object p1, p0, Lcom/wandoujia/download/rpc/i;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/wandoujia/download/rpc/i;->b:Lcom/wandoujia/download/rpc/g;

    return-void
.end method

.method public static bridge synthetic g(Lcom/wandoujia/download/rpc/i;)Lo/hg4;
    .locals 0

    iget-object p0, p0, Lcom/wandoujia/download/rpc/i;->f:Lo/hg4;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/wandoujia/download/rpc/i;)Lo/cn3;
    .locals 0

    iget-object p0, p0, Lcom/wandoujia/download/rpc/i;->d:Lo/cn3;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/wandoujia/download/rpc/i;)Lcom/wandoujia/download/rpc/k;
    .locals 0

    iget-object p0, p0, Lcom/wandoujia/download/rpc/i;->g:Lcom/wandoujia/download/rpc/k;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/wandoujia/download/rpc/i;J)V
    .locals 0

    iput-wide p1, p0, Lcom/wandoujia/download/rpc/i;->h:J

    return-void
.end method

.method public static bridge synthetic k(Lcom/wandoujia/download/rpc/i;J)V
    .locals 0

    iput-wide p1, p0, Lcom/wandoujia/download/rpc/i;->j:J

    return-void
.end method

.method public static bridge synthetic m(Lcom/wandoujia/download/rpc/i;J)V
    .locals 0

    iput-wide p1, p0, Lcom/wandoujia/download/rpc/i;->i:J

    return-void
.end method

.method public static bridge synthetic n(Lcom/wandoujia/download/rpc/i;J)V
    .locals 0

    iput-wide p1, p0, Lcom/wandoujia/download/rpc/i;->e:J

    return-void
.end method

.method public static bridge synthetic o(Lcom/wandoujia/download/rpc/i;Lcom/wandoujia/download/rpc/k;)V
    .locals 0

    iput-object p1, p0, Lcom/wandoujia/download/rpc/i;->g:Lcom/wandoujia/download/rpc/k;

    return-void
.end method

.method public static bridge synthetic p(Lcom/wandoujia/download/rpc/i;)V
    .locals 0

    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/i;->s()V

    return-void
.end method

.method public static bridge synthetic q(Lcom/wandoujia/download/rpc/i;Lcom/wandoujia/m3u8download/M3u8DownloadException;)Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/i;->t(Lcom/wandoujia/m3u8download/M3u8DownloadException;)Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic r(Lcom/wandoujia/download/rpc/i;Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wandoujia/download/rpc/i;->u(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;)V

    return-void
.end method

.method private u(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;)V
    .locals 5

    iput-object p1, p0, Lcom/wandoujia/download/rpc/i;->c:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    iget-object v0, p0, Lcom/wandoujia/download/rpc/i;->d:Lo/cn3;

    iget-object v1, p0, Lcom/wandoujia/download/rpc/i;->b:Lcom/wandoujia/download/rpc/g;

    iget v1, v1, Lcom/wandoujia/download/rpc/g;->f:I

    invoke-interface {v0, p0, v1, p1}, Lo/cn3;->a(Lcom/wandoujia/download/rpc/IBlockDownloadTask;ILcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/wandoujia/download/rpc/i;->d:Lo/cn3;

    iget-object v2, p0, Lcom/wandoujia/download/rpc/i;->b:Lcom/wandoujia/download/rpc/g;

    iget v2, v2, Lcom/wandoujia/download/rpc/g;->f:I

    iget-wide v3, p0, Lcom/wandoujia/download/rpc/i;->e:J

    sub-long v3, v0, v3

    invoke-interface {p1, v2, v3, v4}, Lo/cn3;->b(IJ)V

    iput-wide v0, p0, Lcom/wandoujia/download/rpc/i;->e:J

    return-void
.end method

.method private v()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->FILE_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    invoke-direct {p0, p1}, Lcom/wandoujia/download/rpc/i;->u(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;)V

    return-void
.end method

.method public b(F)V
    .locals 9

    iget-object v0, p0, Lcom/wandoujia/download/rpc/i;->f:Lo/hg4;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/hg4;->o()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    iget-object v0, p0, Lcom/wandoujia/download/rpc/i;->d:Lo/cn3;

    iget-object v1, p0, Lcom/wandoujia/download/rpc/i;->b:Lcom/wandoujia/download/rpc/g;

    iget v1, v1, Lcom/wandoujia/download/rpc/g;->f:I

    iget-wide v2, p0, Lcom/wandoujia/download/rpc/i;->h:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/wandoujia/download/rpc/i;->i:J

    long-to-int v5, v4

    const/4 v6, 0x0

    iget-wide v7, p0, Lcom/wandoujia/download/rpc/i;->j:J

    const/4 v4, 0x0

    invoke-interface/range {v0 .. v8}, Lo/cn3;->c(IJ[BILcom/wandoujia/mtdownload/c;J)V

    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    const/16 v0, 0x1eb

    return v0
.end method

.method public d(Lcom/wandoujia/download/rpc/g;Lo/cn3;)V
    .locals 3

    iput-object p2, p0, Lcom/wandoujia/download/rpc/i;->d:Lo/cn3;

    sget-object p2, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->PENDING:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    invoke-direct {p0, p2}, Lcom/wandoujia/download/rpc/i;->u(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;)V

    iget-object p2, p1, Lcom/wandoujia/download/rpc/g;->b:Ljava/lang/String;

    invoke-static {p2}, Lo/wc1;->c(Ljava/lang/String;)Z

    move-result p2

    iget-object v0, p0, Lcom/wandoujia/download/rpc/i;->f:Lo/hg4;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lo/hg4;

    iget-object v1, p1, Lcom/wandoujia/download/rpc/g;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/wandoujia/download/rpc/g;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lo/hg4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wandoujia/download/rpc/i;->f:Lo/hg4;

    sget-object v1, Lo/z48;->r:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1}, Lo/hg4;->F(Ljava/util/concurrent/ExecutorService;)V

    iget-object v0, p0, Lcom/wandoujia/download/rpc/i;->f:Lo/hg4;

    invoke-direct {p0}, Lcom/wandoujia/download/rpc/i;->v()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/hg4;->E(I)V

    iget-object v0, p0, Lcom/wandoujia/download/rpc/i;->f:Lo/hg4;

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Lo/hg4;->D(Z)V

    iget-object v0, p0, Lcom/wandoujia/download/rpc/i;->f:Lo/hg4;

    new-instance v1, Lcom/wandoujia/download/rpc/i$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/wandoujia/download/rpc/i$a;-><init>(Lcom/wandoujia/download/rpc/i;Lcom/wandoujia/download/rpc/g;Z)V

    invoke-virtual {v0, v1}, Lo/hg4;->G(Lo/gg4;)V

    iget-object p1, p0, Lcom/wandoujia/download/rpc/i;->f:Lo/hg4;

    invoke-virtual {p1}, Lo/hg4;->H()V

    return-void
.end method

.method public e()V
    .locals 1

    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/i;->s()V

    iget-object v0, p0, Lcom/wandoujia/download/rpc/i;->f:Lo/hg4;

    invoke-virtual {v0}, Lo/hg4;->k()V

    return-void
.end method

.method public f(Ljava/util/Map;)V
    .locals 0

    return-void
.end method

.method public getStatus()Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/rpc/i;->c:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/rpc/i;->b:Lcom/wandoujia/download/rpc/g;

    iget v0, v0, Lcom/wandoujia/download/rpc/g;->f:I

    return v0
.end method

.method public final s()V
    .locals 5

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/wandoujia/download/rpc/i;->b:Lcom/wandoujia/download/rpc/g;

    iget-object v1, v1, Lcom/wandoujia/download/rpc/g;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->SUCCESS:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    invoke-direct {p0, v0}, Lcom/wandoujia/download/rpc/i;->u(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->FILE_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    invoke-direct {p0, v0}, Lcom/wandoujia/download/rpc/i;->u(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;)V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/rpc/i;->f:Lo/hg4;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/hg4;->I()V

    :cond_0
    return-void
.end method

.method public final t(Lcom/wandoujia/m3u8download/M3u8DownloadException;)Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;
    .locals 0

    invoke-virtual {p1}, Lcom/wandoujia/m3u8download/M3u8DownloadException;->getErrorCode()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->UNKNOWN_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    return-object p1

    :pswitch_0
    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->CRC_VERIFY_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    return-object p1

    :pswitch_1
    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->FILE_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->FILE_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    return-object p1

    :pswitch_3
    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->DOWNLOAD_SIZE_UNKNOWN:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    return-object p1

    :pswitch_4
    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->URL_NULL_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    return-object p1

    :pswitch_5
    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->FILE_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    return-object p1

    :pswitch_6
    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->FILE_NOT_FOUND:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
