.class public final Lcom/snaptube/premium/files/pojo/DownloadData;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snaptube/premium/files/pojo/DownloadData$a;,
        Lcom/snaptube/premium/files/pojo/DownloadData$ViewType;
    }
.end annotation


# static fields
.field public static final c:Lcom/snaptube/premium/files/pojo/DownloadData$a;


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/snaptube/premium/files/pojo/DownloadData$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/snaptube/premium/files/pojo/DownloadData$a;-><init>(Lo/pg1;)V

    sput-object v0, Lcom/snaptube/premium/files/pojo/DownloadData;->c:Lcom/snaptube/premium/files/pojo/DownloadData$a;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/snaptube/premium/files/pojo/DownloadData;->a:I

    iput-object p2, p0, Lcom/snaptube/premium/files/pojo/DownloadData;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(J)Z
    .locals 5

    iget-object v0, p0, Lcom/snaptube/premium/files/pojo/DownloadData;->b:Ljava/lang/Object;

    instance-of v1, v0, Lcom/phoenix/download/card/model/TaskCardModel;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-string v1, "null cannot be cast to non-null type com.phoenix.download.card.model.TaskCardModel"

    invoke-static {v0, v1}, Lo/or3;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/phoenix/download/card/model/TaskCardModel;

    invoke-interface {v0}, Lcom/phoenix/download/card/model/TaskCardModel;->m()Lo/e18;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lo/e18;->b()Lcom/snaptube/taskManager/datasets/TaskInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lo/e18;->b()Lcom/snaptube/taskManager/datasets/TaskInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    cmp-long v4, v0, p1

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    instance-of v1, v0, Lcom/snaptube/premium/model/VideoMyThingsCardModel;

    if-eqz v1, :cond_3

    const-string v1, "null cannot be cast to non-null type com.snaptube.premium.model.VideoMyThingsCardModel"

    invoke-static {v0, v1}, Lo/or3;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/snaptube/premium/model/VideoMyThingsCardModel;

    invoke-interface {v0}, Lcom/snaptube/premium/model/VideoMyThingsCardModel;->n()Lo/n74;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lcom/snaptube/premium/model/VideoMyThingsCardModel;->n()Lo/n74;

    move-result-object v1

    invoke-interface {v1}, Lo/n74;->k()Lcom/snaptube/premium/model/LocalVideoAlbumInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lcom/snaptube/premium/model/VideoMyThingsCardModel;->n()Lo/n74;

    move-result-object v0

    invoke-interface {v0}, Lo/n74;->k()Lcom/snaptube/premium/model/LocalVideoAlbumInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/premium/model/LocalVideoAlbumInfo;->getId()J

    move-result-wide v0

    cmp-long v4, v0, p1

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_3
    return v3
.end method

