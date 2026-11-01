.class public final Lcom/wandoujia/download/rpc/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/wandoujia/download/rpc/IBlockDownloadTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wandoujia/download/rpc/a$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/wandoujia/download/rpc/a$a;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/wandoujia/download/rpc/g;

.field public c:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

.field public d:Lo/cn3;

.field public e:J

.field public f:Lcom/wandoujia/mtdownload/dashmpd/download/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/wandoujia/download/rpc/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/wandoujia/download/rpc/a$a;-><init>(Lo/pg1;)V

    sput-object v0, Lcom/wandoujia/download/rpc/a;->g:Lcom/wandoujia/download/rpc/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/wandoujia/download/rpc/g;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wandoujia/download/rpc/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/wandoujia/download/rpc/a;->b:Lcom/wandoujia/download/rpc/g;

    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->PENDING:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    iput-object p1, p0, Lcom/wandoujia/download/rpc/a;->c:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    return-void
.end method

.method public static final synthetic a(Lcom/wandoujia/download/rpc/a;Lcom/wandoujia/mtdownload/dashmpd/download/DashMpdException;)Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/a;->h(Lcom/wandoujia/mtdownload/dashmpd/download/DashMpdException;)Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/wandoujia/download/rpc/a;)Lo/cn3;
    .locals 0

    iget-object p0, p0, Lcom/wandoujia/download/rpc/a;->d:Lo/cn3;

    return-object p0
.end method

.method public static final synthetic e(Lcom/wandoujia/download/rpc/a;Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/a;->i(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;)V

    return-void
.end method

.method public static final synthetic g(Lcom/wandoujia/download/rpc/a;J)V
    .locals 0

    iput-wide p1, p0, Lcom/wandoujia/download/rpc/a;->e:J

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    const/16 v0, 0x1eb

    return v0
.end method

.method public d(Lcom/wandoujia/download/rpc/g;Lo/cn3;)V
    .locals 4

    const-string v0, "request"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockListener"

    invoke-static {p2, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/wandoujia/download/rpc/a;->d:Lo/cn3;

    sget-object p2, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->PENDING:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    invoke-virtual {p0, p2}, Lcom/wandoujia/download/rpc/a;->i(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;)V

    iget-object p2, p0, Lcom/wandoujia/download/rpc/a;->f:Lcom/wandoujia/mtdownload/dashmpd/download/a;

    if-eqz p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Lcom/wandoujia/mtdownload/dashmpd/download/a;

    iget-object v0, p0, Lcom/wandoujia/download/rpc/a;->a:Landroid/content/Context;

    iget-object v1, p1, Lcom/wandoujia/download/rpc/g;->b:Ljava/lang/String;

    const-string v2, "downloadUrl"

    invoke-static {v1, v2}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/wandoujia/download/rpc/g;->c:Ljava/lang/String;

    const-string v3, "filePath"

    invoke-static {v2, v3}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, v1, v2}, Lcom/wandoujia/mtdownload/dashmpd/download/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/wandoujia/download/rpc/a;->f:Lcom/wandoujia/mtdownload/dashmpd/download/a;

    sget-object v0, Lo/z48;->r:Ljava/util/concurrent/ExecutorService;

    const-string v1, "DOWN_LOAD_EXECUTOR"

    invoke-static {v0, v1}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/wandoujia/mtdownload/dashmpd/download/a;->u(Ljava/util/concurrent/ExecutorService;)V

    iget-object p2, p0, Lcom/wandoujia/download/rpc/a;->f:Lcom/wandoujia/mtdownload/dashmpd/download/a;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/a;->j()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/wandoujia/mtdownload/dashmpd/download/a;->t(I)V

    :cond_1
    iget-object p2, p0, Lcom/wandoujia/download/rpc/a;->f:Lcom/wandoujia/mtdownload/dashmpd/download/a;

    if-eqz p2, :cond_2

    new-instance v0, Lcom/wandoujia/download/rpc/a$b;

    invoke-direct {v0, p0, p1}, Lcom/wandoujia/download/rpc/a$b;-><init>(Lcom/wandoujia/download/rpc/a;Lcom/wandoujia/download/rpc/g;)V

    invoke-virtual {p2, v0}, Lcom/wandoujia/mtdownload/dashmpd/download/a;->s(Lo/sc1;)V

    :cond_2
    iget-object p1, p0, Lcom/wandoujia/download/rpc/a;->f:Lcom/wandoujia/mtdownload/dashmpd/download/a;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/wandoujia/mtdownload/dashmpd/download/a;->v()V

    :cond_3
    return-void
.end method

.method public f(Ljava/util/Map;)V
    .locals 1

    const-string v0, "headers"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getStatus()Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/rpc/a;->c:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    return-object v0
.end method

.method public final h(Lcom/wandoujia/mtdownload/dashmpd/download/DashMpdException;)Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;
    .locals 0

    invoke-virtual {p1}, Lcom/wandoujia/mtdownload/dashmpd/download/DashMpdException;->getErrorNo()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->UNKNOWN_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    goto :goto_0

    :pswitch_0
    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->CRC_VERIFY_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    goto :goto_0

    :pswitch_1
    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->FILE_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    goto :goto_0

    :pswitch_2
    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->FILE_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    goto :goto_0

    :pswitch_3
    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->DOWNLOAD_SIZE_UNKNOWN:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    goto :goto_0

    :pswitch_4
    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->URL_NULL_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    goto :goto_0

    :pswitch_5
    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->FILE_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    goto :goto_0

    :pswitch_6
    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->FILE_NOT_FOUND:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    :goto_0
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

.method public final i(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;)V
    .locals 5

    iput-object p1, p0, Lcom/wandoujia/download/rpc/a;->c:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    iget-object v0, p0, Lcom/wandoujia/download/rpc/a;->d:Lo/cn3;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/wandoujia/download/rpc/a;->b:Lcom/wandoujia/download/rpc/g;

    iget v1, v1, Lcom/wandoujia/download/rpc/g;->f:I

    invoke-interface {v0, p0, v1, p1}, Lo/cn3;->a(Lcom/wandoujia/download/rpc/IBlockDownloadTask;ILcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;)V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/wandoujia/download/rpc/a;->d:Lo/cn3;

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/wandoujia/download/rpc/a;->b:Lcom/wandoujia/download/rpc/g;

    iget v2, v2, Lcom/wandoujia/download/rpc/g;->f:I

    iget-wide v3, p0, Lcom/wandoujia/download/rpc/a;->e:J

    sub-long v3, v0, v3

    invoke-interface {p1, v2, v3, v4}, Lo/cn3;->b(IJ)V

    :cond_1
    iput-wide v0, p0, Lcom/wandoujia/download/rpc/a;->e:J

    return-void
.end method

.method public final j()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/rpc/a;->b:Lcom/wandoujia/download/rpc/g;

    iget v0, v0, Lcom/wandoujia/download/rpc/g;->f:I

    return v0
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/rpc/a;->f:Lcom/wandoujia/mtdownload/dashmpd/download/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/mtdownload/dashmpd/download/a;->w()V

    :cond_0
    return-void
.end method
