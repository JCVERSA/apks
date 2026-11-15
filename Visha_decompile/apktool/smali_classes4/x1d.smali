.class public Lx1d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx1d$b;,
        Lx1d$a;
    }
.end annotation


# static fields
.field public static f:Lx1d; = null

.field public static g:Landroid/content/Context; = null

.field public static final h:Ljava/lang/String; = "x1d"


# instance fields
.field public a:La2d;

.field public b:Lr5d;

.field public c:Lo8d;

.field public d:Ljava/util/concurrent/ExecutorService;

.field public e:Ly1d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lx1d;->d:Ljava/util/concurrent/ExecutorService;

    invoke-static {p1}, Ly1d;->a(Landroid/content/Context;)Ly1d;

    move-result-object p1

    iput-object p1, p0, Lx1d;->e:Ly1d;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lx1d;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lx1d;->g:Landroid/content/Context;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lx1d;->g:Landroid/content/Context;

    :cond_1
    sget-object v0, Lx1d;->f:Lx1d;

    if-nez v0, :cond_3

    const-class v0, Lx1d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lx1d;->f:Lx1d;

    if-nez v1, :cond_2

    new-instance v1, Lx1d;

    invoke-direct {v1, p0}, Lx1d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lx1d;->f:Lx1d;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_2
    sget-object p0, Lx1d;->f:Lx1d;

    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lcom/mgmi/db/dao3/c;
    .locals 2

    iget-object v0, p0, Lx1d;->b:Lr5d;

    if-nez v0, :cond_0

    new-instance v0, Ls5d;

    iget-object v1, p0, Lx1d;->e:Ly1d;

    invoke-direct {v0, v1, p0}, Ls5d;-><init>(Ly1d;Lx1d;)V

    iput-object v0, p0, Lx1d;->b:Lr5d;

    :cond_0
    iget-object p0, p0, Lx1d;->b:Lr5d;

    invoke-interface {p0, p1}, Lr5d;->a(Ljava/lang/String;)Lcom/mgmi/db/dao3/c;

    move-result-object p0

    return-object p0
.end method

.method public c()V
    .locals 2

    new-instance v0, Ls5d;

    iget-object v1, p0, Lx1d;->e:Ly1d;

    invoke-direct {v0, v1, p0}, Ls5d;-><init>(Ly1d;Lx1d;)V

    iput-object v0, p0, Lx1d;->b:Lr5d;

    return-void
.end method

.method public d(JLx1d$b;Ljava/lang/String;I)V
    .locals 1

    iget-object p4, p0, Lx1d;->a:La2d;

    if-nez p4, :cond_0

    new-instance p4, La2d;

    iget-object p5, p0, Lx1d;->d:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0}, Lx1d;->j()Lr5d;

    move-result-object v0

    invoke-direct {p4, p5, v0}, La2d;-><init>(Ljava/util/concurrent/ExecutorService;Lr5d;)V

    iput-object p4, p0, Lx1d;->a:La2d;

    :cond_0
    iget-object p0, p0, Lx1d;->a:La2d;

    invoke-virtual {p0, p1, p2, p3}, La2d;->c(JLx1d$b;)Z

    return-void
.end method

