.class public Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$TitleDTO;,
        Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$DescriptDTO;,
        Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$ButtonDTO;,
        Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$LogoDTO;,
        Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private button:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$ButtonDTO;

.field private descript:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$DescriptDTO;

.field private logo:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$LogoDTO;

.field private mainImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;",
            ">;"
        }
    .end annotation
.end field

.field private rating:Ljava/lang/Integer;

.field private title:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$TitleDTO;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->version:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->rating:Ljava/lang/Integer;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->rating:Ljava/lang/Integer;

    .line 7
    :goto_0
    const-class v0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$TitleDTO;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$TitleDTO;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->title:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$TitleDTO;

    .line 8
    const-class v0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$DescriptDTO;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$DescriptDTO;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->descript:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$DescriptDTO;

    .line 9
    const-class v0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$ButtonDTO;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$ButtonDTO;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->button:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$ButtonDTO;

    .line 10
    const-class v0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$LogoDTO;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$LogoDTO;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->logo:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$LogoDTO;

    .line 11
    sget-object v0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->mainImages:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public getButton()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$ButtonDTO;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->button:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$ButtonDTO;

    .line 2
    .line 3
    return-object v0
.end method

.method public getButtonTxt(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p1, v0, :cond_2

    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->button:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$ButtonDTO;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const-string p1, ""

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$ButtonDTO;->getText()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :goto_0
    return-object p1

    .line 19
    :cond_1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    sget v0, Lcom/cloud/hisavana/sdk/R$string;->install:I

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :cond_2
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    sget v0, Lcom/cloud/hisavana/sdk/R$string;->open:I

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1
.end method

.method public getDescriptionTxt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->descript:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$DescriptDTO;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$DescriptDTO;->getText()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    return-object v0
.end method

.method public getLogo()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$LogoDTO;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->logo:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$LogoDTO;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLogoUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->logo:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$LogoDTO;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$LogoDTO;->getUrl()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    return-object v0
.end method

.method public getMainImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->mainImages:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRating()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->rating:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getTitleTxt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->title:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$TitleDTO;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$TitleDTO;->getText()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->version:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public setButton(Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$ButtonDTO;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->button:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$ButtonDTO;

    .line 2
    .line 3
    return-void
.end method

.method public setDescript(Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$DescriptDTO;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->descript:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$DescriptDTO;

    .line 2
    .line 3
    return-void
.end method

.method public setLogo(Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$LogoDTO;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->logo:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$LogoDTO;

    .line 2
    .line 3
    return-void
.end method

.method public setMainImages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->mainImages:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setRating(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->rating:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setTitle(Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$TitleDTO;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->title:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$TitleDTO;

    .line 2
    .line 3
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->version:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "NativeBean{version=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->version:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x27

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ", rating="

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->rating:Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ", title="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->title:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$TitleDTO;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ", descript="

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->descript:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$DescriptDTO;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, ", button="

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->button:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$ButtonDTO;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, ", logo="

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->logo:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$LogoDTO;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, ", mainImages="

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->mainImages:Ljava/util/List;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const/16 v1, 0x7d

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->version:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->rating:Ljava/lang/Integer;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->rating:Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->title:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$TitleDTO;

    .line 29
    .line 30
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->descript:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$DescriptDTO;

    .line 34
    .line 35
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->button:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$ButtonDTO;

    .line 39
    .line 40
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->logo:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$LogoDTO;

    .line 44
    .line 45
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 46
    .line 47
    .line 48
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->mainImages:Ljava/util/List;

    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method
