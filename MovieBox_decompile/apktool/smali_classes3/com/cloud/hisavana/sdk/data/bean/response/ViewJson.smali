.class public Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$DialogJson;,
        Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dialogJson:Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$DialogJson;

.field private dialogType:Ljava/lang/Integer;

.field private formPath:Ljava/lang/String;

.field private offline:Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->CREATOR:Landroid/os/Parcelable$Creator;

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->dialogType:Ljava/lang/Integer;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->dialogType:Ljava/lang/Integer;

    .line 6
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->formPath:Ljava/lang/String;

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

.method public getDialogJson()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$DialogJson;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->dialogJson:Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$DialogJson;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDialogType()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->dialogType:Ljava/lang/Integer;

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

.method public getFormPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->formPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOffline()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->offline:Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;

    .line 2
    .line 3
    return-object v0
.end method

.method public setDialogJson(Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$DialogJson;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->dialogJson:Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$DialogJson;

    .line 2
    .line 3
    return-void
.end method

.method public setDialogType(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->dialogType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setFormPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->formPath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setOffline(Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->offline:Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;

    .line 2
    .line 3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->dialogType:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p2, 0x1

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->dialogType:Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    .line 22
    .line 23
    :goto_0
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->formPath:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
