.class public final Ly0j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/net/Uri;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 2
    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v9}, Ly0j;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZZLc2j;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZZLc2j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Ly0j;->a:Ljava/lang/String;

    iput-object p2, p0, Ly0j;->b:Landroid/net/Uri;

    const-string p1, ""

    iput-object p1, p0, Ly0j;->c:Ljava/lang/String;

    iput-object p1, p0, Ly0j;->d:Ljava/lang/String;

    iput-boolean p5, p0, Ly0j;->e:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Ly0j;->f:Z

    iput-boolean p7, p0, Ly0j;->g:Z

    iput-boolean p1, p0, Ly0j;->h:Z

    return-void
.end method


# virtual methods
.method public final a()Ly0j;
    .locals 11

    new-instance v10, Ly0j;

    iget-object v2, p0, Ly0j;->b:Landroid/net/Uri;

    iget-object v3, p0, Ly0j;->c:Ljava/lang/String;

    iget-object v4, p0, Ly0j;->d:Ljava/lang/String;

    iget-boolean v5, p0, Ly0j;->e:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Ly0j;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZZLc2j;)V

    return-object v10
.end method

.method public final b()Ly0j;
    .locals 11

    iget-object v0, p0, Ly0j;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ly0j;

    iget-object v3, p0, Ly0j;->b:Landroid/net/Uri;

    iget-object v4, p0, Ly0j;->c:Ljava/lang/String;

    iget-object v5, p0, Ly0j;->d:Ljava/lang/String;

    iget-boolean v8, p0, Ly0j;->g:Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Ly0j;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZZLc2j;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set GServices prefix and skip GServices"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Ljava/lang/String;D)Lq1j;
    .locals 1

    const-wide/high16 p1, -0x3ff8000000000000L    # -3.0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    new-instance p2, Ls0j;

    const-string p3, "measurement.test.double_flag"

    const/4 v0, 0x1

    invoke-direct {p2, p0, p3, p1, v0}, Ls0j;-><init>(Ly0j;Ljava/lang/String;Ljava/lang/Double;Z)V

    return-object p2
.end method

.method public final d(Ljava/lang/String;J)Lq1j;
    .locals 1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    new-instance p3, Lm0j;

    const/4 v0, 0x1

    invoke-direct {p3, p0, p1, p2, v0}, Lm0j;-><init>(Ly0j;Ljava/lang/String;Ljava/lang/Long;Z)V

    return-object p3
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)Lq1j;
    .locals 2

    new-instance v0, Lv0j;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lv0j;-><init>(Ly0j;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final f(Ljava/lang/String;Z)Lq1j;
    .locals 2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    new-instance v0, Lp0j;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lp0j;-><init>(Ly0j;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    return-object v0
.end method
