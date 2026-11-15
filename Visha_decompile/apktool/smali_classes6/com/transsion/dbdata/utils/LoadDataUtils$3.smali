.class Lcom/transsion/dbdata/utils/LoadDataUtils$3;
.super Lcom/transsion/arch/threads/TaskExecutor$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/dbdata/utils/LoadDataUtils;->l(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/arch/threads/TaskExecutor$Task<",
        "Ljava/util/ArrayList<",
        "Lcom/transsion/dbdata/beans/media/MediaItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/dbdata/utils/LoadDataUtils;

.field final synthetic val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;


# direct methods
.method public constructor <init>(Lcom/transsion/dbdata/utils/LoadDataUtils;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$3;->this$0:Lcom/transsion/dbdata/utils/LoadDataUtils;

    iput-object p2, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$3;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-direct {p0}, Lcom/transsion/arch/threads/TaskExecutor$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBackground()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/dbdata/utils/LoadDataUtils$3;->onBackground()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public onBackground()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$3;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->secureAlbum:Ljava/util/ArrayList;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    .line 5
    :goto_0
    const-string v5, "LoadDataUtils"

    if-ge v4, v2, :cond_4

    .line 6
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/16 v7, 0x2b

    .line 7
    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    if-lez v7, :cond_2

    .line 8
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v7, v8, :cond_0

    goto :goto_2

    .line 9
    :cond_0
    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v7, v7, 0x1

    .line 10
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 12
    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    .line 13
    iget-object v6, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$3;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-boolean v6, v6, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    if-eqz v6, :cond_1

    .line 14
    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v5

    iget-object v6, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$3;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-object v6, v6, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mYoutubeId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ltpb;->z(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v5

    goto :goto_1

    .line 15
    :cond_1
    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v6

    invoke-virtual {v6, v5}, Ltpb;->h(I)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v5

    :goto_1
    if-eqz v5, :cond_3

    .line 16
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 17
    :cond_2
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<securityAlbumRun> [ERROR] form not right, strItem="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 18
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "asyncLoadVideoForSecureCamera "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/utils/LoadDataUtils$3;->onResult(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onResult(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$3;->this$0:Lcom/transsion/dbdata/utils/LoadDataUtils;

    invoke-static {v0}, Lcom/transsion/dbdata/utils/LoadDataUtils;->b(Lcom/transsion/dbdata/utils/LoadDataUtils;)Lcom/transsion/dbdata/utils/LoadDataUtils$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$3;->this$0:Lcom/transsion/dbdata/utils/LoadDataUtils;

    invoke-static {v0}, Lcom/transsion/dbdata/utils/LoadDataUtils;->b(Lcom/transsion/dbdata/utils/LoadDataUtils;)Lcom/transsion/dbdata/utils/LoadDataUtils$a;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/dbdata/utils/LoadDataUtils$3;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-interface {v0, p1, p0}, Lcom/transsion/dbdata/utils/LoadDataUtils$a;->b(Ljava/util/ArrayList;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    :cond_0
    return-void
.end method
