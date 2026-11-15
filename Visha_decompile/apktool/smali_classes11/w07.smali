.class public final Lw07;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljw4;


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw07;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;Ls74;)V
    .locals 0

    const-string p0, "content"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "config"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->f:Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$a;

    invoke-virtual {p0}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$a;->a()Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->n(Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;Z)V

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 1

    const-string v0, "list"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lw07;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lw07;->a:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public d(Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;Z)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lw07;->i(Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;Z)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    sget-object p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->f:Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$a;

    invoke-virtual {p0}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$a;->a()Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->l(Ljava/lang/String;)V

    return-void
.end method

.method public f(Lzt4;)V
    .locals 0

    sget-object p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->f:Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$a;

    invoke-virtual {p0}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$a;->a()Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->m(Lzt4;)V

    return-void
.end method

.method public g(Le74;Lhw4;)V
    .locals 0

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    sget-object p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->f:Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$a;

    invoke-virtual {p0}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$a;->a()Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->j(Ljava/lang/String;)V

    return-void
.end method

.method public i(Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->f:Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$a;

    invoke-virtual {p0}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$a;->a()Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->p(Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;Z)V

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    const-string p0, "tag"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->f:Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$a;

    invoke-virtual {p0}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$a;->a()Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->k(Ljava/lang/String;)V

    return-void
.end method

.method public k(Le74;Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;Ljava/lang/String;)V
    .locals 0

    const-string p0, "config"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "tag"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public l()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lw07;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method public m()Z
    .locals 0

    sget-object p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->f:Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$a;

    invoke-virtual {p0}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$a;->a()Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->i()Z

    move-result p0

    return p0
.end method

.method public stop()V
    .locals 0

    sget-object p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->f:Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$a;

    invoke-virtual {p0}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$a;->a()Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->o()V

    return-void
.end method
