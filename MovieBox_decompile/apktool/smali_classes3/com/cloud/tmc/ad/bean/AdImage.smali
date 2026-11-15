.class public Lcom/cloud/tmc/ad/bean/AdImage;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public adsDTO:Lcom/cloud/tmc/ad/bean/response/AdsDTO;

.field private bgPath:Ljava/lang/String;

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private filePath:Ljava/lang/String;

.field private h:I

.field private imgUrl:Ljava/lang/String;

.field private isCached:Z

.field private mType:I

.field private mime:I

.field private w:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/cloud/tmc/ad/bean/AdImage;->isCached:Z

    const/4 v0, 0x2

    .line 15
    iput v0, p0, Lcom/cloud/tmc/ad/bean/AdImage;->mType:I

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/cloud/tmc/ad/bean/AdImage;->isCached:Z

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/cloud/tmc/ad/bean/AdImage;->mType:I

    .line 4
    iput p1, p0, Lcom/cloud/tmc/ad/bean/AdImage;->mime:I

    .line 5
    iput-object p2, p0, Lcom/cloud/tmc/ad/bean/AdImage;->drawable:Landroid/graphics/drawable/Drawable;

    .line 6
    iput-object p3, p0, Lcom/cloud/tmc/ad/bean/AdImage;->filePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/cloud/tmc/ad/bean/AdImage;->isCached:Z

    const/4 v0, 0x2

    .line 9
    iput v0, p0, Lcom/cloud/tmc/ad/bean/AdImage;->mType:I

    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lcom/cloud/tmc/ad/bean/AdImage;->mime:I

    .line 11
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/AdImage;->drawable:Landroid/graphics/drawable/Drawable;

    .line 12
    iput-object p2, p0, Lcom/cloud/tmc/ad/bean/AdImage;->filePath:Ljava/lang/String;

    return-void
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/AdImage;->drawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    :try_start_0
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 10
    .line 11
    .line 12
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    const-string v2, "ad"

    .line 16
    .line 17
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/utils/TraceLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-object v1
.end method


# virtual methods
.method public attachView(Landroid/widget/ImageView;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/ad/bean/AdImage;->drawable:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :cond_1
    return v0
.end method

.method public getBgPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/AdImage;->bgPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getByteSize()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/ad/bean/AdImage;->getBitmap()Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/AdImage;->drawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/AdImage;->filePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getH()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/ad/bean/AdImage;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/AdImage;->imgUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/ad/bean/AdImage;->mime:I

    .line 2
    .line 3
    return v0
.end method

.method public getW()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/ad/bean/AdImage;->w:I

    .line 2
    .line 3
    return v0
.end method

.method public getmType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/ad/bean/AdImage;->mType:I

    .line 2
    .line 3
    return v0
.end method

.method public isAdImageRecycled()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/ad/bean/AdImage;->getBitmap()Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/cloud/tmc/ad/bean/AdImage;->drawable:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
.end method

.method public isCached()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/ad/bean/AdImage;->isCached:Z

    .line 2
    .line 3
    return v0
.end method

.method public setBgPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/AdImage;->bgPath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCached(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/ad/bean/AdImage;->isCached:Z

    .line 2
    .line 3
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/AdImage;->drawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/AdImage;->filePath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setH(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/ad/bean/AdImage;->h:I

    .line 2
    .line 3
    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/AdImage;->imgUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/ad/bean/AdImage;->mime:I

    .line 2
    .line 3
    return-void
.end method

.method public setW(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/ad/bean/AdImage;->w:I

    .line 2
    .line 3
    return-void
.end method

.method public setmType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/ad/bean/AdImage;->mType:I

    .line 2
    .line 3
    return-void
.end method
