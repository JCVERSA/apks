.class public Lcom/wandoujia/download/rpc/b;
.super Ljava/lang/Object;


# static fields
.field public static final b:Ljava/lang/String; = "b"

.field public static c:Lcom/wandoujia/download/rpc/b;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wandoujia/download/rpc/b;->a:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized e(Landroid/content/Context;)Lcom/wandoujia/download/rpc/b;
    .locals 2

    const-class v0, Lcom/wandoujia/download/rpc/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/wandoujia/download/rpc/b;->c:Lcom/wandoujia/download/rpc/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/wandoujia/download/rpc/b;

    invoke-direct {v1, p0}, Lcom/wandoujia/download/rpc/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/wandoujia/download/rpc/b;->c:Lcom/wandoujia/download/rpc/b;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/wandoujia/download/rpc/b;->c:Lcom/wandoujia/download/rpc/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public a(Lcom/wandoujia/download/rpc/InnerDownloadRequest;)Lcom/wandoujia/download/rpc/h;
    .locals 4

    iget-object v0, p0, Lcom/wandoujia/download/rpc/b;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/wandoujia/download/rpc/c;->n(Landroid/content/Context;Lcom/wandoujia/download/rpc/InnerDownloadRequest;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/wandoujia/download/rpc/b;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/wandoujia/download/rpc/c;->h(Landroid/content/Context;Ljava/lang/Long;)Lcom/wandoujia/download/rpc/h;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/wandoujia/download/rpc/b;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert into download database success, and the download id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/wandoujia/download/rpc/h;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public b(J)Lcom/wandoujia/download/rpc/h;
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/rpc/b;->a:Landroid/content/Context;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/wandoujia/download/rpc/c;->h(Landroid/content/Context;Ljava/lang/Long;)Lcom/wandoujia/download/rpc/h;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)Lcom/wandoujia/download/rpc/h;
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/rpc/b;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/wandoujia/download/rpc/c;->g(Landroid/content/Context;Ljava/lang/String;)Lcom/wandoujia/download/rpc/h;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/wandoujia/download/rpc/InnerDownloadFilter;IILcom/wandoujia/download/rpc/InnerDownloadFilter$FilterArea;Z)Ljava/util/List;
    .locals 6

    iget-object v0, p0, Lcom/wandoujia/download/rpc/b;->a:Landroid/content/Context;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/wandoujia/download/rpc/c;->i(Landroid/content/Context;Lcom/wandoujia/download/rpc/InnerDownloadFilter;IILcom/wandoujia/download/rpc/InnerDownloadFilter$FilterArea;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public f(J)Z
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/rpc/b;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/wandoujia/download/rpc/c;->c(Landroid/content/Context;J)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public g(JLandroid/content/ContentValues;)Z
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/rpc/b;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/wandoujia/download/rpc/c;->r(Landroid/content/Context;JLandroid/content/ContentValues;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method
