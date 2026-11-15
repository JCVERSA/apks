.class public final Lwr9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljw4;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;Ls74;)V
    .locals 0

    const-string p0, "content"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "config"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lh0;->i:Lh0$a;

    invoke-virtual {p0}, Lh0$a;->a()Lh0;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lh0;->t(Ljava/lang/String;Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;Ls74;)V

    return-void
.end method

.method public b(Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;Z)V
    .locals 0

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 0

    const-string p0, "list"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public d(Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;Z)V
    .locals 0

    const-string p0, "config"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lh0;->i:Lh0$a;

    invoke-virtual {p0}, Lh0$a;->a()Lh0;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lh0;->D(Le74;Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public f(Lzt4;)V
    .locals 0

    return-void
.end method

.method public g(Le74;Lhw4;)V
    .locals 0

    sget-object p0, Lh0;->i:Lh0$a;

    invoke-virtual {p0}, Lh0$a;->a()Lh0;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lh0;->B(Le74;Lhw4;)V

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public i(Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;Z)V
    .locals 0

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    const-string p0, "tag"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lh0;->i:Lh0$a;

    invoke-virtual {p0}, Lh0$a;->a()Lh0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lh0;->w(Ljava/lang/String;)V

    return-void
.end method

.method public k(Le74;Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;Ljava/lang/String;)V
    .locals 0

    const-string p0, "config"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "tag"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lh0;->i:Lh0$a;

    invoke-virtual {p0}, Lh0$a;->a()Lh0;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lh0;->p(Le74;Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;Ljava/lang/String;)V

    return-void
.end method

.method public l()Ljava/util/List;
    .locals 0

    sget-object p0, Lh0;->i:Lh0$a;

    invoke-virtual {p0}, Lh0$a;->a()Lh0;

    move-result-object p0

    invoke-virtual {p0}, Lh0;->n()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public m()Z
    .locals 0

    sget-object p0, Lh0;->i:Lh0$a;

    invoke-virtual {p0}, Lh0$a;->a()Lh0;

    move-result-object p0

    invoke-virtual {p0}, Lh0;->s()Z

    move-result p0

    return p0
.end method

.method public stop()V
    .locals 0

    sget-object p0, Lh0;->i:Lh0$a;

    invoke-virtual {p0}, Lh0$a;->a()Lh0;

    move-result-object p0

    invoke-virtual {p0}, Lh0;->C()V

    return-void
.end method
