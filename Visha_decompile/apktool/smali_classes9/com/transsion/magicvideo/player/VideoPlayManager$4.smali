.class Lcom/transsion/magicvideo/player/VideoPlayManager$4;
.super Lcom/transsion/arch/threads/TaskExecutor$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/player/VideoPlayManager;->z1(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/arch/threads/TaskExecutor$Task<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/magicvideo/player/VideoPlayManager;

.field final synthetic val$mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

.field final synthetic val$playStates:Lcom/transsion/dbdata/beans/PlayerStates;

.field final synthetic val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/player/VideoPlayManager;Lcom/transsion/dbdata/beans/media/PlayVideoData;Lcom/transsion/dbdata/beans/PlayerStates;Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$4;->this$0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    iput-object p2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$4;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput-object p3, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$4;->val$playStates:Lcom/transsion/dbdata/beans/PlayerStates;

    iput-object p4, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$4;->val$mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-direct {p0}, Lcom/transsion/arch/threads/TaskExecutor$Task;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/dbdata/beans/PlayerStates;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager$4;->lambda$onBackground$1(Lcom/transsion/dbdata/beans/PlayerStates;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/dbdata/beans/PlayerStates;Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager$4;->lambda$onBackground$0(Lcom/transsion/dbdata/beans/PlayerStates;Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;)V

    return-void
.end method

.method private static synthetic lambda$onBackground$0(Lcom/transsion/dbdata/beans/PlayerStates;Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;)V
    .locals 3

    new-instance v0, Lcom/transsion/playercommon/data/CloudHistoryRequestData;

    iget p0, p0, Lcom/transsion/dbdata/beans/PlayerStates;->currentPosition:I

    div-int/lit16 p0, p0, 0x3e8

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->getVideoId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->getMediaLibraryId()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/transsion/playercommon/data/CloudHistoryRequestData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lkh5;->a(Lcom/transsion/playercommon/data/CloudHistoryRequestData;)V

    return-void
.end method

.method private static synthetic lambda$onBackground$1(Lcom/transsion/dbdata/beans/PlayerStates;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V
    .locals 3

    new-instance v0, Lcom/transsion/playercommon/data/CloudHistoryRequestData;

    iget p0, p0, Lcom/transsion/dbdata/beans/PlayerStates;->currentPosition:I

    div-int/lit16 p0, p0, 0x3e8

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mKtFileId:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/transsion/playercommon/data/CloudHistoryRequestData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lkh5;->a(Lcom/transsion/playercommon/data/CloudHistoryRequestData;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBackground()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager$4;->onBackground()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public onBackground()Ljava/lang/Void;
    .locals 7

    .line 2
    const-string v0, "VideoPlayManager"

    :try_start_0
    sget-object v1, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils;->Companion:Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;

    iget-object v2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$4;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;->isMiMediaVideo(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$4;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->getMiMediaInfo()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->getVideoId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-static {}, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->k()Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->getVideoId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$4;->val$playStates:Lcom/transsion/dbdata/beans/PlayerStates;

    iget v4, v4, Lcom/transsion/dbdata/beans/PlayerStates;->currentPosition:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->w(Ljava/lang/String;J)V

    .line 6
    sget-object v2, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->a:Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->getVideoId()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$4;->val$playStates:Lcom/transsion/dbdata/beans/PlayerStates;

    iget v4, p0, Lcom/transsion/dbdata/beans/PlayerStates;->currentPosition:I

    int-to-long v4, v4

    new-instance v6, Lcom/transsion/magicvideo/player/a;

    invoke-direct {v6, p0, v1}, Lcom/transsion/magicvideo/player/a;-><init>(Lcom/transsion/dbdata/beans/PlayerStates;Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;)V

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->W(Ljava/lang/String;JLjava/lang/Runnable;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recordVideoStates "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$4;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->getMiMediaInfo()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$4;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isKt()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$4;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isKtShare()Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    sget-object v1, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->a:Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;

    iget-object v2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$4;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-object v3, v2, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mKtFileId:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$4;->val$playStates:Lcom/transsion/dbdata/beans/PlayerStates;

    iget v4, p0, Lcom/transsion/dbdata/beans/PlayerStates;->currentPosition:I

    int-to-long v4, v4

    new-instance v6, Lcom/transsion/magicvideo/player/b;

    invoke-direct {v6, p0, v2}, Lcom/transsion/magicvideo/player/b;-><init>(Lcom/transsion/dbdata/beans/PlayerStates;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->W(Ljava/lang/String;JLjava/lang/Runnable;)V

    goto :goto_1

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$4;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$4;->val$mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz v1, :cond_3

    .line 11
    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$4;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-object v3, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$4;->val$mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$4;->val$playStates:Lcom/transsion/dbdata/beans/PlayerStates;

    invoke-virtual {v1, v2, v3, p0}, Ltpb;->B(Lcom/transsion/dbdata/beans/media/PlayVideoData;Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/PlayerStates;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 12
    :goto_0
    const-string v1, "recordVideoStates"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
