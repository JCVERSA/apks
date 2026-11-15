.class public final Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$initSubtitleManager$aapCallback$1;
.super Lcom/transsion/aicore/nexusflow/IAapCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->h(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\r\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "com/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$initSubtitleManager$aapCallback$1",
        "Lcom/transsion/aicore/nexusflow/IAapCallback$Stub;",
        "Landroid/os/Bundle;",
        "data",
        "Lzfb;",
        "onData",
        "(Landroid/os/Bundle;)V",
        "",
        "code",
        "onEvent",
        "(I)V",
        "",
        "message",
        "onError",
        "(ILjava/lang/String;)V",
        "playercommon_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$initSubtitleManager$aapCallback$1;->this$0:Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;

    invoke-direct {p0}, Lcom/transsion/aicore/nexusflow/IAapCallback$Stub;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$initSubtitleManager$aapCallback$1;->onError$lambda$2(Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;I)V

    return-void
.end method

.method public static synthetic b(ILcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$initSubtitleManager$aapCallback$1;->onEvent$lambda$1(ILcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;)V

    return-void
.end method

.method public static synthetic c(Landroid/os/Bundle;Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$initSubtitleManager$aapCallback$1;->onData$lambda$0(Landroid/os/Bundle;Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;)V

    return-void
.end method

.method private static final onData$lambda$0(Landroid/os/Bundle;Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;)V
    .locals 3

    if-eqz p0, :cond_1

    const-string v0, "origin_text"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", origin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SubtitleNexusFlowManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->a(Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;)Lzt4;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->a(Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;)Lzt4;

    move-result-object p1

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {p1, p0, v0}, Lzt4;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "Subtitle_Out"

    const-string p1, "onTranslateCallback subtitleSubtitleListener is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private static final onError$lambda$2(Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->d(Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;I)V

    const/16 v0, 0x3f7

    if-ne p1, v0, :cond_0

    invoke-static {}, Ll6a;->b()Ll6a;

    move-result-object p1

    const/4 v0, -0x3

    invoke-virtual {p1, v0}, Ll6a;->c(I)V

    :cond_0
    invoke-static {p0}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->b(Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;)Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p0}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->b(Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;)Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->stop()V

    :cond_1
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->e(Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;Lcom/transsion/aicore/nexusflow/client/SubtitleManager;)V

    :cond_2
    return-void
.end method

.method private static final onEvent$lambda$1(ILcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;)V
    .locals 1

    const/16 v0, 0x3f3

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3f7

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->b(Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;)Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->stop()V

    :cond_1
    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->e(Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;Lcom/transsion/aicore/nexusflow/client/SubtitleManager;)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x2

    invoke-static {p1, p0}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->d(Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;I)V

    invoke-static {}, Ll6a;->b()Ll6a;

    move-result-object p1

    invoke-virtual {p1, p0}, Ll6a;->c(I)V

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

    iget-object p0, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$initSubtitleManager$aapCallback$1;->this$0:Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;

    new-instance v0, Lj5a;

    invoke-direct {v0, p1, p0}, Lj5a;-><init>(Landroid/os/Bundle;Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;)V

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

    const-string v0, "SubtitleNexusFlowManager"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$initSubtitleManager$aapCallback$1;->this$0:Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;

    new-instance p2, Lh5a;

    invoke-direct {p2, p0, p1}, Lh5a;-><init>(Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;I)V

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

    const-string v1, "SubtitleNexusFlowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$initSubtitleManager$aapCallback$1;->this$0:Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;

    new-instance v0, Li5a;

    invoke-direct {v0, p1, p0}, Li5a;-><init>(ILcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    return-void
.end method
