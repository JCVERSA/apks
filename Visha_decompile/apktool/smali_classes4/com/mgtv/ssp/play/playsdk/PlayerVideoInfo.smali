.class public Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public allDefinitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public curDefinition:I

.field public dInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgtv/ssp/play/playsdk/VDefinitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public isOffLine:Z

.field public isPreview:Z

.field public mDefinitionSizeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mVDefinitionsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgtv/ssp/play/playsdk/VideoDefinitions;",
            ">;"
        }
    .end annotation
.end field

.field public previewDuration:I

.field public videoDuration:I

.field public videoHeight:I

.field public videoWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->videoDuration:I

    .line 4
    iput p2, p0, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->videoHeight:I

    .line 5
    iput p3, p0, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->videoWidth:I

    return-void
.end method


# virtual methods
.method public getAllDefinitions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->allDefinitions:Ljava/util/List;

    return-object p0
.end method

.method public getCurDefinition()I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->curDefinition:I

    return p0
.end method

.method public getPreviewDuration()I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->previewDuration:I

    return p0
.end method

.method public getVideoDefinitionsList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mgtv/ssp/play/playsdk/VideoDefinitions;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->mVDefinitionsList:Ljava/util/List;

    return-object p0
.end method

.method public getVideoDuration()I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->videoDuration:I

    return p0
.end method

.method public getVideoHeight()I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->videoHeight:I

    return p0
.end method

.method public getVideoWidth()I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->videoWidth:I

    return p0
.end method

.method public isOffLine()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->isOffLine:Z

    return p0
.end method

.method public isPreview()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->isPreview:Z

    return p0
.end method

.method public setAllDefinitions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->allDefinitions:Ljava/util/List;

    return-void
.end method

.method public setCurDefinition(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->curDefinition:I

    return-void
.end method

.method public setOffLine(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->isOffLine:Z

    return-void
.end method

.method public setPreview(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->isPreview:Z

    return-void
.end method

.method public setPreviewDuration(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->previewDuration:I

    return-void
.end method

.method public setVideoDuration(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->videoDuration:I

    return-void
.end method

.method public setVideoHeight(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->videoHeight:I

    return-void
.end method

.method public setVideoWidth(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;->videoWidth:I

    return-void
.end method
