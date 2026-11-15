.class public Lcom/mgtv/ssp/bean/VideoInfoBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/json/JsonInterface;


# instance fields
.field private alreadyExposed:Z

.field private clipName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clipName"
    .end annotation
.end field

.field private duration:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration"
    .end annotation
.end field

.field private fdParams:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fdParams"
    .end annotation
.end field

.field private hasClip:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hasClip"
    .end annotation
.end field

.field private imgX:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imgX"
    .end annotation
.end field

.field private imgY:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imgY"
    .end annotation
.end field

.field private intactImgX:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "intactImgX"
    .end annotation
.end field

.field private intactImgY:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "intactImgY"
    .end annotation
.end field

.field private intactSchema:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "intactSchema"
    .end annotation
.end field

.field private intactTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "intactTitle"
    .end annotation
.end field

.field private intactVcode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "intactVcode"
    .end annotation
.end field

.field private isPay:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isPay"
    .end annotation
.end field

.field private mgDownloadH5:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mgDownloadH5"
    .end annotation
.end field

.field private previewVcode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "previewVcode"
    .end annotation
.end field

.field private releaseTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "releaseTime"
    .end annotation
.end field

.field private reportH5:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reportH5"
    .end annotation
.end field

.field private schemaHint:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "schemaHint"
    .end annotation
.end field

.field private shortType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shortType"
    .end annotation
.end field

.field private subTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subTitle"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field private ugcName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ugcName"
    .end annotation
.end field

.field private vcode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vcode"
    .end annotation
.end field

.field private year:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "year"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->alreadyExposed:Z

    return-void
.end method


# virtual methods
.method public getClipName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->clipName:Ljava/lang/String;

    return-object p0
.end method

.method public getDuration()I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->duration:I

    return p0
.end method

.method public getFdParams()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->fdParams:Ljava/lang/String;

    return-object p0
.end method

.method public getHasClip()I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->hasClip:I

    return p0
.end method

.method public getImgX()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->imgX:Ljava/lang/String;

    return-object p0
.end method

.method public getImgY()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->imgY:Ljava/lang/String;

    return-object p0
.end method

.method public getIntactImgX()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->intactImgX:Ljava/lang/String;

    return-object p0
.end method

.method public getIntactImgY()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->intactImgY:Ljava/lang/String;

    return-object p0
.end method

.method public getIntactSchema()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->intactSchema:Ljava/lang/String;

    const-string v0, "MG^UNION!2022@"

    invoke-static {p0, v0}, Lcom/mgtv/ssp/utils/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIntactSchemaV2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->intactSchema:Ljava/lang/String;

    return-object p0
.end method

.method public getIntactTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->intactTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getIntactVcode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->intactVcode:Ljava/lang/String;

    return-object p0
.end method

.method public getIsPay()I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->isPay:I

    return p0
.end method

.method public getMgDownloadH5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->mgDownloadH5:Ljava/lang/String;

    return-object p0
.end method

.method public getPreviewVcode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->previewVcode:Ljava/lang/String;

    return-object p0
.end method

.method public getReleaseTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->releaseTime:Ljava/lang/String;

    return-object p0
.end method

.method public getReportH5()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->reportH5:Ljava/lang/String;

    const-string v0, "MG^UNION!2022@"

    invoke-static {p0, v0}, Lcom/mgtv/ssp/utils/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "__ABROAD__"

    invoke-static {}, Lcom/hunantv/imgo/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSchemaHint()I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->schemaHint:I

    return p0
.end method

.method public getShortType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->shortType:Ljava/lang/String;

    return-object p0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->subTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getUgcName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->ugcName:Ljava/lang/String;

    return-object p0
.end method

.method public getVcode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->vcode:Ljava/lang/String;

    return-object p0
.end method

.method public getYear()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->year:Ljava/lang/String;

    return-object p0
.end method

.method public hasExposed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->alreadyExposed:Z

    return p0
.end method

.method public setClipName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->clipName:Ljava/lang/String;

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->duration:I

    return-void
.end method

.method public setExposed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->alreadyExposed:Z

    return-void
.end method

.method public setFdParams(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->fdParams:Ljava/lang/String;

    return-void
.end method

.method public setHasClip(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->hasClip:I

    return-void
.end method

.method public setImgX(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->imgX:Ljava/lang/String;

    return-void
.end method

.method public setImgY(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->imgY:Ljava/lang/String;

    return-void
.end method

.method public setIntactImgX(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->intactImgX:Ljava/lang/String;

    return-void
.end method

.method public setIntactImgY(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->intactImgY:Ljava/lang/String;

    return-void
.end method

.method public setIntactSchema(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->intactSchema:Ljava/lang/String;

    return-void
.end method

.method public setIntactTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->intactTitle:Ljava/lang/String;

    return-void
.end method

.method public setIntactVcode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->intactVcode:Ljava/lang/String;

    return-void
.end method

.method public setIsPay(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->isPay:I

    return-void
.end method

.method public setMgDownloadH5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->mgDownloadH5:Ljava/lang/String;

    return-void
.end method

.method public setPreviewVcode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->previewVcode:Ljava/lang/String;

    return-void
.end method

.method public setReleaseTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->releaseTime:Ljava/lang/String;

    return-void
.end method

.method public setReportH5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->reportH5:Ljava/lang/String;

    return-void
.end method

.method public setSchemaHint(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->schemaHint:I

    return-void
.end method

.method public setShortType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->shortType:Ljava/lang/String;

    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->subTitle:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setUgcName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->ugcName:Ljava/lang/String;

    return-void
.end method

.method public setVcode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->vcode:Ljava/lang/String;

    return-void
.end method

.method public setYear(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/VideoInfoBean;->year:Ljava/lang/String;

    return-void
.end method
