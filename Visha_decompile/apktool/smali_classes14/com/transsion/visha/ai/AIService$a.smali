.class public Lcom/transsion/visha/ai/AIService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audio/player/MusicPlayManager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/visha/ai/AIService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/visha/ai/AIService;


# direct methods
.method public constructor <init>(Lcom/transsion/visha/ai/AIService;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/visha/ai/AIService$a;->b:Lcom/transsion/visha/ai/AIService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayerStateUpdate(I)V
    .locals 2

    new-instance v0, Lcom/transsion/visha/ai/StateValue;

    invoke-direct {v0}, Lcom/transsion/visha/ai/StateValue;-><init>()V

    iput p1, v0, Lcom/transsion/visha/ai/StateValue;->state:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const-string p1, "\u672a\u77e5"

    iput-object p1, v0, Lcom/transsion/visha/ai/StateValue;->stateStr:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "\u505c\u6b62"

    iput-object p1, v0, Lcom/transsion/visha/ai/StateValue;->stateStr:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "\u6682\u505c"

    iput-object p1, v0, Lcom/transsion/visha/ai/StateValue;->stateStr:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p1, "\u64ad\u653e\u4e2d"

    iput-object p1, v0, Lcom/transsion/visha/ai/StateValue;->stateStr:Ljava/lang/String;

    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/transsion/visha/ai/AIService$a;->b:Lcom/transsion/visha/ai/AIService;

    invoke-static {p1}, Lcom/transsion/visha/ai/AIService;->f(Lcom/transsion/visha/ai/AIService;)Lcom/transsion/visha/ai/IAudioPlayStateCallback;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/transsion/visha/ai/AIService$a;->b:Lcom/transsion/visha/ai/AIService;

    invoke-static {p0}, Lcom/transsion/visha/ai/AIService;->f(Lcom/transsion/visha/ai/AIService;)Lcom/transsion/visha/ai/IAudioPlayStateCallback;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/transsion/visha/ai/IAudioPlayStateCallback;->onPlayerStateUpdate(Lcom/transsion/visha/ai/StateValue;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method public onShowError(II)V
    .locals 0

    new-instance p2, Lcom/transsion/visha/ai/StateValue;

    invoke-direct {p2}, Lcom/transsion/visha/ai/StateValue;-><init>()V

    iput p1, p2, Lcom/transsion/visha/ai/StateValue;->errorCode:I

    const-string p1, "audio\u64ad\u653e\u5f02\u5e38"

    iput-object p1, p2, Lcom/transsion/visha/ai/StateValue;->errorMessage:Ljava/lang/String;

    :try_start_0
    iget-object p1, p0, Lcom/transsion/visha/ai/AIService$a;->b:Lcom/transsion/visha/ai/AIService;

    invoke-static {p1}, Lcom/transsion/visha/ai/AIService;->f(Lcom/transsion/visha/ai/AIService;)Lcom/transsion/visha/ai/IAudioPlayStateCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/visha/ai/AIService$a;->b:Lcom/transsion/visha/ai/AIService;

    invoke-static {p0}, Lcom/transsion/visha/ai/AIService;->f(Lcom/transsion/visha/ai/AIService;)Lcom/transsion/visha/ai/IAudioPlayStateCallback;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/transsion/visha/ai/IAudioPlayStateCallback;->onError(Lcom/transsion/visha/ai/StateValue;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