.method public e(Lx1d$a;)V
    .locals 1

    iget-object v0, p0, Lx1d;->e:Ly1d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lx1d;->d:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lx1d;->n(Lx1d$a;)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "mgmi"

    const-string p1, "MgmiDownloadManager entry null"

    invoke-static {p0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f(Lx1d$a;I)V
    .locals 3

    sget-object v0, Lx1d;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyError reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x7

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lx1d$a;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lx1d;->i(Ljava/lang/String;Z)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lx1d$a;->f()Lz1d;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lx1d$a;->f()Lz1d;

    move-result-object p0

    invoke-virtual {p1}, Lx1d$a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lz1d;->a(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public g(Lx1d$a;JJ)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lx1d$a;->f()Lz1d;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lx1d$a;->f()Lz1d;

    move-result-object v0

    invoke-virtual {p1}, Lx1d$a;->c()Ljava/lang/String;

    move-result-object v5

    move-wide v1, p2

    move-wide v3, p4

    invoke-interface/range {v0 .. v5}, Lz1d;->a(JJLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public h(Lcom/mgadplus/b/d/b;)V
    .locals 2

    sget-object v0, Lx1d;->h:Ljava/lang/String;

    const-string v1, "runTask task"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mgadplus/b/d/b;->e()V

    iget-object p0, p0, Lx1d;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public i(Ljava/lang/String;Z)V
    .locals 2

    sget-object v0, Lx1d;->h:Ljava/lang/String;

    const-string v1, "deleteFile"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lx1d;->c:Lo8d;

    invoke-virtual {v1, p1}, Lo8d;->a(Ljava/lang/String;)Lcom/mgadplus/b/d/b;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {v1}, Lcom/mgadplus/b/d/b;->f()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p0, "task is running !!!!!"

    invoke-static {v0, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p2, p0, Lx1d;->c:Lo8d;

    invoke-virtual {p2, v1}, Lo8d;->d(Lcom/mgadplus/b/d/b;)V

    iget-object p2, p0, Lx1d;->b:Lr5d;

    invoke-interface {p2, p1}, Lr5d;->a(Ljava/lang/String;)Lcom/mgmi/db/dao3/c;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lx1d;->b:Lr5d;

    invoke-interface {p2, p1}, Lr5d;->a(Lcom/mgmi/db/dao3/c;)V

    iget-object p2, p0, Lx1d;->a:La2d;

    if-nez p2, :cond_1

    new-instance p2, La2d;

    iget-object v0, p0, Lx1d;->d:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0}, Lx1d;->j()Lr5d;

    move-result-object v1

    invoke-direct {p2, v0, v1}, La2d;-><init>(Ljava/util/concurrent/ExecutorService;Lr5d;)V

    iput-object p2, p0, Lx1d;->a:La2d;

    :cond_1
    iget-object p0, p0, Lx1d;->a:La2d;

    invoke-virtual {p1}, Lcom/mgmi/db/dao3/c;->c()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, La2d;->b(Ljava/lang/String;Ln8d;)V

    :cond_2
    return-void
.end method

.method public final j()Lr5d;
    .locals 2

    iget-object v0, p0, Lx1d;->b:Lr5d;

    if-nez v0, :cond_0

    new-instance v0, Ls5d;

    iget-object v1, p0, Lx1d;->e:Ly1d;

    invoke-direct {v0, v1, p0}, Ls5d;-><init>(Ly1d;Lx1d;)V

    iput-object v0, p0, Lx1d;->b:Lr5d;

    :cond_0
    iget-object p0, p0, Lx1d;->b:Lr5d;

    return-object p0
.end method

.method public k(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lx1d;->b(Ljava/lang/String;)Lcom/mgmi/db/dao3/c;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/mgmi/db/dao3/c;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/mgmi/db/dao3/c;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    const-string v0, "download1"

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u83b7\u53d6\u5230\u4e86\u6570\u636e\u4e2d\u7684\u8bb0\u5f55\uff1a"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const-string p0, "\u6587\u4ef6\u4e0d\u5b58\u5728"

    invoke-static {v0, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public l(Lx1d$a;)V
    .locals 1

    iget-object p0, p0, Lx1d;->c:Lo8d;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lo8d;->c(Lx1d$a;Z)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lx1d$a;->f()Lz1d;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lx1d$a;->f()Lz1d;

    move-result-object p0

    invoke-virtual {p1}, Lx1d$a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lz1d;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final declared-synchronized m(Lx1d$a;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lx1d;->c:Lo8d;

    if-nez v0, :cond_0

    new-instance v0, Lo8d;

    iget-object v1, p0, Lx1d;->e:Ly1d;

    invoke-virtual {p0}, Lx1d;->j()Lr5d;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lo8d;-><init>(Ly1d;Lr5d;Lx1d;)V

    iput-object v0, p0, Lx1d;->c:Lo8d;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lx1d;->c:Lo8d;

    invoke-virtual {v0, p1}, Lo8d;->e(Lx1d$a;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final n(Lx1d$a;)V
    .locals 0

    invoke-virtual {p0, p1}, Lx1d;->m(Lx1d$a;)V

    return-void
.end method
