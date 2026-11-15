.class public Lcom/transsion/visha/ai/AudioData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/visha/ai/AudioData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public data:Lcom/transsion/dbdata/beans/media/PlayAudioData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/visha/ai/AudioData$a;

    invoke-direct {v0}, Lcom/transsion/visha/ai/AudioData$a;-><init>()V

    sput-object v0, Lcom/transsion/visha/ai/AudioData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-class v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;

    iput-object p1, p0, Lcom/transsion/visha/ai/AudioData;->data:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/visha/ai/AudioData;->data:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getData()Lcom/transsion/dbdata/beans/media/PlayAudioData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/visha/ai/AudioData;->data:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/visha/ai/AudioData;->data:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
