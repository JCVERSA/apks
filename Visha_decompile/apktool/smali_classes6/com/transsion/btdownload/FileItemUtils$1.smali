.class Lcom/transsion/btdownload/FileItemUtils$1;
.super Lcom/blankj/utilcode/util/ThreadUtils$SimpleTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/btdownload/FileItemUtils;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/blankj/utilcode/util/ThreadUtils$SimpleTask<",
        "Lcom/transsion/dbdata/beans/media/AudioItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/btdownload/FileItemUtils$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Lcom/blankj/utilcode/util/ThreadUtils$SimpleTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/btdownload/FileItemUtils$1;->val$name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lao;->E(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/transsion/btdownload/FileItemUtils$1;->doInBackground()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method public onSuccess(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 1

    .line 2
    invoke-static {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->convertToPlayAudioData(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0x16

    .line 3
    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->autoPlay:Z

    .line 5
    const-string v0, "Visha"

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->folderName:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->sourceAction:Ljava/lang/String;

    .line 7
    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->artistName:Ljava/lang/String;

    .line 8
    :cond_0
    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p1

    const-string v0, "launch_audio_player_activity"

    invoke-virtual {p1, v0, p0}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/FileItemUtils$1;->onSuccess(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method
