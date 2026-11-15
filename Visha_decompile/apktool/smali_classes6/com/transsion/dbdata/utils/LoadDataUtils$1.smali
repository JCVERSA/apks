.class Lcom/transsion/dbdata/utils/LoadDataUtils$1;
.super Lcom/transsion/arch/threads/TaskExecutor$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/dbdata/utils/LoadDataUtils;->j(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/arch/threads/TaskExecutor$Task<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/dbdata/utils/LoadDataUtils;

.field final synthetic val$id:I

.field final synthetic val$playVideoData:Z

.field final synthetic val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;


# direct methods
.method public constructor <init>(Lcom/transsion/dbdata/utils/LoadDataUtils;Lcom/transsion/dbdata/beans/media/PlayVideoData;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$1;->this$0:Lcom/transsion/dbdata/utils/LoadDataUtils;

    iput-object p2, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$1;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput p3, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$1;->val$id:I

    iput-boolean p4, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$1;->val$playVideoData:Z

    invoke-direct {p0}, Lcom/transsion/arch/threads/TaskExecutor$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackground()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils;->Companion:Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;

    iget-object v1, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$1;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;->isMiMediaVideo(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$1;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isKt()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$1;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mKtFileId:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/dbdata/dbhelpder/VideoCloudCacheHelper;->c(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$1;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-boolean v0, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    if-eqz v0, :cond_2

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$1;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mYoutubeId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ltpb;->z(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0

    :cond_2
    iget v0, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$1;->val$id:I

    invoke-static {v0}, Lcom/transsion/dbdata/utils/LoadDataUtils;->m(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$1;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$1;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playUri:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Ltpb;->n(Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$1;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget p0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mediaId:I

    invoke-virtual {v0, p0}, Ltpb;->h(I)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public onResult(Ljava/lang/Object;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    instance-of v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    const-string v2, "asyncLoad playlist:"

    const-string v3, "LoadDataUtils"

    if-eqz v1, :cond_0

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$1;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-boolean v4, v1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isVirtualFolder:Z

    iput-boolean v4, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isVirtualFolder:Z

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->virtualFolderMatchName:Ljava/lang/String;

    iput-object v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->virtualFolderMatchName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$1;->this$0:Lcom/transsion/dbdata/utils/LoadDataUtils;

    invoke-static {p1}, Lcom/transsion/dbdata/utils/LoadDataUtils;->b(Lcom/transsion/dbdata/utils/LoadDataUtils;)Lcom/transsion/dbdata/utils/LoadDataUtils$a;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$1;->this$0:Lcom/transsion/dbdata/utils/LoadDataUtils;

    invoke-static {p1}, Lcom/transsion/dbdata/utils/LoadDataUtils;->b(Lcom/transsion/dbdata/utils/LoadDataUtils;)Lcom/transsion/dbdata/utils/LoadDataUtils$a;

    move-result-object p1

    iget-boolean v1, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$1;->val$playVideoData:Z

    invoke-interface {p1, v0, v1}, Lcom/transsion/dbdata/utils/LoadDataUtils$a;->a(Ljava/util/ArrayList;Z)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$1;->this$0:Lcom/transsion/dbdata/utils/LoadDataUtils;

    iget-object p0, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$1;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/utils/LoadDataUtils;->k(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    return-void
.end method
