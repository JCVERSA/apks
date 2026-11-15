.class public Lcom/transsion/magicvideo/data/DownloadMediaItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;
    }
.end annotation


# instance fields
.field private imgUrl:Ljava/lang/String;

.field private mHeight:I

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;

.field private mWidth:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/data/DownloadMediaItem;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/magicvideo/data/DownloadMediaItem;->imgUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/magicvideo/data/DownloadMediaItem;->mList:Ljava/util/List;

    invoke-direct {p0, p4}, Lcom/transsion/magicvideo/data/DownloadMediaItem;->resetFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/magicvideo/data/DownloadMediaItem;->mTitle:Ljava/lang/String;

    iput p5, p0, Lcom/transsion/magicvideo/data/DownloadMediaItem;->mWidth:I

    iput p6, p0, Lcom/transsion/magicvideo/data/DownloadMediaItem;->mHeight:I

    return-void
.end method

.method private resetFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/data/DownloadMediaItem;->url:Ljava/lang/String;

    invoke-static {p1, p0}, Lb23;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lav3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/transsion/magicvideo/data/DownloadMediaItem;->mHeight:I

    return p0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/data/DownloadMediaItem;->imgUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/magicvideo/data/DownloadMediaItem;->mList:Ljava/util/List;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/data/DownloadMediaItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/data/DownloadMediaItem;->url:Ljava/lang/String;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/transsion/magicvideo/data/DownloadMediaItem;->mWidth:I

    return p0
.end method

.method public getmList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/magicvideo/data/DownloadMediaItem;->mList:Ljava/util/List;

    return-object p0
.end method

.method public getmTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/data/DownloadMediaItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/magicvideo/data/DownloadMediaItem;->mHeight:I

    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/data/DownloadMediaItem;->imgUrl:Ljava/lang/String;

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/magicvideo/data/DownloadMediaItem;->mList:Ljava/util/List;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/data/DownloadMediaItem;->url:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/magicvideo/data/DownloadMediaItem;->mWidth:I

    return-void
.end method

.method public setmList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/magicvideo/data/DownloadMediaItem;->mList:Ljava/util/List;

    return-void
.end method

.method public setmTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/data/DownloadMediaItem;->mTitle:Ljava/lang/String;

    return-void
.end method
