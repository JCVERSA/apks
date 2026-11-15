.class Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager$1;
.super Lcom/transsion/livecaption/IAapCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->g(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager$1;->this$0:Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;

    invoke-direct {p0}, Lcom/transsion/livecaption/IAapCallback$Stub;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager$1;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager$1;->lambda$onData$0(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager$1;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager$1;->lambda$onEvent$1(I)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager$1;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager$1;->lambda$onError$2(I)V

    return-void
.end method

.method private synthetic lambda$onData$0(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "origin_text"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager$1;->this$0:Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;

    invoke-static {v1}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->a(Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;)Lzt4;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager$1;->this$0:Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;

    invoke-static {p0}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->a(Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;)Lzt4;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lzt4;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "Subtitle_Out"

    const-string p1, "onTranslateCallback subtitleSubtitleListener is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onError$2(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager$1;->this$0:Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->c(Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;I)V

    const/16 v0, 0x3f7

    if-ne p1, v0, :cond_0

    invoke-static {}, Ll6a;->b()Ll6a;

    move-result-object p1

    const/4 v0, -0x3

    invoke-virtual {p1, v0}, Ll6a;->c(I)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager$1;->this$0:Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;

    invoke-static {p1}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->b(Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;)Lcom/transsion/livecaption/client/SubtitleManager;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager$1;->this$0:Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;

    invoke-static {p1}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->b(Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;)Lcom/transsion/livecaption/client/SubtitleManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/livecaption/client/SubtitleManager;->stop()V

    iget-object p0, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager$1;->this$0:Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->d(Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;Lcom/transsion/livecaption/client/SubtitleManager;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onEvent$1(I)V
    .locals 1

    const/16 v0, 0x3f3

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager$1;->this$0:Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->c(Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;I)V

    invoke-static {}, Ll6a;->b()Ll6a;

    move-result-object p0

    invoke-virtual {p0, p1}, Ll6a;->c(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x3f7

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager$1;->this$0:Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;

    invoke-static {p1}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->b(Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;)Lcom/transsion/livecaption/client/SubtitleManager;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager$1;->this$0:Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;

    invoke-static {p1}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->b(Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;)Lcom/transsion/livecaption/client/SubtitleManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/livecaption/client/SubtitleManager;->stop()V

    iget-object p0, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager$1;->this$0:Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;->d(Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager;Lcom/transsion/livecaption/client/SubtitleManager;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onData(Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTranslateCallback data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Subtitle_Out"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/transsion/playercommon/subtitle/middleware/b;

    invoke-direct {v0, p0, p1}, Lcom/transsion/playercommon/subtitle/middleware/b;-><init>(Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager$1;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SubtitleLiveCaptionManager"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/transsion/playercommon/subtitle/middleware/c;

    invoke-direct {p2, p0, p1}, Lcom/transsion/playercommon/subtitle/middleware/c;-><init>(Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager$1;I)V

    invoke-static {p2}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onEvent(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubtitleLiveCaptionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/transsion/playercommon/subtitle/middleware/a;

    invoke-direct {v0, p0, p1}, Lcom/transsion/playercommon/subtitle/middleware/a;-><init>(Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager$1;I)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    return-void
.end method
