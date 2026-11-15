.class public final Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$a;

.field public static g:Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;


# instance fields
.field public a:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

.field public b:Lzt4;

.field public c:I

.field public d:Lcom/transsion/aicore/nexusflow/constant/State;

.field public e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->f:Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->c:I

    sget-object v0, Lcom/transsion/aicore/nexusflow/constant/State;->NONE:Lcom/transsion/aicore/nexusflow/constant/State;

    iput-object v0, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->d:Lcom/transsion/aicore/nexusflow/constant/State;

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;)Lzt4;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->b:Lzt4;

    return-object p0
.end method

.method public static final synthetic b(Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;)Lcom/transsion/aicore/nexusflow/client/SubtitleManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->a:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    return-object p0
.end method

.method public static final synthetic c()Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->g:Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;

    return-object v0
.end method

.method public static final synthetic d(Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->c:I

    return-void
.end method

.method public static final synthetic e(Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;Lcom/transsion/aicore/nexusflow/client/SubtitleManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->a:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    return-void
.end method

.method public static final synthetic f(Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;)V
    .locals 0

    sput-object p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->g:Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;

    return-void
.end method


# virtual methods
.method public final g(Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;)V
    .locals 1

    invoke-virtual {p1}, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->getToLang()Ljava/lang/String;

    move-result-object p0

    const-string v0, "none"

    invoke-static {v0, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->getFromLang()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->setToLang(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final h(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initSubtitleManager "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubtitleNexusFlowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$initSubtitleManager$aapCallback$1;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$initSubtitleManager$aapCallback$1;-><init>(Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;)V

    new-instance v1, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    invoke-direct {v1, p1, v0}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;-><init>(Landroid/content/Context;Lcom/transsion/aicore/nexusflow/IAapCallback$Stub;)V

    iput-object v1, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->a:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    return-void
.end method

.method public final i()Z
    .locals 1

    iget p0, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->c:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->i()Z

    move-result v0

    const-string v1, "SubtitleNexusFlowManager"

    if-nez v0, :cond_0

    const-string p0, "update isServiceConnected"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->a:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->translate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "offlineTranslate "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->a:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubtitleNexusFlowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "release tag not match"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->a:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    if-eqz p1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->release()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->c:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->a:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    sget-object p1, Lcom/transsion/aicore/nexusflow/constant/State;->NONE:Lcom/transsion/aicore/nexusflow/constant/State;

    iput-object p1, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->d:Lcom/transsion/aicore/nexusflow/constant/State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->e:Ljava/lang/String;

    return-void
.end method

.method public final m(Lzt4;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->b:Lzt4;

    return-void
.end method

.method public final n(Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;Z)V
    .locals 4

    const-string v0, "config"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    sget-object v0, Lcom/transsion/aicore/nexusflow/bean/SubtitleBean$InputType;->AUDIO:Lcom/transsion/aicore/nexusflow/bean/SubtitleBean$InputType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/aicore/nexusflow/bean/SubtitleBean$InputType;->TEXT:Lcom/transsion/aicore/nexusflow/bean/SubtitleBean$InputType;

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubtitleNexusFlowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->a:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    if-nez v0, :cond_1

    const-string p1, "start initSubtitleManager"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->h(Landroid/content/Context;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->i()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "start isServiceConnected"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->a:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->getState()Lcom/transsion/aicore/nexusflow/constant/State;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    sget-object v3, Lcom/transsion/aicore/nexusflow/constant/State;->STARTED:Lcom/transsion/aicore/nexusflow/constant/State;

    if-ne v0, v3, :cond_4

    const-string p0, "start had started"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iput-object v3, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->d:Lcom/transsion/aicore/nexusflow/constant/State;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->g(Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;)V

    new-instance v0, Lcom/transsion/aicore/nexusflow/bean/SubtitleBean;

    invoke-direct {v0}, Lcom/transsion/aicore/nexusflow/bean/SubtitleBean;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->getFromLang()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/transsion/aicore/nexusflow/bean/SubtitleBean;->mInLanguage:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->getToLang()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/aicore/nexusflow/bean/SubtitleBean;->mOutLanguage:Ljava/lang/String;

    if-eqz p2, :cond_5

    sget-object p1, Lcom/transsion/aicore/nexusflow/bean/SubtitleBean$InputType;->AUDIO:Lcom/transsion/aicore/nexusflow/bean/SubtitleBean$InputType;

    goto :goto_2

    :cond_5
    sget-object p1, Lcom/transsion/aicore/nexusflow/bean/SubtitleBean$InputType;->TEXT:Lcom/transsion/aicore/nexusflow/bean/SubtitleBean$InputType;

    :goto_2
    iput-object p1, v0, Lcom/transsion/aicore/nexusflow/bean/SubtitleBean;->mInputType:Lcom/transsion/aicore/nexusflow/bean/SubtitleBean$InputType;

    :try_start_0
    iget-object p0, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->a:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    if-eqz p0, :cond_6

    invoke-virtual {p0, v0}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->start(Lcom/transsion/aicore/nexusflow/bean/SubtitleBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    return-void
.end method

.method public final o()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->a:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubtitleNexusFlowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->a:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->getState()Lcom/transsion/aicore/nexusflow/constant/State;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lcom/transsion/aicore/nexusflow/constant/State;->STOPPED:Lcom/transsion/aicore/nexusflow/constant/State;

    if-ne v0, v3, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->a:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    if-eqz p0, :cond_2

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->stop(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void
.end method

.method public final p(Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;Z)V
    .locals 4

    const-string v0, "update "

    const-string v1, "config"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->a:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    if-nez v1, :cond_0

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->h(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->i()Z

    move-result v1

    const-string v2, "SubtitleNexusFlowManager"

    if-nez v1, :cond_1

    const-string p0, "update isNot ServiceConnected"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->a:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->g(Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;)V

    if-eqz p2, :cond_2

    sget-object v1, Lcom/transsion/aicore/nexusflow/bean/SubtitleBean$InputType;->AUDIO:Lcom/transsion/aicore/nexusflow/bean/SubtitleBean$InputType;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/transsion/aicore/nexusflow/bean/SubtitleBean$InputType;->TEXT:Lcom/transsion/aicore/nexusflow/bean/SubtitleBean$InputType;

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/transsion/aicore/nexusflow/bean/SubtitleBean;

    invoke-direct {v1}, Lcom/transsion/aicore/nexusflow/bean/SubtitleBean;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->getFromLang()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/transsion/aicore/nexusflow/bean/SubtitleBean;->mInLanguage:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->getToLang()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/transsion/aicore/nexusflow/bean/SubtitleBean;->mOutLanguage:Ljava/lang/String;

    if-eqz p2, :cond_3

    sget-object p1, Lcom/transsion/aicore/nexusflow/bean/SubtitleBean$InputType;->AUDIO:Lcom/transsion/aicore/nexusflow/bean/SubtitleBean$InputType;

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/transsion/aicore/nexusflow/bean/SubtitleBean$InputType;->TEXT:Lcom/transsion/aicore/nexusflow/bean/SubtitleBean$InputType;

    :goto_1
    iput-object p1, v1, Lcom/transsion/aicore/nexusflow/bean/SubtitleBean;->mInputType:Lcom/transsion/aicore/nexusflow/bean/SubtitleBean$InputType;

    iget-object p0, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->a:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v1}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->update(Lcom/transsion/aicore/nexusflow/bean/SubtitleBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    return-void
.end method
