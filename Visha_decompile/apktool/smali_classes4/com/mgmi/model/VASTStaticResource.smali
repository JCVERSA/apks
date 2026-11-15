.class public Lcom/mgmi/model/VASTStaticResource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mgmi/model/VASTStaticResource;",
            ">;"
        }
    .end annotation
.end field

.field private static final RESOURCE_CREATIVE_TYPE_FILE:I = 0x67

.field private static final RESOURCE_CREATIVE_TYPE_FILE_ERROR:I = -0xc8

.field public static final RESOURCE_CREATIVE_TYPE_INVALID:I = -0x64

.field private static final RESOURCE_CREATIVE_TYPE_PIC:I = 0x65

.field private static final RESOURCE_CREATIVE_TYPE_VIDEO:I = 0x66

.field private static final RESOURCE_CREATIVE_TYPE_ZIP:I = 0x64


# instance fields
.field private adStrict:I

.field private adWratio:F

.field private cid:Ljava/lang/String;

.field private height:I

.field private md5:Ljava/lang/String;

.field private resourceType:I

.field private staticResourceBinder:Lcom/mgmi/model/q;

.field private style:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private videoClick:Lcom/mgmi/model/Clicks;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mgmi/model/VASTStaticResource$1;

    invoke-direct {v0}, Lcom/mgmi/model/VASTStaticResource$1;-><init>()V

    sput-object v0, Lcom/mgmi/model/VASTStaticResource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgmi/model/VASTStaticResource;->adStrict:I

    const/16 v0, -0x64

    iput v0, p0, Lcom/mgmi/model/VASTStaticResource;->resourceType:I

    return-void
.end method

.method public static synthetic access$002(Lcom/mgmi/model/VASTStaticResource;Lcom/mgmi/model/Clicks;)Lcom/mgmi/model/Clicks;
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTStaticResource;->videoClick:Lcom/mgmi/model/Clicks;

    return-object p1
.end method

