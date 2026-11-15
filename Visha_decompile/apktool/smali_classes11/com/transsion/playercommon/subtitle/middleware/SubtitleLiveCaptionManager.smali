.class public Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile e:Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;


# instance fields
.field public a:Lcom/transsion/livecaption/client/SubtitleManager;

.field public b:Lzt4;

.field public c:I

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->c:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;)Lzt4;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->b:Lzt4;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;)Lcom/transsion/livecaption/client/SubtitleManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->a:Lcom/transsion/livecaption/client/SubtitleManager;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->c:I

    return-void
.end method

.method public static bridge synthetic d(Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;Lcom/transsion/livecaption/client/SubtitleManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->a:Lcom/transsion/livecaption/client/SubtitleManager;

    return-void
.end method

.method public static e()Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;
    .locals 2

    sget-object v0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->e:Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->e:Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;

    invoke-direct {v1}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;-><init>()V

    sput-object v1, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->e:Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;

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
    sget-object v0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->e:Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;

    return-object v0
.end method


# virtual methods
.method public final f(Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;)V
    .locals 1

    invoke-virtual {p1}, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->getToLang()Ljava/lang/String;

    move-result-object p0

    const-string v0, "none"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->getFromLang()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->setToLang(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public g(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initSubtitleManager "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubtitleLiveCaptionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager$1;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager$1;-><init>(Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;)V

    new-instance v1, Lcom/transsion/livecaption/client/SubtitleManager;

    invoke-direct {v1, p1, v0}, Lcom/transsion/livecaption/client/SubtitleManager;-><init>(Landroid/content/Context;Lcom/transsion/livecaption/IAapCallback$Stub;)V

    iput-object v1, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->a:Lcom/transsion/livecaption/client/SubtitleManager;

    return-void
.end method

.method public h()Z
    .locals 1

    iget p0, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->c:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public i(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->h()Z

    move-result v0

    const-string v1, "SubtitleLiveCaptionManager"

    if-nez v0, :cond_0

    const-string p0, "update isServiceConnected"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->a:Lcom/transsion/livecaption/client/SubtitleManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/livecaption/client/SubtitleManager;->translate(Ljava/lang/String;)V
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

.method public j(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "release "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->a:Lcom/transsion/livecaption/client/SubtitleManager;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SubtitleLiveCaptionManager"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "release tag not match"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->a:Lcom/transsion/livecaption/client/SubtitleManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/livecaption/client/SubtitleManager;->release()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->c:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->a:Lcom/transsion/livecaption/client/SubtitleManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->d:Ljava/lang/String;

    return-void
.end method

.method public l(Lzt4;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->b:Lzt4;

    return-void
.end method

.method public m(Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    sget-object v2, Lcom/transsion/livecaption/bean/SubtitleBean$InputType;->AUDIO:Lcom/transsion/livecaption/bean/SubtitleBean$InputType;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/transsion/livecaption/bean/SubtitleBean$InputType;->TEXT:Lcom/transsion/livecaption/bean/SubtitleBean$InputType;

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SubtitleLiveCaptionManager"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->a:Lcom/transsion/livecaption/client/SubtitleManager;

    if-nez v0, :cond_1

    const-string p1, "start initSubtitleManager"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->g(Landroid/content/Context;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->h()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "start isServiceConnected"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->a:Lcom/transsion/livecaption/client/SubtitleManager;

    invoke-virtual {v0}, Lcom/transsion/livecaption/client/SubtitleManager;->getState()Lcom/transsion/livecaption/constant/State;

    move-result-object v0

    sget-object v3, Lcom/transsion/livecaption/constant/State;->STARTED:Lcom/transsion/livecaption/constant/State;

    if-ne v0, v3, :cond_3

    const-string p0, "start had started"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->f(Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;)V

    new-instance v0, Lcom/transsion/livecaption/bean/SubtitleBean;

    invoke-direct {v0}, Lcom/transsion/livecaption/bean/SubtitleBean;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->getFromLang()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/transsion/livecaption/bean/SubtitleBean;->setInLanguage(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->getToLang()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/livecaption/bean/SubtitleBean;->setOutLanguage(Ljava/lang/String;)V

    if-eqz p2, :cond_4

    sget-object p1, Lcom/transsion/livecaption/bean/SubtitleBean$InputType;->AUDIO:Lcom/transsion/livecaption/bean/SubtitleBean$InputType;

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/transsion/livecaption/bean/SubtitleBean$InputType;->TEXT:Lcom/transsion/livecaption/bean/SubtitleBean$InputType;

    :goto_1
    invoke-virtual {v0, p1}, Lcom/transsion/livecaption/bean/SubtitleBean;->setInputType(Lcom/transsion/livecaption/bean/SubtitleBean$InputType;)V

    :try_start_0
    iget-object p0, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->a:Lcom/transsion/livecaption/client/SubtitleManager;

    invoke-virtual {p0, v0}, Lcom/transsion/livecaption/client/SubtitleManager;->start(Lcom/transsion/livecaption/bean/SubtitleBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public n()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->a:Lcom/transsion/livecaption/client/SubtitleManager;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SubtitleLiveCaptionManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->a:Lcom/transsion/livecaption/client/SubtitleManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/livecaption/client/SubtitleManager;->getState()Lcom/transsion/livecaption/constant/State;

    move-result-object v0

    sget-object v3, Lcom/transsion/livecaption/constant/State;->STOPPED:Lcom/transsion/livecaption/constant/State;

    if-ne v0, v3, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->a:Lcom/transsion/livecaption/client/SubtitleManager;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/transsion/livecaption/client/SubtitleManager;->stop(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public o(Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;Z)V
    .locals 4

    const-string v0, "update "

    iget-object v1, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->a:Lcom/transsion/livecaption/client/SubtitleManager;

    if-nez v1, :cond_0

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->g(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->h()Z

    move-result v1

    const-string v2, "SubtitleLiveCaptionManager"

    if-nez v1, :cond_1

    const-string p0, "update isNot ServiceConnected"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->a:Lcom/transsion/livecaption/client/SubtitleManager;

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->f(Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    sget-object v3, Lcom/transsion/livecaption/bean/SubtitleBean$InputType;->AUDIO:Lcom/transsion/livecaption/bean/SubtitleBean$InputType;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    sget-object v3, Lcom/transsion/livecaption/bean/SubtitleBean$InputType;->TEXT:Lcom/transsion/livecaption/bean/SubtitleBean$InputType;

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/transsion/livecaption/bean/SubtitleBean;

    invoke-direct {v1}, Lcom/transsion/livecaption/bean/SubtitleBean;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->getFromLang()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/transsion/livecaption/bean/SubtitleBean;->setInLanguage(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->getToLang()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/transsion/livecaption/bean/SubtitleBean;->setOutLanguage(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    sget-object p1, Lcom/transsion/livecaption/bean/SubtitleBean$InputType;->AUDIO:Lcom/transsion/livecaption/bean/SubtitleBean$InputType;

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/transsion/livecaption/bean/SubtitleBean$InputType;->TEXT:Lcom/transsion/livecaption/bean/SubtitleBean$InputType;

    :goto_1
    invoke-virtual {v1, p1}, Lcom/transsion/livecaption/bean/SubtitleBean;->setInputType(Lcom/transsion/livecaption/bean/SubtitleBean$InputType;)V

    iget-object p0, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->a:Lcom/transsion/livecaption/client/SubtitleManager;

    invoke-virtual {p0, v1}, Lcom/transsion/livecaption/client/SubtitleManager;->update(Lcom/transsion/livecaption/bean/SubtitleBean;)V
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
