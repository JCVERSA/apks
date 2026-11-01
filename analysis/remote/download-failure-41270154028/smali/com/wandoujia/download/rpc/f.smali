.class public Lcom/wandoujia/download/rpc/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wandoujia/download/rpc/f$h;,
        Lcom/wandoujia/download/rpc/f$f;,
        Lcom/wandoujia/download/rpc/f$d;,
        Lcom/wandoujia/download/rpc/f$e;,
        Lcom/wandoujia/download/rpc/f$g;
    }
.end annotation


# static fields
.field public static final v:[I

.field public static final w:Ljava/util/concurrent/Executor;

.field public static final x:Ljava/util/concurrent/Executor;


# instance fields
.field public final a:Lcom/wandoujia/download/rpc/h;

.field public b:I

.field public final c:Landroid/util/SparseIntArray;

.field public final d:[I

.field public e:I

.field public final f:Ljava/util/concurrent/ExecutorService;

.field public final g:Lo/yu;

.field public final h:Ljava/util/HashMap;

.field public final i:Lo/sr1;

.field public final j:Landroid/content/Context;

.field public final k:Lo/vu1;

.field public final l:Lo/rg4;

.field public final m:Lcom/wandoujia/download/listener/NetworkStatusStub;

.field public final n:Lo/yg7;

.field public final o:Lcom/wandoujia/download/rpc/b;

.field public final p:Ljava/util/Map;

.field public q:Ljava/util/Map;

.field public r:Lcom/twmacinta/util/MD5;

.field public s:J

.field public final t:Lo/cn3;

.field public final u:Lcom/wandoujia/download/rpc/f$f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x3e8

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    const/16 v3, 0x12c

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/wandoujia/download/rpc/f;->v:[I

    new-instance v0, Lo/dg0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lo/dg0;-><init>(I)V

    sput-object v0, Lcom/wandoujia/download/rpc/f;->w:Ljava/util/concurrent/Executor;

    new-instance v0, Lo/dg0;

    invoke-direct {v0, v1}, Lo/dg0;-><init>(I)V

    sput-object v0, Lcom/wandoujia/download/rpc/f;->x:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/wandoujia/download/rpc/h;Lo/sr1;Ljava/util/concurrent/ExecutorService;Lo/yu;Lo/vu1;Lo/rg4;Lcom/wandoujia/download/rpc/b;Lcom/wandoujia/download/listener/NetworkStatusStub;Lo/yg7;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/wandoujia/download/rpc/f;->b:I

    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/wandoujia/download/rpc/f;->c:Landroid/util/SparseIntArray;

    const/16 v0, 0x8

    const/16 v1, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x4

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/download/rpc/f;->d:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/download/rpc/f;->h:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/download/rpc/f;->p:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/wandoujia/download/rpc/f;->s:J

    new-instance v0, Lcom/wandoujia/download/rpc/f$a;

    invoke-direct {v0, p0}, Lcom/wandoujia/download/rpc/f$a;-><init>(Lcom/wandoujia/download/rpc/f;)V

    iput-object v0, p0, Lcom/wandoujia/download/rpc/f;->t:Lo/cn3;

    iput-object p1, p0, Lcom/wandoujia/download/rpc/f;->j:Landroid/content/Context;

    iput-object p2, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iput-object p3, p0, Lcom/wandoujia/download/rpc/f;->i:Lo/sr1;

    iput-object p4, p0, Lcom/wandoujia/download/rpc/f;->f:Ljava/util/concurrent/ExecutorService;

    iput-object p5, p0, Lcom/wandoujia/download/rpc/f;->g:Lo/yu;

    iput-object p6, p0, Lcom/wandoujia/download/rpc/f;->k:Lo/vu1;

    iput-object p7, p0, Lcom/wandoujia/download/rpc/f;->l:Lo/rg4;

    iput-object p8, p0, Lcom/wandoujia/download/rpc/f;->o:Lcom/wandoujia/download/rpc/b;

    iput-object p9, p0, Lcom/wandoujia/download/rpc/f;->m:Lcom/wandoujia/download/listener/NetworkStatusStub;

    iput-object p10, p0, Lcom/wandoujia/download/rpc/f;->n:Lo/yg7;

    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/f;->Z()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p2, Lcom/wandoujia/download/rpc/h;->H:Lcom/twmacinta/util/MD5State;

    if-nez p3, :cond_0

    new-instance p3, Lcom/twmacinta/util/MD5State;

    invoke-direct {p3}, Lcom/twmacinta/util/MD5State;-><init>()V

    iput-object p3, p2, Lcom/wandoujia/download/rpc/h;->H:Lcom/twmacinta/util/MD5State;

    :cond_0
    new-instance p3, Lcom/twmacinta/util/MD5;

    iget-object p5, p2, Lcom/wandoujia/download/rpc/h;->H:Lcom/twmacinta/util/MD5State;

    invoke-direct {p3, p1, p5}, Lcom/twmacinta/util/MD5;-><init>(Landroid/content/Context;Lcom/twmacinta/util/MD5State;)V

    iput-object p3, p0, Lcom/wandoujia/download/rpc/f;->r:Lcom/twmacinta/util/MD5;

    goto :goto_0

    :cond_1
    iput-object p4, p0, Lcom/wandoujia/download/rpc/f;->r:Lcom/twmacinta/util/MD5;

    :goto_0
    sget-object p1, Lcom/wandoujia/download/rpc/f$c;->a:[I

    iget-object p2, p2, Lcom/wandoujia/download/rpc/h;->g:Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v2, :cond_2

    new-instance p1, Lcom/wandoujia/download/rpc/f$d;

    invoke-direct {p1, p0, p4}, Lcom/wandoujia/download/rpc/f$d;-><init>(Lcom/wandoujia/download/rpc/f;Lo/hu1;)V

    iput-object p1, p0, Lcom/wandoujia/download/rpc/f;->u:Lcom/wandoujia/download/rpc/f$f;

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/wandoujia/download/rpc/f$h;

    invoke-direct {p1, p0, p4}, Lcom/wandoujia/download/rpc/f$h;-><init>(Lcom/wandoujia/download/rpc/f;Lo/ju1;)V

    iput-object p1, p0, Lcom/wandoujia/download/rpc/f;->u:Lcom/wandoujia/download/rpc/f$f;

    :goto_1
    return-void
.end method

.method public static bridge synthetic A(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;)Z
    .locals 0

    invoke-static {p0}, Lcom/wandoujia/download/rpc/f;->V(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;)Z

    move-result p0

    return p0
.end method

.method public static E(Ljava/lang/String;)V
    .locals 10

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    :try_start_0
    const-string v5, "android.os.FileUtils"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setPermissions"

    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    aput-object v8, v7, v1

    aput-object v8, v7, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/16 v7, 0x1a4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    aput-object v7, v4, v2

    aput-object v9, v4, v1

    aput-object v8, v4, v0

    invoke-virtual {v6, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static V(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;)Z
    .locals 1

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->CRC_VERIFY_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->TOO_MANY_REDIRECTS:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->EXCEED_MAX_RETRY_TIMES:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->DOWNLOAD_SIZE_UNKNOWN:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->HTTP_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->URL_NULL_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->INTERNET_NO_ACCESS:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->UNKNOWN_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static W(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static bridge synthetic a(Lcom/wandoujia/download/rpc/f;)Lcom/wandoujia/download/rpc/b;
    .locals 0

    iget-object p0, p0, Lcom/wandoujia/download/rpc/f;->o:Lcom/wandoujia/download/rpc/b;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/wandoujia/download/rpc/f;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/wandoujia/download/rpc/f;->f:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/wandoujia/download/rpc/f;)Lcom/wandoujia/download/rpc/h;
    .locals 0

    iget-object p0, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/wandoujia/download/rpc/f;)J
    .locals 2

    iget-wide v0, p0, Lcom/wandoujia/download/rpc/f;->s:J

    return-wide v0
.end method

.method public static bridge synthetic e(Lcom/wandoujia/download/rpc/f;)Lcom/twmacinta/util/MD5;
    .locals 0

    iget-object p0, p0, Lcom/wandoujia/download/rpc/f;->r:Lcom/twmacinta/util/MD5;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/wandoujia/download/rpc/f;)I
    .locals 0

    iget p0, p0, Lcom/wandoujia/download/rpc/f;->e:I

    return p0
.end method

.method public static bridge synthetic g(Lcom/wandoujia/download/rpc/f;)Lo/yg7;
    .locals 0

    iget-object p0, p0, Lcom/wandoujia/download/rpc/f;->n:Lo/yg7;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/wandoujia/download/rpc/f;)I
    .locals 0

    iget p0, p0, Lcom/wandoujia/download/rpc/f;->b:I

    return p0
.end method

.method public static bridge synthetic i(Lcom/wandoujia/download/rpc/f;J)V
    .locals 0

    iput-wide p1, p0, Lcom/wandoujia/download/rpc/f;->s:J

    return-void
.end method

.method public static bridge synthetic j(Lcom/wandoujia/download/rpc/f;I)V
    .locals 0

    iput p1, p0, Lcom/wandoujia/download/rpc/f;->e:I

    return-void
.end method

.method public static bridge synthetic k(Lcom/wandoujia/download/rpc/f;I)V
    .locals 0

    iput p1, p0, Lcom/wandoujia/download/rpc/f;->b:I

    return-void
.end method

.method public static bridge synthetic l(Lcom/wandoujia/download/rpc/f;I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/f;->B(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Lcom/wandoujia/download/rpc/f;I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/f;->F(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic n(Lcom/wandoujia/download/rpc/f;Lcom/snaptube/extractor/pluginlib/models/Format;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/f;->G(Lcom/snaptube/extractor/pluginlib/models/Format;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic o(Lcom/wandoujia/download/rpc/f;Lcom/snaptube/extractor/pluginlib/models/Format;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/f;->H(Lcom/snaptube/extractor/pluginlib/models/Format;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic p(Lcom/wandoujia/download/rpc/f;Lcom/wandoujia/download/rpc/g;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/f;->J(Lcom/wandoujia/download/rpc/g;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic q(Lcom/wandoujia/download/rpc/f;IZJ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/wandoujia/download/rpc/f;->L(IZJ)V

    return-void
.end method

.method public static bridge synthetic r(Lcom/wandoujia/download/rpc/f;Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;Lcom/wandoujia/download/rpc/IBlockDownloadTask;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/wandoujia/download/rpc/f;->O(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;Lcom/wandoujia/download/rpc/IBlockDownloadTask;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic s(Lcom/wandoujia/download/rpc/f;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/f;->P()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic t(Lcom/wandoujia/download/rpc/f;)I
    .locals 0

    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/f;->R()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic u(Lcom/wandoujia/download/rpc/f;ILcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/wandoujia/download/rpc/f;->T(ILcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic v(Lcom/wandoujia/download/rpc/f;I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/f;->U(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic w(Lcom/wandoujia/download/rpc/f;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/f;->X()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic x(Lcom/wandoujia/download/rpc/f;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/f;->e0(I)V

    return-void
.end method

.method public static bridge synthetic y(Lcom/wandoujia/download/rpc/f;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/wandoujia/download/rpc/f;->j0(II)V

    return-void
.end method

.method public static bridge synthetic z()[I
    .locals 1

    sget-object v0, Lcom/wandoujia/download/rpc/f;->v:[I

    return-object v0
.end method


# virtual methods
.method public final B(I)Z
    .locals 1

    const/16 v0, 0x193

    if-eq p1, v0, :cond_1

    const/16 v0, 0x258

    if-lt p1, v0, :cond_0

    const/16 v0, 0x2bb

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public C()Z
    .locals 7

    iget-object v0, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {v1}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x12b

    if-eq v1, v3, :cond_4

    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {v1}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result v1

    const/16 v4, 0x12c

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/f;->h0()V

    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->o:Lcom/wandoujia/download/rpc/b;

    iget-object v5, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-wide v5, v5, Lcom/wandoujia/download/rpc/h;->a:J

    invoke-virtual {v1, v5, v6}, Lcom/wandoujia/download/rpc/b;->f(J)Z

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->i:Lo/sr1;

    iget-object v2, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-wide v5, v2, Lcom/wandoujia/download/rpc/h;->a:J

    invoke-interface {v1, v5, v6}, Lo/sr1;->a(J)V

    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {v1}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result v1

    invoke-static {v1}, Lo/zr7;->c(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {v1, v3}, Lcom/wandoujia/download/rpc/h;->f(I)V

    invoke-static {}, Lo/it1;->b()Lo/it1;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {v1, v2}, Lo/it1;->f(Lcom/wandoujia/download/rpc/h;)V

    :cond_2
    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {v1, v4}, Lcom/wandoujia/download/rpc/h;->f(I)V

    invoke-static {}, Lo/it1;->b()Lo/it1;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {v1, v2}, Lo/it1;->f(Lcom/wandoujia/download/rpc/h;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {v0}, Lcom/wandoujia/download/rpc/h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/wandoujia/download/rpc/f$b;

    invoke-direct {v0, p0}, Lcom/wandoujia/download/rpc/f$b;-><init>(Lcom/wandoujia/download/rpc/f;)V

    invoke-static {v0}, Lo/y48;->k(Ljava/lang/Runnable;)V

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    :goto_0
    :try_start_1
    monitor-exit v0

    return v2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final D(I)V
    .locals 2

    iget-object v0, p0, Lcom/wandoujia/download/rpc/f;->h:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->h:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/TimerTask;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/TimerTask;->cancel()Z

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final F(I)Z
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-object v0, v0, Lcom/wandoujia/download/rpc/h;->x:Lcom/wandoujia/download/model/segments/DownloadConfigInfo;

    if-nez v0, :cond_0

    new-instance p1, Lcom/wandoujia/download/rpc/g;

    iget-object v0, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-direct {p1, v0}, Lcom/wandoujia/download/rpc/g;-><init>(Lcom/wandoujia/download/rpc/h;)V

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/f;->J(Lcom/wandoujia/download/rpc/g;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/wandoujia/download/rpc/f;->I(Lcom/wandoujia/download/model/segments/DownloadConfigInfo;I)Z

    move-result p1

    return p1
.end method

.method public final G(Lcom/snaptube/extractor/pluginlib/models/Format;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->isYoutubeHDTag(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->getOriginCodec(Ljava/lang/String;)Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-static {v1, p1}, Lo/if9;->a(Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;Lcom/snaptube/extractor/pluginlib/models/Format;)Lcom/snaptube/extractor/pluginlib/models/Format;

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public final H(Lcom/snaptube/extractor/pluginlib/models/Format;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->isYoutubeWebMTag(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->getOriginCodec(Ljava/lang/String;)Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-static {v1, p1}, Lo/if9;->a(Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;Lcom/snaptube/extractor/pluginlib/models/Format;)Lcom/snaptube/extractor/pluginlib/models/Format;

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public final I(Lcom/wandoujia/download/model/segments/DownloadConfigInfo;I)Z
    .locals 21

    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->getBackupUrls()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->getBackupUrls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->getBlocks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->getBlocks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v3, v1, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    monitor-enter v3

    :try_start_0
    iget-object v0, v1, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {v0}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result v0

    const/16 v4, 0x12b

    if-eq v0, v4, :cond_4

    iget-object v0, v1, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {v0}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result v0

    const/16 v4, 0x12c

    if-ne v0, v4, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->getBlocks()Ljava/util/List;

    move-result-object v0

    move/from16 v2, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/download/model/segments/DownloadBlockInfo;

    invoke-static {v0}, Lo/tu1;->b(Lcom/wandoujia/download/model/segments/DownloadBlockInfo;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v1, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-object v4, v4, Lcom/wandoujia/download/rpc/h;->x:Lcom/wandoujia/download/model/segments/DownloadConfigInfo;

    invoke-virtual {v4}, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->getBackupUrls()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0}, Lcom/wandoujia/download/model/segments/DownloadBlockInfo;->getUsedUrlIndex()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wandoujia/download/model/DownloadUrlInfo;

    invoke-static {v4}, Lo/gz1;->a(Lcom/wandoujia/download/model/DownloadUrlInfo;)Ljava/lang/String;

    move-result-object v6

    iget-object v4, v1, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-wide v4, v4, Lcom/wandoujia/download/rpc/h;->t:J

    const-wide/16 v7, 0x0

    cmp-long v9, v4, v7

    if-lez v9, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->getSegSize()J

    move-result-wide v7

    div-long/2addr v4, v7

    :goto_0
    move-wide/from16 v17, v4

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    const-wide/16 v4, -0x1

    goto :goto_0

    :goto_1
    new-instance v15, Lcom/wandoujia/download/rpc/g;

    iget-object v5, v1, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {v0}, Lcom/wandoujia/download/model/segments/DownloadBlockInfo;->getStartPos()J

    move-result-wide v8

    invoke-virtual {v0}, Lcom/wandoujia/download/model/segments/DownloadBlockInfo;->getEndPos()J

    move-result-wide v10

    invoke-virtual {v0}, Lcom/wandoujia/download/model/segments/DownloadBlockInfo;->getCurrentSize()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->getSegInfos()Ljava/util/List;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->getSegSize()J

    move-result-wide v19

    invoke-virtual/range {p1 .. p1}, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->getBlocks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move-object v4, v15

    move/from16 v7, p2

    move-object v2, v15

    move-wide/from16 v15, v19

    move/from16 v19, v0

    invoke-direct/range {v4 .. v19}, Lcom/wandoujia/download/rpc/g;-><init>(Lcom/wandoujia/download/rpc/h;Ljava/lang/String;IJJJLjava/util/List;JJI)V

    invoke-virtual {v1, v2}, Lcom/wandoujia/download/rpc/f;->J(Lcom/wandoujia/download/rpc/g;)Z

    :cond_3
    monitor-exit v3

    const/4 v0, 0x1

    return v0

    :cond_4
    :goto_2
    monitor-exit v3

    return v2

    :goto_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :goto_4
    return v2
.end method

.method public final J(Lcom/wandoujia/download/rpc/g;)Z
    .locals 13

    iget-object v0, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {v1}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result v1

    const/16 v2, 0x12b

    const/4 v3, 0x0

    if-eq v1, v2, :cond_b

    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {v1}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result v1

    const/16 v2, 0x12c

    if-ne v1, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p1, Lcom/wandoujia/download/rpc/g;->b:Ljava/lang/String;

    invoke-static {v1}, Lo/ig4;->l(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/wandoujia/download/rpc/i;

    iget-object v3, p0, Lcom/wandoujia/download/rpc/f;->j:Landroid/content/Context;

    invoke-direct {v1, v3, p1}, Lcom/wandoujia/download/rpc/i;-><init>(Landroid/content/Context;Lcom/wandoujia/download/rpc/g;)V

    iget-object v3, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/f;->i0(Lcom/wandoujia/download/rpc/g;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/wandoujia/download/rpc/h;->L:Z

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_1
    iget-object v1, p1, Lcom/wandoujia/download/rpc/g;->b:Ljava/lang/String;

    invoke-static {v1}, Lo/wc1;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/wandoujia/download/rpc/a;

    iget-object v3, p0, Lcom/wandoujia/download/rpc/f;->j:Landroid/content/Context;

    invoke-direct {v1, v3, p1}, Lcom/wandoujia/download/rpc/a;-><init>(Landroid/content/Context;Lcom/wandoujia/download/rpc/g;)V

    iget-object v3, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/f;->i0(Lcom/wandoujia/download/rpc/g;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/wandoujia/download/rpc/h;->L:Z

    goto :goto_1

    :cond_2
    iget-object v1, p1, Lcom/wandoujia/download/rpc/g;->b:Ljava/lang/String;

    invoke-static {v1}, Lo/bg8;->d(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_4

    new-instance v1, Lcom/wandoujia/download/rpc/n;

    iget-object v6, p0, Lcom/wandoujia/download/rpc/f;->j:Landroid/content/Context;

    iget-object v7, p0, Lcom/wandoujia/download/rpc/f;->f:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v6, p1, v7}, Lcom/wandoujia/download/rpc/n;-><init>(Landroid/content/Context;Lcom/wandoujia/download/rpc/g;Ljava/util/concurrent/ExecutorService;)V

    iget-object v6, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-wide v7, v6, Lcom/wandoujia/download/rpc/h;->r:J

    cmp-long v9, v7, v4

    if-lez v9, :cond_3

    iget-object v4, v6, Lcom/wandoujia/download/rpc/h;->M:Lcom/wandoujia/mtdownload/c;

    if-eqz v4, :cond_3

    invoke-virtual {v1, v4}, Lcom/wandoujia/download/rpc/n;->j(Lcom/wandoujia/mtdownload/c;)V

    :cond_3
    iget-object v4, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iput-boolean v3, v4, Lcom/wandoujia/download/rpc/h;->L:Z

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/f;->i0(Lcom/wandoujia/download/rpc/g;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;

    iget-object v4, p0, Lcom/wandoujia/download/rpc/f;->j:Landroid/content/Context;

    iget-object v5, p0, Lcom/wandoujia/download/rpc/f;->m:Lcom/wandoujia/download/listener/NetworkStatusStub;

    iget-object v6, p0, Lcom/wandoujia/download/rpc/f;->f:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v4, p1, v5, v6}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;-><init>(Landroid/content/Context;Lcom/wandoujia/download/rpc/g;Lcom/wandoujia/download/listener/NetworkStatusStub;Ljava/util/concurrent/Executor;)V

    iget-object v4, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iput-boolean v3, v4, Lcom/wandoujia/download/rpc/h;->L:Z

    goto :goto_1

    :cond_5
    new-instance v1, Lcom/wandoujia/download/rpc/j;

    iget-object v7, p0, Lcom/wandoujia/download/rpc/f;->j:Landroid/content/Context;

    iget-object v8, p0, Lcom/wandoujia/download/rpc/f;->m:Lcom/wandoujia/download/listener/NetworkStatusStub;

    iget-object v9, p0, Lcom/wandoujia/download/rpc/f;->g:Lo/yu;

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/f;->Q(Lcom/wandoujia/download/rpc/g;)J

    move-result-wide v10

    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/f;->Y()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->U6()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v12, 0x1

    goto :goto_0

    :cond_6
    const/4 v12, 0x0

    :goto_0
    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Lcom/wandoujia/download/rpc/j;-><init>(Landroid/content/Context;Lcom/wandoujia/download/listener/NetworkStatusStub;Lo/yu;JZ)V

    iget-object v3, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iput-boolean v2, v3, Lcom/wandoujia/download/rpc/h;->L:Z

    iget-wide v6, v3, Lcom/wandoujia/download/rpc/h;->r:J

    cmp-long v8, v6, v4

    if-lez v8, :cond_7

    iget-wide v4, v3, Lcom/wandoujia/download/rpc/h;->f:J

    iget-object v3, v3, Lcom/wandoujia/download/rpc/h;->M:Lcom/wandoujia/mtdownload/c;

    invoke-virtual {v1, v4, v5, v3}, Lcom/wandoujia/download/rpc/j;->E(JLcom/wandoujia/mtdownload/c;)V

    :cond_7
    :goto_1
    iget-object v3, p0, Lcom/wandoujia/download/rpc/f;->q:Ljava/util/Map;

    if-nez v3, :cond_8

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/wandoujia/download/rpc/f;->q:Ljava/util/Map;

    :cond_8
    iget-object v3, p1, Lcom/wandoujia/download/rpc/g;->i:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p1, Lcom/wandoujia/download/rpc/g;->i:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/wandoujia/download/rpc/f;->q:Ljava/util/Map;

    const-string v5, "User-Agent"

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object v3, p0, Lcom/wandoujia/download/rpc/f;->q:Ljava/util/Map;

    const-string v4, "Cookie"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_a

    :try_start_1
    iget-object v3, p1, Lcom/wandoujia/download/rpc/g;->b:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/wandoujia/download/rpc/f;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    :try_start_2
    invoke-static {v3}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/wandoujia/download/rpc/f;->q:Ljava/util/Map;

    const-string v5, "Cookie"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-object v3, p0, Lcom/wandoujia/download/rpc/f;->q:Ljava/util/Map;

    invoke-interface {v1, v3}, Lcom/wandoujia/download/rpc/IBlockDownloadTask;->f(Ljava/util/Map;)V

    iget-object v3, p0, Lcom/wandoujia/download/rpc/f;->p:Ljava/util/Map;

    iget v4, p1, Lcom/wandoujia/download/rpc/g;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/wandoujia/download/rpc/f;->t:Lo/cn3;

    invoke-interface {v1, p1, v3}, Lcom/wandoujia/download/rpc/IBlockDownloadTask;->d(Lcom/wandoujia/download/rpc/g;Lo/cn3;)V

    monitor-exit v0

    return v2

    :cond_b
    :goto_3
    monitor-exit v0

    return v3

    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final K(Lcom/wandoujia/download/model/segments/DownloadConfigInfo;)V
    .locals 4

    invoke-virtual {p1}, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->getBackupUrls()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {p1}, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->getBlocks()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {v2}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result v2

    const/16 v3, 0x12b

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {v2}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result v2

    const/16 v3, 0x12c

    if-ne v2, v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/wandoujia/download/rpc/f;->f:Ljava/util/concurrent/ExecutorService;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wandoujia/download/model/segments/DownloadBlockInfo;

    invoke-virtual {v3}, Lcom/wandoujia/download/model/segments/DownloadBlockInfo;->getBlockId()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/wandoujia/download/rpc/f;->I(Lcom/wandoujia/download/model/segments/DownloadConfigInfo;I)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    goto :goto_3

    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :cond_3
    :goto_2
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :cond_4
    :goto_4
    return-void
.end method

.method public final L(IZJ)V
    .locals 6

    iget-object v0, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-object v0, v0, Lcom/wandoujia/download/rpc/h;->x:Lcom/wandoujia/download/model/segments/DownloadConfigInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->getBlocks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-object v0, v0, Lcom/wandoujia/download/rpc/h;->x:Lcom/wandoujia/download/model/segments/DownloadConfigInfo;

    invoke-virtual {v0}, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->getBlocks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wandoujia/download/model/segments/DownloadBlockInfo;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/wandoujia/download/rpc/f;->j:Landroid/content/Context;

    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-object v2, v1, Lcom/wandoujia/download/rpc/h;->w:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v1, v1, Lcom/wandoujia/download/rpc/h;->x:Lcom/wandoujia/download/model/segments/DownloadConfigInfo;

    invoke-virtual {v1}, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->getBackupUrls()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/wandoujia/download/model/segments/DownloadBlockInfo;->getUsedUrlIndex()I

    move-result p1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wandoujia/download/model/DownloadUrlInfo;

    invoke-virtual {p1}, Lcom/wandoujia/download/model/DownloadUrlInfo;->getUrl()Ljava/lang/String;

    move-result-object p1

    move-object v1, v2

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lo/cq1;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZJ)V

    :cond_0
    return-void
.end method

.method public final M()Landroid/content/ContentValues;
    .locals 7

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/wandoujia/download/rpc/h;->r:J

    iget-object v1, v1, Lcom/wandoujia/download/rpc/h;->z:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-object v4, v1, Lcom/wandoujia/download/rpc/h;->z:Ljava/lang/String;

    const-string v5, "."

    const-string v6, "_"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/wandoujia/download/rpc/h;->z:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-object v1, v1, Lcom/wandoujia/download/rpc/h;->z:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-object v1, v1, Lcom/wandoujia/download/rpc/h;->z:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-object v6, v5, Lcom/wandoujia/download/rpc/h;->z:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/wandoujia/download/rpc/h;->z:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-object v4, v4, Lcom/wandoujia/download/rpc/h;->z:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-object v1, v1, Lcom/wandoujia/download/rpc/h;->m:Ljava/lang/String;

    invoke-static {v1}, Lo/yj2;->s(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    const/16 v4, 0xbd

    invoke-virtual {v1, v4}, Lcom/wandoujia/download/rpc/h;->f(I)V

    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/f;->Z()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    new-instance v4, Lcom/twmacinta/util/MD5State;

    invoke-direct {v4}, Lcom/twmacinta/util/MD5State;-><init>()V

    iput-object v4, v1, Lcom/wandoujia/download/rpc/h;->H:Lcom/twmacinta/util/MD5State;

    new-instance v1, Lcom/twmacinta/util/MD5;

    iget-object v4, p0, Lcom/wandoujia/download/rpc/f;->j:Landroid/content/Context;

    iget-object v5, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-object v5, v5, Lcom/wandoujia/download/rpc/h;->H:Lcom/twmacinta/util/MD5State;

    invoke-direct {v1, v4, v5}, Lcom/twmacinta/util/MD5;-><init>(Landroid/content/Context;Lcom/twmacinta/util/MD5State;)V

    iput-object v1, p0, Lcom/wandoujia/download/rpc/f;->r:Lcom/twmacinta/util/MD5;

    :cond_2
    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-wide v4, v1, Lcom/wandoujia/download/rpc/h;->r:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "current_bytes"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-object v1, v1, Lcom/wandoujia/download/rpc/h;->H:Lcom/twmacinta/util/MD5State;

    invoke-static {v1}, Lo/j23;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "md5_state"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {v1}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "status"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-object v1, v1, Lcom/wandoujia/download/rpc/h;->m:Ljava/lang/String;

    const-string v4, "_data"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-object v1, v1, Lcom/wandoujia/download/rpc/h;->z:Ljava/lang/String;

    const-string v4, "filename"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-object v1, v1, Lcom/wandoujia/download/rpc/h;->x:Lcom/wandoujia/download/model/segments/DownloadConfigInfo;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->getBlocks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wandoujia/download/model/segments/DownloadBlockInfo;

    iget-object v5, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-object v5, v5, Lcom/wandoujia/download/rpc/h;->x:Lcom/wandoujia/download/model/segments/DownloadConfigInfo;

    invoke-virtual {v4}, Lcom/wandoujia/download/model/segments/DownloadBlockInfo;->getBlockId()I

    move-result v4

    invoke-virtual {v5, v4, v2, v3}, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->updateBlockInfo(IJ)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-object v1, v1, Lcom/wandoujia/download/rpc/h;->x:Lcom/wandoujia/download/model/segments/DownloadConfigInfo;

    invoke-virtual {v1}, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->toJson()Ljava/lang/String;

    move-result-object v1

    const-string v2, "segment_config"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v0
.end method

.method public final N(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final O(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;Lcom/wandoujia/download/rpc/IBlockDownloadTask;)Ljava/lang/Integer;
    .locals 6

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->SUCCESS:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->p:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/wandoujia/download/rpc/f;->p:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {p2}, Lcom/wandoujia/download/rpc/IBlockDownloadTask;->l()I

    move-result v5

    if-eq v4, v5, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->getPriority()I

    move-result v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wandoujia/download/rpc/IBlockDownloadTask;

    invoke-interface {v5}, Lcom/wandoujia/download/rpc/IBlockDownloadTask;->getStatus()Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->getPriority()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask;

    invoke-interface {v0}, Lcom/wandoujia/download/rpc/IBlockDownloadTask;->getStatus()Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->getPriority()I

    move-result v1

    invoke-virtual {v0}, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->getPriority()I

    move-result v0

    if-ge v1, v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    sget-object v0, Lcom/wandoujia/download/rpc/f$c;->c:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-interface {p2}, Lcom/wandoujia/download/rpc/IBlockDownloadTask;->c()I

    move-result p1

    const/16 v0, 0x190

    if-lt p1, v0, :cond_3

    invoke-interface {p2}, Lcom/wandoujia/download/rpc/IBlockDownloadTask;->c()I

    move-result p1

    const/16 v0, 0x1a8

    if-gt p1, v0, :cond_3

    invoke-interface {p2}, Lcom/wandoujia/download/rpc/IBlockDownloadTask;->c()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-interface {p2}, Lcom/wandoujia/download/rpc/IBlockDownloadTask;->c()I

    move-result p1

    const/16 v0, 0x1f4

    if-lt p1, v0, :cond_4

    const/16 p1, 0x1f5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-interface {p2}, Lcom/wandoujia/download/rpc/IBlockDownloadTask;->c()I

    move-result p1

    const/16 p2, 0x1ad

    if-ne p1, p2, :cond_5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_1
    const/16 p1, 0x1eb

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-interface {p2}, Lcom/wandoujia/download/rpc/IBlockDownloadTask;->c()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_2
    const/16 p1, 0xbbb

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_3
    const/16 p1, 0xbb9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_4
    const/16 p1, 0xc5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_5
    const/16 p1, 0x1d9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_6
    const/16 p1, 0x1ec

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_7
    const/16 p1, 0x1f2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_8
    const/16 p1, 0x1f3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_9
    const/16 p1, 0x1dc

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_a
    const/16 p1, 0x1e2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_b
    const/16 p1, 0x1e0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_c
    const/16 p1, 0x1e1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_d
    const/16 p1, 0x1df

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_e
    const/16 p1, 0x1f1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_f
    const/16 p1, 0x1da

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_10
    const/16 p1, 0xc4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_11
    const/16 p1, 0xc0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_12
    const/16 p1, 0xbf

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_13
    const/16 p1, 0xc8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final P()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-object v0, v0, Lcom/wandoujia/download/rpc/h;->i:Ljava/lang/String;

    const-class v1, Lo/yv3;

    invoke-static {v0, v1}, Lo/j23;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/yv3;

    const-string v1, "format"

    invoke-virtual {v0, v1}, Lo/yv3;->y(Ljava/lang/String;)Lo/lv3;

    move-result-object v0

    invoke-virtual {v0}, Lo/lv3;->m()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final Q(Lcom/wandoujia/download/rpc/g;)J
    .locals 5

    iget-object v0, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/wandoujia/download/rpc/h;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p1, Lcom/wandoujia/download/rpc/g;->n:Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;

    sget-object v4, Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;->MUSIC:Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;

    if-ne v3, v4, :cond_1

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAudioSupportMaxPieceSizeRegex()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lo/tu1;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAudioDownloadMaxPieceSize()I

    move-result p1

    :goto_0
    int-to-long v0, p1

    return-wide v0

    :cond_1
    iget-object p1, p1, Lcom/wandoujia/download/rpc/g;->n:Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;

    sget-object v0, Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;->VIDEO_YOUTUBE:Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;->VIDEO:Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;

    if-ne p1, v0, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-object p1, p1, Lcom/wandoujia/download/rpc/h;->k:Ljava/lang/String;

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getVideoSupportMaxPieceSizeRegex()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lo/tu1;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getVideoDownloadMaxPieceSize()I

    move-result p1

    goto :goto_0

    :cond_3
    :goto_1
    return-wide v1
.end method

.method public final R()I
    .locals 2

    iget-object v0, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    const/4 v1, 0x3

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, v0, Lcom/wandoujia/download/rpc/h;->L:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getMultiThreadTaskMaxDownloadRetryTimes()I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public final S(Lcom/wandoujia/download/rpc/h;)I
    .locals 7

    iget-object v0, p1, Lcom/wandoujia/download/rpc/h;->b:Ljava/lang/String;

    invoke-static {v0}, Lo/bg8;->d(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x1e6

    const/16 v2, 0xc8

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object p1, p1, Lcom/wandoujia/download/rpc/h;->m:Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long p1, v5, v3

    if-lez p1, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    iget-object v0, p1, Lcom/wandoujia/download/rpc/h;->m:Ljava/lang/String;

    invoke-static {v0}, Lo/ig4;->k(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p1, Lcom/wandoujia/download/rpc/h;->b:Ljava/lang/String;

    invoke-static {v0}, Lo/ig4;->l(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p1, Lcom/wandoujia/download/rpc/h;->b:Ljava/lang/String;

    invoke-static {v0}, Lo/wc1;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v0, p1, Lcom/wandoujia/download/rpc/h;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/wandoujia/download/rpc/h;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v5, p1, Lcom/wandoujia/download/rpc/h;->f:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/File;

    iget-object v3, p1, Lcom/wandoujia/download/rpc/h;->m:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-wide v5, p1, Lcom/wandoujia/download/rpc/h;->f:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p1, Lcom/wandoujia/download/rpc/h;->u:Lcom/wandoujia/download/rpc/DownloadConstants$VerifyType;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/wandoujia/download/rpc/h;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/wandoujia/download/rpc/h;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/wandoujia/download/rpc/f$c;->b:[I

    iget-object v1, p1, Lcom/wandoujia/download/rpc/h;->u:Lcom/wandoujia/download/rpc/DownloadConstants$VerifyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/download/rpc/f;->j:Landroid/content/Context;

    iget-object v1, p1, Lcom/wandoujia/download/rpc/h;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/yq5;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/wandoujia/download/rpc/h;->v:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/wandoujia/download/rpc/h;->v:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_6

    const/16 p1, 0x3e9

    return p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_5
    iget-object v0, p1, Lcom/wandoujia/download/rpc/h;->s:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v1, p1, Lcom/wandoujia/download/rpc/h;->v:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 p1, 0x3e8

    return p1

    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/download/rpc/f;->k:Lo/vu1;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lo/vu1;->a(Lcom/wandoujia/download/rpc/h;)Z

    move-result p1

    if-nez p1, :cond_7

    const/16 p1, 0x1e5

    return p1

    :cond_7
    return v2

    :cond_8
    :goto_1
    new-instance v0, Ljava/io/File;

    iget-object p1, p1, Lcom/wandoujia/download/rpc/h;->m:Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long p1, v5, v3

    if-lez p1, :cond_9

    return v2

    :cond_9
    return v1
.end method

.method public final T(ILcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;I)Z
    .locals 1

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->STORAGE_NOT_READY:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->INSUFFICIENT_STORAGE:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->FILE_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->FILE_NOT_FOUND:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/download/rpc/f;->u:Lcom/wandoujia/download/rpc/f$f;

    invoke-interface {v0, p1, p2, p3}, Lcom/wandoujia/download/rpc/f$f;->b(ILcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;I)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final U(I)Z
    .locals 5

    iget-object v0, p0, Lcom/wandoujia/download/rpc/f;->c:Landroid/util/SparseIntArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->c:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    iget-object v3, p0, Lcom/wandoujia/download/rpc/f;->c:Landroid/util/SparseIntArray;

    const/4 v4, 0x1

    add-int/2addr v1, v4

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/f;->R()I

    move-result p1

    if-le v1, p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final X()Z
    .locals 2

    iget-object v0, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-object v0, v0, Lcom/wandoujia/download/rpc/h;->x:Lcom/wandoujia/download/model/segments/DownloadConfigInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->getBlocks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final Y()Z
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/wandoujia/download/rpc/h;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lo/if9;->D(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final Z()Z
    .locals 2

    iget-object v0, p0, Lcom/wandoujia/download/rpc/f;->l:Lo/rg4;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-interface {v0, v1}, Lo/rg4;->a(Lcom/wandoujia/download/rpc/h;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-object v0, v0, Lcom/wandoujia/download/rpc/h;->u:Lcom/wandoujia/download/rpc/DownloadConstants$VerifyType;

    sget-object v1, Lcom/wandoujia/download/rpc/DownloadConstants$VerifyType;->MD5:Lcom/wandoujia/download/rpc/DownloadConstants$VerifyType;

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a0(Lcom/wandoujia/download/rpc/DownloadConstants$PauseReason;)Z
    .locals 6

    iget-object v0, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {v1}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result v1

    const/16 v2, 0xbd

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {v1}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result v1

    const/16 v2, 0xbf

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {v1}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result v1

    const/16 v2, 0xc0

    if-eq v1, v2, :cond_0

    monitor-exit v0

    return v3

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/f;->h0()V

    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {p1}, Lcom/wandoujia/download/rpc/DownloadConstants$PauseReason;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/download/rpc/h;->f(I)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget-object v2, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-object v2, v2, Lcom/wandoujia/download/rpc/h;->x:Lcom/wandoujia/download/model/segments/DownloadConfigInfo;

    if-eqz v2, :cond_1

    const-string v4, "segment_config"

    invoke-virtual {v2}, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v2, "status"

    invoke-virtual {p1}, Lcom/wandoujia/download/rpc/DownloadConstants$PauseReason;->getStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "current_bytes"

    iget-object v2, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-wide v4, v2, Lcom/wandoujia/download/rpc/h;->r:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "md5_state"

    iget-object v2, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-object v2, v2, Lcom/wandoujia/download/rpc/h;->H:Lcom/twmacinta/util/MD5State;

    invoke-static {v2}, Lo/j23;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/wandoujia/download/rpc/f;->o:Lcom/wandoujia/download/rpc/b;

    iget-object v2, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-wide v4, v2, Lcom/wandoujia/download/rpc/h;->a:J

    invoke-virtual {p1, v4, v5, v1}, Lcom/wandoujia/download/rpc/b;->g(JLandroid/content/ContentValues;)Z

    move-result p1

    if-nez p1, :cond_2

    monitor-exit v0

    return v3

    :cond_2
    iget-object p1, p0, Lcom/wandoujia/download/rpc/f;->i:Lo/sr1;

    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-wide v1, v1, Lcom/wandoujia/download/rpc/h;->a:J

    invoke-interface {p1, v1, v2}, Lo/sr1;->a(J)V

    invoke-static {}, Lo/it1;->b()Lo/it1;

    move-result-object p1

    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {p1, v1}, Lo/it1;->f(Lcom/wandoujia/download/rpc/h;)V

    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b0()Z
    .locals 4

    iget-object v0, p0, Lcom/wandoujia/download/rpc/f;->o:Lcom/wandoujia/download/rpc/b;

    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-wide v1, v1, Lcom/wandoujia/download/rpc/h;->a:J

    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/f;->M()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/wandoujia/download/rpc/b;->g(JLandroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method public c0()Z
    .locals 4

    iget-object v0, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {v1}, Lcom/wandoujia/download/rpc/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/download/rpc/f;->W(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/f;->b0()Z

    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/f;->g0()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-object v1, v1, Lcom/wandoujia/download/rpc/h;->x:Lcom/wandoujia/download/model/segments/DownloadConfigInfo;

    if-nez v1, :cond_1

    new-instance v1, Lcom/wandoujia/download/rpc/g;

    iget-object v3, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-direct {v1, v3}, Lcom/wandoujia/download/rpc/g;-><init>(Lcom/wandoujia/download/rpc/h;)V

    invoke-virtual {p0, v1}, Lcom/wandoujia/download/rpc/f;->J(Lcom/wandoujia/download/rpc/g;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/wandoujia/download/rpc/f;->K(Lcom/wandoujia/download/model/segments/DownloadConfigInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v0

    return v2

    :catch_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public d0(Ljava/lang/String;)Z
    .locals 7

    iget-object v0, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {v1}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result v1

    const/16 v2, 0x12b

    const/4 v3, 0x0

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {v1}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result v1

    const/16 v2, 0x12c

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {v1}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result v1

    const/16 v2, 0xc0

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {v1}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result v1

    const/16 v2, 0xbd

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {v1}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result v1

    const/16 v2, 0xbf

    if-ne v1, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-object v1, v1, Lcom/wandoujia/download/rpc/h;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget-object v2, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/wandoujia/download/rpc/h;->f:J

    iput-object p1, v2, Lcom/wandoujia/download/rpc/h;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/wandoujia/download/rpc/h;->n:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-object v5, v2, Lcom/wandoujia/download/rpc/h;->n:Ljava/lang/String;

    iget-object v2, v2, Lcom/wandoujia/download/rpc/h;->b:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget v1, p1, Lcom/wandoujia/download/rpc/h;->o:I

    add-int/2addr v1, v4

    iput v1, p1, Lcom/wandoujia/download/rpc/h;->o:I

    monitor-exit v0

    return v3

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    iget-object v2, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    const-string v3, ","

    iget-object v5, v2, Lcom/wandoujia/download/rpc/h;->n:Ljava/lang/String;

    iget-object v6, v2, Lcom/wandoujia/download/rpc/h;->b:Ljava/lang/String;

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/wandoujia/download/rpc/h;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iput v4, v2, Lcom/wandoujia/download/rpc/h;->o:I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-object v3, v2, Lcom/wandoujia/download/rpc/h;->b:Ljava/lang/String;

    iput-object v3, v2, Lcom/wandoujia/download/rpc/h;->n:Ljava/lang/String;

    iput v4, v2, Lcom/wandoujia/download/rpc/h;->o:I

    :goto_0
    const-string v2, "total_bytes"

    iget-object v3, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-wide v3, v3, Lcom/wandoujia/download/rpc/h;->f:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "uri"

    iget-object v3, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-object v3, v3, Lcom/wandoujia/download/rpc/h;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "retried_urls"

    iget-object v3, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-object v3, v3, Lcom/wandoujia/download/rpc/h;->n:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "last_url_retried_times"

    iget-object v3, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget v3, v3, Lcom/wandoujia/download/rpc/h;->o:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/wandoujia/download/rpc/f;->o:Lcom/wandoujia/download/rpc/b;

    iget-object v3, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-wide v3, v3, Lcom/wandoujia/download/rpc/h;->a:J

    invoke-virtual {v2, v3, v4, v1}, Lcom/wandoujia/download/rpc/b;->g(JLandroid/content/ContentValues;)Z

    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/f;->b0()Z

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {v1}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result v1

    invoke-static {v1}, Lo/zr7;->d(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {v1}, Lcom/wandoujia/download/rpc/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/download/rpc/f;->W(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/f;->b0()Z

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {v1}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result v1

    invoke-static {v1}, Lo/zr7;->e(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-object v1, v1, Lcom/wandoujia/download/rpc/h;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/wandoujia/download/rpc/f;->W(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/f;->b0()Z

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->u:Lcom/wandoujia/download/rpc/f$f;

    invoke-interface {v1, p1}, Lcom/wandoujia/download/rpc/f$f;->a(Ljava/lang/String;)Z

    move-result p1

    monitor-exit v0

    return p1

    :cond_6
    :goto_2
    monitor-exit v0

    return v3

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final e0(I)V
    .locals 7

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/f;->D(I)V

    iget-object v0, p0, Lcom/wandoujia/download/rpc/f;->c:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/wandoujia/download/rpc/f$e;

    invoke-direct {v2, p0, p1}, Lcom/wandoujia/download/rpc/f$e;-><init>(Lcom/wandoujia/download/rpc/f;I)V

    iget-object v3, p0, Lcom/wandoujia/download/rpc/f;->d:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v3, v0

    int-to-long v3, v0

    const-wide/16 v5, 0x1f4

    mul-long v3, v3, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    iget-object v0, p0, Lcom/wandoujia/download/rpc/f;->h:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->h:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f0(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/wandoujia/download/rpc/f;->q:Ljava/util/Map;

    return-void
.end method

.method public g0()V
    .locals 2

    iget-object v0, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {v0}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result v0

    const/16 v1, 0xbd

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/download/rpc/f;->u:Lcom/wandoujia/download/rpc/f$f;

    invoke-interface {v0}, Lcom/wandoujia/download/rpc/f$f;->start()V

    return-void
.end method

.method public final h0()V
    .locals 3

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->p:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/wandoujia/download/rpc/f;->p:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/wandoujia/download/rpc/f;->p:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/download/rpc/IBlockDownloadTask;

    invoke-interface {v1}, Lcom/wandoujia/download/rpc/IBlockDownloadTask;->stop()V

    invoke-interface {v1}, Lcom/wandoujia/download/rpc/IBlockDownloadTask;->l()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/wandoujia/download/rpc/f;->D(I)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final i0(Lcom/wandoujia/download/rpc/g;)Z
    .locals 5

    iget-object v0, p1, Lcom/wandoujia/download/rpc/g;->n:Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;

    sget-object v1, Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;->VIDEO_YOUTUBE:Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/wandoujia/download/rpc/h;->k:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;->MUSIC:Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;

    if-ne v0, v4, :cond_2

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lo/tu1;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    iget-object p1, p1, Lcom/wandoujia/download/rpc/g;->n:Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;

    sget-object v0, Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;->VIDEO:Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-object p1, p1, Lcom/wandoujia/download/rpc/h;->k:Ljava/lang/String;

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->k2()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lo/tu1;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    :goto_0
    return v3
.end method

.method public final j0(II)V
    .locals 6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/16 v1, 0xc0

    const/16 v2, 0xbf

    const/16 v3, 0xbd

    if-eq p2, v3, :cond_3

    const/16 v4, 0xc8

    if-eq p2, v4, :cond_1

    if-eq p2, v2, :cond_3

    if-eq p2, v1, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/f;->h0()V

    iget-object p1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {p1, p2}, Lcom/wandoujia/download/rpc/h;->f(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/f;->D(I)V

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/wandoujia/download/rpc/f;->s:J

    iget-object p1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {p1, p2}, Lcom/wandoujia/download/rpc/h;->f(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {p1}, Lcom/wandoujia/download/rpc/h;->b()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-object p2, p2, Lcom/wandoujia/download/rpc/h;->m:Ljava/lang/String;

    invoke-static {p1, p2}, Lo/yj2;->W(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-object p1, p1, Lcom/wandoujia/download/rpc/h;->m:Ljava/lang/String;

    invoke-static {p1}, Lcom/wandoujia/download/rpc/f;->E(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/wandoujia/download/rpc/f;->r:Lcom/twmacinta/util/MD5;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-static {p1}, Lo/tg4;->b(Lcom/twmacinta/util/MD5;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/wandoujia/download/rpc/h;->s:Ljava/lang/String;

    iget-object p1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-object p1, p1, Lcom/wandoujia/download/rpc/h;->s:Ljava/lang/String;

    const-string p2, "md5_checksum"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/f;->S(Lcom/wandoujia/download/rpc/h;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/wandoujia/download/rpc/h;->f(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {p1, p2}, Lcom/wandoujia/download/rpc/h;->f(I)V

    :goto_0
    iget-object p1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {p1}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "status"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-object p1, p1, Lcom/wandoujia/download/rpc/h;->x:Lcom/wandoujia/download/model/segments/DownloadConfigInfo;

    if-eqz p1, :cond_4

    const-string p2, "segment_config"

    invoke-virtual {p1}, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-boolean p1, p1, Lcom/wandoujia/download/rpc/h;->L:Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "is_download_with_multi_thread"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-object p1, p1, Lcom/wandoujia/download/rpc/h;->M:Lcom/wandoujia/mtdownload/c;

    if-eqz p1, :cond_5

    :try_start_0
    const-string p2, "downloaded_sections"

    invoke-virtual {p1}, Lcom/wandoujia/mtdownload/c;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/wandoujia/download/rpc/f;->o:Lcom/wandoujia/download/rpc/b;

    iget-object p2, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-wide v4, p2, Lcom/wandoujia/download/rpc/h;->a:J

    invoke-virtual {p1, v4, v5, v0}, Lcom/wandoujia/download/rpc/b;->g(JLandroid/content/ContentValues;)Z

    iget-object p1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {p1}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result p1

    if-eq p1, v3, :cond_6

    iget-object p1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {p1}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result p1

    if-eq p1, v2, :cond_6

    iget-object p1, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {p1}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result p1

    if-eq p1, v1, :cond_6

    iget-object p1, p0, Lcom/wandoujia/download/rpc/f;->i:Lo/sr1;

    iget-object p2, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    iget-wide v0, p2, Lcom/wandoujia/download/rpc/h;->a:J

    invoke-interface {p1, v0, v1}, Lo/sr1;->a(J)V

    :cond_6
    invoke-static {}, Lo/it1;->b()Lo/it1;

    move-result-object p1

    iget-object p2, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    invoke-virtual {p1, p2}, Lo/it1;->f(Lcom/wandoujia/download/rpc/h;)V

    return-void
.end method
