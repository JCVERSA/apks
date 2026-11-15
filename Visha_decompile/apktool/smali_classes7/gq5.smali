.class public Lgq5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhq5;


# static fields
.field public static d:Lgq5;


# instance fields
.field public a:Lhq5;

.field public b:Z

.field public c:Lef7;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static g()Lgq5;
    .locals 2

    sget-object v0, Lgq5;->d:Lgq5;

    if-nez v0, :cond_0

    const-class v0, Lgq5;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lgq5;

    invoke-direct {v1}, Lgq5;-><init>()V

    sput-object v1, Lgq5;->d:Lgq5;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    sget-object v0, Lgq5;->d:Lgq5;

    return-object v0
.end method


# virtual methods
.method public a(Lef7;)V
    .locals 0

    iput-object p1, p0, Lgq5;->c:Lef7;

    return-void
.end method

.method public b()V
    .locals 0

    iget-object p0, p0, Lgq5;->a:Lhq5;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lhq5;->b()V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-boolean v0, p0, Lgq5;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/dianping/logan/CLoganProtocol;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/dianping/logan/CLoganProtocol;->i()Lcom/dianping/logan/CLoganProtocol;

    move-result-object v0

    iput-object v0, p0, Lgq5;->a:Lhq5;

    iget-object v1, p0, Lgq5;->c:Lef7;

    invoke-interface {v0, v1}, Lhq5;->a(Lef7;)V

    iget-object v2, p0, Lgq5;->a:Lhq5;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lhq5;->c(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lgq5;->b:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lgq5;->a:Lhq5;

    :goto_0
    return-void
.end method

.method public d(ILjava/lang/String;JLjava/lang/String;JZ)V
    .locals 9

    move-object v0, p0

    iget-object v0, v0, Lgq5;->a:Lhq5;

    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-wide v6, p6

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lhq5;->d(ILjava/lang/String;JLjava/lang/String;JZ)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lgq5;->a:Lhq5;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lhq5;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public f(Z)V
    .locals 0

    iget-object p0, p0, Lgq5;->a:Lhq5;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lhq5;->f(Z)V

    :cond_0
    return-void
.end method
