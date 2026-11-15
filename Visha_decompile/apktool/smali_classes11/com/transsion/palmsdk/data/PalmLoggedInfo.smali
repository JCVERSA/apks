.class public Lcom/transsion/palmsdk/data/PalmLoggedInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/palmsdk/data/PalmLoggedInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private avatarUrl:Ljava/lang/String;

.field private loggedId:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private targetApp:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/palmsdk/data/PalmLoggedInfo$1;

    invoke-direct {v0}, Lcom/transsion/palmsdk/data/PalmLoggedInfo$1;-><init>()V

    sput-object v0, Lcom/transsion/palmsdk/data/PalmLoggedInfo;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-object v0, p0, Lcom/transsion/palmsdk/data/PalmLoggedInfo;->nickName:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/palmsdk/data/PalmLoggedInfo;->userName:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/palmsdk/data/PalmLoggedInfo;->avatarUrl:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/palmsdk/data/PalmLoggedInfo;->loggedId:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/palmsdk/data/PalmLoggedInfo;->targetApp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/data/PalmLoggedInfo;->avatarUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getLoggedId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/data/PalmLoggedInfo;->loggedId:Ljava/lang/String;

    return-object p0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/data/PalmLoggedInfo;->nickName:Ljava/lang/String;

    return-object p0
.end method

.method public getTargetApp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/data/PalmLoggedInfo;->targetApp:Ljava/lang/String;

    return-object p0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/data/PalmLoggedInfo;->userName:Ljava/lang/String;

    return-object p0
.end method

.method public isLogged()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/data/PalmLoggedInfo;->loggedId:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/palmsdk/data/PalmLoggedInfo;->avatarUrl:Ljava/lang/String;

    return-void
.end method

.method public setLoggedId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/palmsdk/data/PalmLoggedInfo;->loggedId:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/palmsdk/data/PalmLoggedInfo;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setTargetApp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/palmsdk/data/PalmLoggedInfo;->targetApp:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/palmsdk/data/PalmLoggedInfo;->userName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/transsion/palmsdk/data/PalmLoggedInfo;->nickName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/palmsdk/data/PalmLoggedInfo;->userName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/palmsdk/data/PalmLoggedInfo;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/palmsdk/data/PalmLoggedInfo;->loggedId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/palmsdk/data/PalmLoggedInfo;->targetApp:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
