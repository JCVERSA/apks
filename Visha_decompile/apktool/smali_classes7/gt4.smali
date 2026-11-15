.class public Lgt4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lup5;


# static fields
.field public static d:Lgt4;


# instance fields
.field public a:Z

.field public b:I

.field public c:Lcom/transsion/core/log/ObjectLogUtils;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgt4;->a:Z

    const/4 v1, 0x2

    iput v1, p0, Lgt4;->b:I

    new-instance v1, Lcom/transsion/core/log/ObjectLogUtils$a;

    invoke-direct {v1}, Lcom/transsion/core/log/ObjectLogUtils$a;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/transsion/core/log/ObjectLogUtils$a;->o(Z)Lcom/transsion/core/log/ObjectLogUtils$a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/transsion/core/log/ObjectLogUtils$a;->r(Z)Lcom/transsion/core/log/ObjectLogUtils$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/core/log/ObjectLogUtils$a;->q(Z)Lcom/transsion/core/log/ObjectLogUtils$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/core/log/ObjectLogUtils$a;->m()Lcom/transsion/core/log/ObjectLogUtils;

    move-result-object v0

    iput-object v0, p0, Lgt4;->c:Lcom/transsion/core/log/ObjectLogUtils;

    return-void
.end method

.method public static b()Lgt4;
    .locals 2

    sget-object v0, Lgt4;->d:Lgt4;

    if-nez v0, :cond_1

    const-class v0, Lgt4;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lgt4;->d:Lgt4;

    if-nez v1, :cond_0

    new-instance v1, Lgt4;

    invoke-direct {v1}, Lgt4;-><init>()V

    sput-object v1, Lgt4;->d:Lgt4;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lgt4;->d:Lgt4;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    iget-boolean v0, p0, Lgt4;->a:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lgt4;->a:Z

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 0

    iget-boolean p0, p0, Lgt4;->a:Z

    return p0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Lgt4;->f(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Lgt4;->f(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x6

    .line 2
    invoke-virtual {p0, v0, p1, p2, p3}, Lgt4;->g(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public f(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lgt4;->g(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public g(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lgt4;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lgt4;->h(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lgt4;->c:Lcom/transsion/core/log/ObjectLogUtils;

    filled-new-array {p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/transsion/core/log/ObjectLogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lgt4;->c:Lcom/transsion/core/log/ObjectLogUtils;

    filled-new-array {p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/transsion/core/log/ObjectLogUtils;->A(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lgt4;->c:Lcom/transsion/core/log/ObjectLogUtils;

    filled-new-array {p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/transsion/core/log/ObjectLogUtils;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lgt4;->c:Lcom/transsion/core/log/ObjectLogUtils;

    filled-new-array {p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/transsion/core/log/ObjectLogUtils;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lgt4;->c:Lcom/transsion/core/log/ObjectLogUtils;

    filled-new-array {p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/transsion/core/log/ObjectLogUtils;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public h(I)Z
    .locals 0

    iget p0, p0, Lgt4;->b:I

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Lgt4;->f(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