.method private getResourceType()V
    .locals 6

    iget-object v0, p0, Lcom/mgmi/model/VASTStaticResource;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/mgmi/model/VASTStaticResource;->url:Ljava/lang/String;

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x64

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/mgmi/model/VASTStaticResource;->resourceType:I

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mgmi/model/VASTStaticResource;->url:Ljava/lang/String;

    invoke-static {v0}, Lg4d;->o(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0x65

    if-eqz v0, :cond_1

    iput v2, p0, Lcom/mgmi/model/VASTStaticResource;->resourceType:I

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mgmi/model/VASTStaticResource;->url:Ljava/lang/String;

    invoke-static {v0}, Lg4d;->p(Ljava/lang/String;)Z

    move-result v0

    const/16 v3, 0x66

    if-eqz v0, :cond_2

    iput v3, p0, Lcom/mgmi/model/VASTStaticResource;->resourceType:I

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/mgmi/model/VASTStaticResource;->url:Ljava/lang/String;

    const-string v4, ".json"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v4, 0x67

    if-eqz v0, :cond_3

    iput v4, p0, Lcom/mgmi/model/VASTStaticResource;->resourceType:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/mgmi/model/VASTStaticResource;->type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/mgmi/model/VASTStaticResource;->type:Ljava/lang/String;

    const-string v5, "file/h5_zip"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput v1, p0, Lcom/mgmi/model/VASTStaticResource;->resourceType:I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/mgmi/model/VASTStaticResource;->type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/mgmi/model/VASTStaticResource;->type:Ljava/lang/String;

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput v2, p0, Lcom/mgmi/model/VASTStaticResource;->resourceType:I

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/mgmi/model/VASTStaticResource;->type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/mgmi/model/VASTStaticResource;->type:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput v3, p0, Lcom/mgmi/model/VASTStaticResource;->resourceType:I

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/mgmi/model/VASTStaticResource;->type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/mgmi/model/VASTStaticResource;->type:Ljava/lang/String;

    const-string v1, "ai_implant"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/mgmi/model/VASTStaticResource;->type:Ljava/lang/String;

    const-string v1, "ai_follow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iput v4, p0, Lcom/mgmi/model/VASTStaticResource;->resourceType:I

    goto :goto_0

    :cond_8
    const/16 v0, -0xc8

    iput v0, p0, Lcom/mgmi/model/VASTStaticResource;->resourceType:I

    :cond_9
    :goto_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAdStrict()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTStaticResource;->adStrict:I

    return p0
.end method

.method public getAdWratio()F
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTStaticResource;->adWratio:F

    return p0
.end method

.method public getCid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTStaticResource;->cid:Ljava/lang/String;

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTStaticResource;->height:I

    return p0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTStaticResource;->md5:Ljava/lang/String;

    return-object p0
.end method

.method public getStaticResourceBinder()Lcom/mgmi/model/q;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTStaticResource;->staticResourceBinder:Lcom/mgmi/model/q;

    return-object p0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTStaticResource;->style:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTStaticResource;->type:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTStaticResource;->url:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoClick()Lcom/mgmi/model/Clicks;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTStaticResource;->videoClick:Lcom/mgmi/model/Clicks;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTStaticResource;->width:I

    return p0
.end method

.method public isFileResource()Z
    .locals 2

    iget v0, p0, Lcom/mgmi/model/VASTStaticResource;->resourceType:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/mgmi/model/VASTStaticResource;->getResourceType()V

    :cond_0
    iget p0, p0, Lcom/mgmi/model/VASTStaticResource;->resourceType:I

    const/16 v0, 0x67

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isPictureResource()Z
    .locals 2

    iget v0, p0, Lcom/mgmi/model/VASTStaticResource;->resourceType:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/mgmi/model/VASTStaticResource;->getResourceType()V

    :cond_0
    iget p0, p0, Lcom/mgmi/model/VASTStaticResource;->resourceType:I

    const/16 v0, 0x65

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isResourceValid()Z
    .locals 2

    iget v0, p0, Lcom/mgmi/model/VASTStaticResource;->resourceType:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/mgmi/model/VASTStaticResource;->getResourceType()V

    :cond_0
    iget p0, p0, Lcom/mgmi/model/VASTStaticResource;->resourceType:I

    const/16 v0, -0xc8

    if-ne p0, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public isVideoResource()Z
    .locals 2

    iget v0, p0, Lcom/mgmi/model/VASTStaticResource;->resourceType:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/mgmi/model/VASTStaticResource;->getResourceType()V

    :cond_0
    iget p0, p0, Lcom/mgmi/model/VASTStaticResource;->resourceType:I

    const/16 v0, 0x66

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isZipResource()Z
    .locals 2

    iget v0, p0, Lcom/mgmi/model/VASTStaticResource;->resourceType:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/mgmi/model/VASTStaticResource;->getResourceType()V

    :cond_0
    iget p0, p0, Lcom/mgmi/model/VASTStaticResource;->resourceType:I

    const/16 v0, 0x64

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public setAdStrict(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTStaticResource;->adStrict:I

    return-void
.end method

.method public setAdWratio(F)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTStaticResource;->adWratio:F

    return-void
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTStaticResource;->cid:Ljava/lang/String;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTStaticResource;->height:I

    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTStaticResource;->md5:Ljava/lang/String;

    return-void
.end method

.method public setStaticResourceBinder(Lcom/mgmi/model/q;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTStaticResource;->staticResourceBinder:Lcom/mgmi/model/q;

    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTStaticResource;->style:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTStaticResource;->type:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTStaticResource;->url:Ljava/lang/String;

    return-void
.end method

.method public setVideoClick(Lcom/mgmi/model/Clicks;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTStaticResource;->videoClick:Lcom/mgmi/model/Clicks;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTStaticResource;->width:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTStaticResource;->videoClick:Lcom/mgmi/model/Clicks;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