.method public final b(Lcom/snaptube/premium/files/pojo/DownloadData;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lcom/snaptube/premium/files/pojo/DownloadData;->a:I

    iget v2, p1, Lcom/snaptube/premium/files/pojo/DownloadData;->a:I

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/snaptube/premium/files/pojo/DownloadData;->b:Ljava/lang/Object;

    instance-of v2, v1, Lcom/phoenix/download/card/model/TaskCardModel;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/snaptube/premium/files/pojo/DownloadData;->b:Ljava/lang/Object;

    instance-of v2, v2, Lcom/phoenix/download/card/model/TaskCardModel;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/snaptube/premium/files/pojo/DownloadData;->f()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/snaptube/premium/files/pojo/DownloadData;->f()J

    move-result-wide v6

    cmp-long p1, v1, v4

    if-eqz p1, :cond_2

    cmp-long p1, v1, v6

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    :cond_3
    iget-object v2, p1, Lcom/snaptube/premium/files/pojo/DownloadData;->b:Ljava/lang/Object;

    instance-of v2, v2, Lcom/snaptube/premium/model/VideoMyThingsCardModel;

    if-eqz v2, :cond_4

    instance-of v1, v1, Lcom/snaptube/premium/model/VideoMyThingsCardModel;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/snaptube/premium/files/pojo/DownloadData;->h()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/snaptube/premium/files/pojo/DownloadData;->h()J

    move-result-wide v6

    cmp-long p1, v1, v4

    if-eqz p1, :cond_4

    cmp-long p1, v1, v6

    if-nez p1, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/snaptube/premium/files/pojo/DownloadData;->b:Ljava/lang/Object;

    instance-of v1, v0, Lcom/snaptube/premium/model/VideoMyThingsCardModel;

    if-eqz v1, :cond_0

    const-string v1, "null cannot be cast to non-null type com.snaptube.premium.model.VideoMyThingsCardModel"

    invoke-static {v0, v1}, Lo/or3;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/snaptube/premium/model/VideoMyThingsCardModel;

    invoke-interface {v0}, Lcom/snaptube/premium/model/VideoMyThingsCardModel;->n()Lo/n74;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lo/n74;->k()Lcom/snaptube/premium/model/LocalVideoAlbumInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lo/n74;->k()Lcom/snaptube/premium/model/LocalVideoAlbumInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/premium/model/LocalVideoAlbumInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_0
    instance-of v1, v0, Lcom/phoenix/download/card/model/TaskCardModel;

    if-eqz v1, :cond_1

    const-string v1, "null cannot be cast to non-null type com.phoenix.download.card.model.TaskCardModel"

    invoke-static {v0, v1}, Lo/or3;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/phoenix/download/card/model/TaskCardModel;

    invoke-interface {v0}, Lcom/phoenix/download/card/model/TaskCardModel;->m()Lo/e18;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lo/e18;->b()Lcom/snaptube/taskManager/datasets/TaskInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lo/e18;->b()Lcom/snaptube/taskManager/datasets/TaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final d()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/files/pojo/DownloadData;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/files/pojo/DownloadData;->b:Ljava/lang/Object;

    instance-of v1, v0, Lcom/snaptube/premium/model/VideoMyThingsCardModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "null cannot be cast to non-null type com.snaptube.premium.model.VideoMyThingsCardModel"

    invoke-static {v0, v1}, Lo/or3;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/snaptube/premium/model/VideoMyThingsCardModel;

    invoke-interface {v0}, Lcom/snaptube/premium/model/VideoMyThingsCardModel;->n()Lo/n74;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lo/n74;->k()Lcom/snaptube/premium/model/LocalVideoAlbumInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/snaptube/premium/model/LocalVideoAlbumInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/phoenix/download/card/model/TaskCardModel;

    if-eqz v1, :cond_1

    const-string v1, "null cannot be cast to non-null type com.phoenix.download.card.model.TaskCardModel"

    invoke-static {v0, v1}, Lo/or3;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/phoenix/download/card/model/TaskCardModel;

    invoke-interface {v0}, Lcom/phoenix/download/card/model/TaskCardModel;->m()Lo/e18;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lo/e18;->b()Lcom/snaptube/taskManager/datasets/TaskInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_0
    return-object v2
.end method

.method public final f()J
    .locals 4

    iget-object v0, p0, Lcom/snaptube/premium/files/pojo/DownloadData;->b:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    instance-of v3, v0, Lcom/phoenix/download/card/model/TaskCardModel;

    if-eqz v3, :cond_1

    const-string v3, "null cannot be cast to non-null type com.phoenix.download.card.model.TaskCardModel"

    invoke-static {v0, v3}, Lo/or3;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/phoenix/download/card/model/TaskCardModel;

    invoke-interface {v0}, Lcom/phoenix/download/card/model/TaskCardModel;->m()Lo/e18;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/e18;->b()Lcom/snaptube/taskManager/datasets/TaskInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    :cond_0
    return-wide v1

    :cond_1
    instance-of v3, v0, Lcom/snaptube/premium/model/VideoMyThingsCardModel;

    if-eqz v3, :cond_2

    const-string v3, "null cannot be cast to non-null type com.snaptube.premium.model.VideoMyThingsCardModel"

    invoke-static {v0, v3}, Lo/or3;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/snaptube/premium/model/VideoMyThingsCardModel;

    invoke-interface {v0}, Lcom/snaptube/premium/model/VideoMyThingsCardModel;->n()Lo/n74;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lo/n74;->k()Lcom/snaptube/premium/model/LocalVideoAlbumInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/snaptube/premium/model/LocalVideoAlbumInfo;->getId()J

    move-result-wide v1

    :cond_2
    return-wide v1
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/snaptube/premium/files/pojo/DownloadData;->a:I

    return v0
.end method

.method public getItemType()I
    .locals 1

    iget v0, p0, Lcom/snaptube/premium/files/pojo/DownloadData;->a:I

    return v0
.end method

.method public final h()J
    .locals 2

    iget-object v0, p0, Lcom/snaptube/premium/files/pojo/DownloadData;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/snaptube/premium/model/VideoMyThingsCardModel;

    if-eqz v1, :cond_0

    const-string v1, "null cannot be cast to non-null type com.snaptube.premium.model.VideoMyThingsCardModel"

    invoke-static {v0, v1}, Lo/or3;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/snaptube/premium/model/VideoMyThingsCardModel;

    invoke-interface {v0}, Lcom/snaptube/premium/model/VideoMyThingsCardModel;->getVideoId()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final i()Z
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/files/pojo/DownloadData;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/snaptube/premium/model/VideoMyThingsCardModel;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/snaptube/premium/model/VideoMyThingsCardModel;

    invoke-interface {v0}, Lcom/snaptube/premium/model/VideoMyThingsCardModel;->v()Lcom/phoenix/card/models/CardViewModel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/phoenix/card/models/CardViewModel;->getMediaType()Lcom/phoenix/card/models/CardViewModel$MediaType;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/phoenix/card/models/CardViewModel$MediaType;->AUDIO:Lcom/phoenix/card/models/CardViewModel$MediaType;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/phoenix/card/models/CardViewModel$MediaType;->AUDIO_WITH_META:Lcom/phoenix/card/models/CardViewModel$MediaType;

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final j()Z
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/files/pojo/DownloadData;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/snaptube/premium/model/VideoMyThingsCardModel;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/snaptube/premium/model/VideoMyThingsCardModel;

    invoke-interface {v0}, Lcom/snaptube/premium/model/VideoMyThingsCardModel;->v()Lcom/phoenix/card/models/CardViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/phoenix/card/models/CardViewModel;->getMediaType()Lcom/phoenix/card/models/CardViewModel$MediaType;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/phoenix/card/models/CardViewModel$MediaType;->IMAGE:Lcom/phoenix/card/models/CardViewModel$MediaType;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final k()Z
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/files/pojo/DownloadData;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/snaptube/premium/model/VideoMyThingsCardModel;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/snaptube/premium/model/VideoMyThingsCardModel;

    invoke-interface {v0}, Lcom/snaptube/premium/model/VideoMyThingsCardModel;->v()Lcom/phoenix/card/models/CardViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/phoenix/card/models/CardViewModel;->getMediaType()Lcom/phoenix/card/models/CardViewModel$MediaType;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/phoenix/card/models/CardViewModel$MediaType;->VIDEO:Lcom/phoenix/card/models/CardViewModel$MediaType;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final l(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/snaptube/premium/files/pojo/DownloadData;->b:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/snaptube/premium/files/pojo/DownloadData;->a:I

    iget-object v1, p0, Lcom/snaptube/premium/files/pojo/DownloadData;->b:Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", data:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
