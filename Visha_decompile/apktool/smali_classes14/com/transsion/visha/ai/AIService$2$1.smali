.class Lcom/transsion/visha/ai/AIService$2$1;
.super Lcom/transsion/arch/threads/TaskExecutor$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/visha/ai/AIService$2;->startPlay(Ljava/lang/String;Lcom/transsion/visha/ai/IAudioPlayCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/arch/threads/TaskExecutor$Task<",
        "Lcom/transsion/dbdata/beans/media/PlayAudioData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/visha/ai/AIService$2;

.field final synthetic val$audioPlayCallback:Lcom/transsion/visha/ai/IAudioPlayCallback;


# direct methods
.method public constructor <init>(Lcom/transsion/visha/ai/AIService$2;Lcom/transsion/visha/ai/IAudioPlayCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/visha/ai/AIService$2$1;->this$1:Lcom/transsion/visha/ai/AIService$2;

    iput-object p2, p0, Lcom/transsion/visha/ai/AIService$2$1;->val$audioPlayCallback:Lcom/transsion/visha/ai/IAudioPlayCallback;

    invoke-direct {p0}, Lcom/transsion/arch/threads/TaskExecutor$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackground()Lcom/transsion/dbdata/beans/media/PlayAudioData;
    .locals 6

    .line 2
    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->O()Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object p0

    if-nez p0, :cond_0

    .line 3
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "music_playing"

    invoke-virtual {v0, v1}, Lcom/tencent/mmkv/MMKV;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    const-class p0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {v0, p0}, Lfi1;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/AudioItem;

    .line 6
    invoke-static {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->convertToPlayAudioData(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object p0

    :cond_0
    if-nez p0, :cond_1

    .line 7
    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    const/16 v4, 0x15

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lao;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p0, 0x0

    .line 9
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->convertToPlayAudioData(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public bridge synthetic onBackground()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/visha/ai/AIService$2$1;->onBackground()Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object p0

    return-object p0
.end method

.method public onResult(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V
    .locals 3

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/transsion/visha/ai/AIService$2$1;->this$1:Lcom/transsion/visha/ai/AIService$2;

    iget-object p1, p1, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    iget-object v0, p0, Lcom/transsion/visha/ai/AIService$2$1;->val$audioPlayCallback:Lcom/transsion/visha/ai/IAudioPlayCallback;

    const/16 v1, 0x3e9

    invoke-static {p1, v0, v1}, Lcom/transsion/visha/ai/AIService;->l(Lcom/transsion/visha/ai/AIService;Lcom/transsion/visha/ai/IAudioPlayCallback;I)V

    .line 3
    iget-object p0, p0, Lcom/transsion/visha/ai/AIService$2$1;->this$1:Lcom/transsion/visha/ai/AIService$2;

    iget-object p0, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    invoke-static {p0}, Lcom/transsion/visha/ai/AIService;->q(Lcom/transsion/visha/ai/AIService;)V

    return-void

    :cond_0
    const/16 v0, 0x15

    .line 4
    iput v0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->autoPlay:Z

    .line 6
    invoke-static {}, Lao;->U()Lao;

    move-result-object v1

    invoke-static {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->convertToPlayAudioItem(Lcom/transsion/dbdata/beans/media/PlayAudioData;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lao;->f0(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v1

    invoke-static {v0, v1}, Lp06;->y(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->sourceAction:Ljava/lang/String;

    .line 7
    iget-object p0, p0, Lcom/transsion/visha/ai/AIService$2$1;->this$1:Lcom/transsion/visha/ai/AIService$2;

    iget-object p0, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    invoke-static {p0, p1}, Lcom/transsion/visha/ai/AIService;->p(Lcom/transsion/visha/ai/AIService;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;

    invoke-virtual {p0, p1}, Lcom/transsion/visha/ai/AIService$2$1;->onResult(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    return-void
.end method
