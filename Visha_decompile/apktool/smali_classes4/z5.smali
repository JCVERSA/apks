.class public final Lz5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le3d;


# direct methods
.method public constructor <init>(Le3d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz5;->a:Le3d;

    return-void
.end method

.method public static a(Ls7;)Lz5;
    .locals 2

    move-object v0, p0

    check-cast v0, Le3d;

    const-string v1, "AdSession is null"

    invoke-static {p0, v1}, Lagd;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lagd;->j(Le3d;)V

    invoke-static {v0}, Lagd;->g(Le3d;)V

    new-instance p0, Lz5;

    invoke-direct {p0, v0}, Lz5;-><init>(Le3d;)V

    invoke-virtual {v0}, Le3d;->l()Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->c(Lz5;)V

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lz5;->a:Le3d;

    invoke-static {v0}, Lagd;->g(Le3d;)V

    iget-object v0, p0, Lz5;->a:Le3d;

    invoke-static {v0}, Lagd;->i(Le3d;)V

    iget-object v0, p0, Lz5;->a:Le3d;

    invoke-virtual {v0}, Le3d;->p()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lz5;->a:Le3d;

    invoke-virtual {v0}, Le3d;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v0, p0, Lz5;->a:Le3d;

    invoke-virtual {v0}, Le3d;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lz5;->a:Le3d;

    invoke-virtual {p0}, Le3d;->t()V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lz5;->a:Le3d;

    invoke-static {v0}, Lagd;->b(Le3d;)V

    iget-object v0, p0, Lz5;->a:Le3d;

    invoke-static {v0}, Lagd;->i(Le3d;)V

    iget-object p0, p0, Lz5;->a:Le3d;

    invoke-virtual {p0}, Le3d;->u()V

    return-void
.end method
