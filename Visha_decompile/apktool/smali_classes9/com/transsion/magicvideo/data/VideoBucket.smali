.class public Lcom/transsion/magicvideo/data/VideoBucket;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/magicvideo/data/VideoBucket;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cnt:I

.field private folder_name:Ljava/lang/String;

.field private nplaylist_name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/magicvideo/data/VideoBucket$1;

    invoke-direct {v0}, Lcom/transsion/magicvideo/data/VideoBucket$1;-><init>()V

    sput-object v0, Lcom/transsion/magicvideo/data/VideoBucket;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/data/VideoBucket;->folder_name:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/data/VideoBucket;->nplaylist_name:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/transsion/magicvideo/data/VideoBucket;->cnt:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCnt()I
    .locals 0

    iget p0, p0, Lcom/transsion/magicvideo/data/VideoBucket;->cnt:I

    return p0
.end method

.method public getFolder_name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/data/VideoBucket;->folder_name:Ljava/lang/String;

    return-object p0
.end method

.method public getNplaylist_name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/data/VideoBucket;->nplaylist_name:Ljava/lang/String;

    return-object p0
.end method

.method public setCnt(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/magicvideo/data/VideoBucket;->cnt:I

    return-void
.end method

.method public setFolder_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/data/VideoBucket;->folder_name:Ljava/lang/String;

    return-void
.end method

.method public setNplaylist_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/data/VideoBucket;->nplaylist_name:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/transsion/magicvideo/data/VideoBucket;->folder_name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/magicvideo/data/VideoBucket;->nplaylist_name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p0, p0, Lcom/transsion/magicvideo/data/VideoBucket;->cnt:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
