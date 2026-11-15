.class public Lcom/transsion/dbdata/utils/LoadDataUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/utils/LoadDataUtils$a;
    }
.end annotation


# static fields
.field public static final c:[I


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/transsion/dbdata/utils/LoadDataUtils$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/utils/LoadDataUtils;->c:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/dbdata/utils/LoadDataUtils;->a:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/dbdata/utils/LoadDataUtils;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/utils/LoadDataUtils;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/dbdata/utils/LoadDataUtils;)Lcom/transsion/dbdata/utils/LoadDataUtils$a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/utils/LoadDataUtils;->b:Lcom/transsion/dbdata/utils/LoadDataUtils$a;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/dbdata/utils/LoadDataUtils;Lcom/transsion/dbdata/beans/media/PlayVideoData;)Ljava/util/ArrayList;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/utils/LoadDataUtils;->n(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/dbdata/utils/LoadDataUtils;Lcom/transsion/dbdata/beans/media/PlayVideoData;)Ljava/util/ArrayList;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/utils/LoadDataUtils;->o(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/transsion/dbdata/utils/LoadDataUtils;Lcom/transsion/dbdata/beans/media/PlayVideoData;)Ljava/util/ArrayList;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/utils/LoadDataUtils;->p(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/transsion/dbdata/utils/LoadDataUtils;Lcom/transsion/dbdata/beans/media/PlayVideoData;)Ljava/util/ArrayList;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/utils/LoadDataUtils;->q(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/transsion/dbdata/utils/LoadDataUtils;Lcom/transsion/dbdata/beans/media/PlayVideoData;)Ljava/util/ArrayList;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/utils/LoadDataUtils;->r(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/transsion/dbdata/utils/LoadDataUtils;Lcom/transsion/dbdata/beans/media/PlayVideoData;)Ljava/util/ArrayList;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/utils/LoadDataUtils;->s(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/transsion/dbdata/utils/LoadDataUtils;Lcom/transsion/dbdata/beans/media/PlayVideoData;)Ljava/util/ArrayList;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/utils/LoadDataUtils;->t(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static m(I)Z
    .locals 3

    sget-object v0, Lcom/transsion/dbdata/utils/LoadDataUtils;->c:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    if-eq p0, v2, :cond_0

    const/4 v2, 0x1

    aget v0, v0, v2

    if-eq p0, v0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method


# virtual methods
.method public j(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V
    .locals 4

    iget v0, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mediaId:I

    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    sget-object v1, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils;->Companion:Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;

    invoke-virtual {v1, p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;->isMiMediaVideo(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->fromInternal:Z

    invoke-static {v0, v1}, Lcom/transsion/dbdata/beans/media/MediaItem;->getUri(IZ)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playUri:Landroid/net/Uri;

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "asyncLoad uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/utils/LoadDataUtils;->b:Lcom/transsion/dbdata/utils/LoadDataUtils$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LoadDataUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playUri:Landroid/net/Uri;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/transsion/dbdata/utils/LoadDataUtils;->m(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/dbdata/utils/LoadDataUtils;->b:Lcom/transsion/dbdata/utils/LoadDataUtils$a;

    if-eqz v1, :cond_1

    iget-object v3, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playUri:Landroid/net/Uri;

    invoke-interface {v1, v3, v2}, Lcom/transsion/dbdata/utils/LoadDataUtils$a;->c(Landroid/net/Uri;Z)V

    const/4 v2, 0x0

    :cond_1
    new-instance v1, Lcom/transsion/dbdata/utils/LoadDataUtils$1;

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/transsion/dbdata/utils/LoadDataUtils$1;-><init>(Lcom/transsion/dbdata/utils/LoadDataUtils;Lcom/transsion/dbdata/beans/media/PlayVideoData;IZ)V

    invoke-static {v1}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public k(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isSecureCamera:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/utils/LoadDataUtils;->l(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isBucketValidate()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/transsion/dbdata/utils/LoadDataUtils$2;

    invoke-direct {v0, p0, p1}, Lcom/transsion/dbdata/utils/LoadDataUtils$2;-><init>(Lcom/transsion/dbdata/utils/LoadDataUtils;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public l(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->secureAlbum:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/dbdata/utils/LoadDataUtils$3;

    invoke-direct {v0, p0, p1}, Lcom/transsion/dbdata/utils/LoadDataUtils$3;-><init>(Lcom/transsion/dbdata/utils/LoadDataUtils;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final n(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p0

    const p1, 0x7fffffff

    invoke-virtual {p0, p1}, Ltpb;->r(I)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public final o(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p0

    const p1, 0x7fffffff

    invoke-virtual {p0, p1}, Ltpb;->U(I)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public final p(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Ljava/util/ArrayList;
    .locals 2

    iget-boolean p0, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isKt()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p0

    const p1, 0x7fffffff

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Ltpb;->O(ZIZ)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_1
    :goto_0
    iget-object p0, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mYoutubeId:Ljava/lang/String;

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, ""

    :goto_1
    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p1

    invoke-virtual {p1, p0}, Ltpb;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public final q(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Ljava/util/ArrayList;
    .locals 4

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v0, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isKt()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->bucketId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p1

    invoke-virtual {p1}, Ltpb;->S()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    iget-wide v1, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->bucketId:J

    invoke-virtual {v0, v1, v2}, Ltpb;->E(J)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltpb;->b0(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_1
    return-object p0
.end method

.method public final r(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p0

    invoke-virtual {p0}, Ltpb;->W()Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public final s(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p0

    const p1, 0x7fffffff

    invoke-virtual {p0, p1}, Ltpb;->e0(I)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public final t(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Ljava/util/ArrayList;
    .locals 2

    iget-boolean p0, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mYoutubeId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ltpb;->z(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/media/MediaBucket;-><init>()V

    iget-wide v0, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->bucketId:J

    iput-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    iget-boolean v0, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isVirtualFolder:Z

    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->isVirtualFolder:Z

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->virtualFolderMatchName:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->virtualFolderMatchName:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->path:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lav3;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentPath:Ljava/lang/String;

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p1

    invoke-virtual {p1, p0}, Ltpb;->i(Lcom/transsion/dbdata/beans/media/MediaBucket;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public u(Lcom/transsion/dbdata/utils/LoadDataUtils$a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/utils/LoadDataUtils;->b:Lcom/transsion/dbdata/utils/LoadDataUtils$a;

    return-void
.end method
