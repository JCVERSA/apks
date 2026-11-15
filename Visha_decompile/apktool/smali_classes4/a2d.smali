.class public La2d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/concurrent/ExecutorService;

.field public b:Lr5d;

.field public c:Lcom/mgadplus/b/d/c;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lr5d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2d;->a:Ljava/util/concurrent/ExecutorService;

    iput-object p2, p0, La2d;->b:Lr5d;

    return-void
.end method


# virtual methods
.method public final a(Lcom/mgadplus/b/d/c;)V
    .locals 0

    invoke-virtual {p1}, Lcom/mgadplus/b/d/c;->b()V

    iget-object p0, p0, La2d;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ln8d;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x3

    invoke-interface {p2, v0, p1}, Ln8d;->a(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, La2d;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/mgadplus/b/d/a;

    invoke-direct {v0, p1, p2}, Lcom/mgadplus/b/d/a;-><init>(Ljava/lang/String;Ln8d;)V

    iget-object p0, p0, La2d;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    const/4 p0, 0x2

    invoke-interface {p2, p0, p1}, Ln8d;->a(ILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public c(JLx1d$b;)Z
    .locals 9

    const-string v0, "freeSize"

    const-string v1, "DeleteFileManager"

    invoke-static {v1, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, La2d;->b:Lr5d;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "no mDownloadRecord"

    invoke-static {v1, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3}, Lx1d$b;->b()V

    return v2

    :cond_0
    iget-object v0, p0, La2d;->c:Lcom/mgadplus/b/d/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mgadplus/b/d/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, ""

    invoke-static {v1, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3}, Lx1d$b;->b()V

    return v2

    :cond_1
    new-instance v0, Lcom/mgadplus/b/d/c;

    iget-object v4, p0, La2d;->b:Lr5d;

    const/4 v5, 0x1

    move-object v3, v0

    move-wide v6, p1

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/mgadplus/b/d/c;-><init>(Lr5d;IJLx1d$b;)V

    iput-object v0, p0, La2d;->c:Lcom/mgadplus/b/d/c;

    invoke-virtual {p0, v0}, La2d;->a(Lcom/mgadplus/b/d/c;)V

    const/4 p0, 0x1

    return p0
.end method
