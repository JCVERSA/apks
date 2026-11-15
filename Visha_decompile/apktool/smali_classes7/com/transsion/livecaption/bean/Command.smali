.class public Lcom/transsion/livecaption/bean/Command;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/livecaption/bean/Command;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field code:I

.field data:Ljava/lang/String;

.field type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/livecaption/bean/Command$2;

    invoke-direct {v0}, Lcom/transsion/livecaption/bean/Command$2;-><init>()V

    sput-object v0, Lcom/transsion/livecaption/bean/Command;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/livecaption/bean/Command;->data:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/livecaption/bean/Command;->data:Ljava/lang/String;

    .line 5
    iput p1, p0, Lcom/transsion/livecaption/bean/Command;->type:I

    .line 6
    iput p2, p0, Lcom/transsion/livecaption/bean/Command;->code:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/transsion/livecaption/bean/Command;->type:I

    .line 9
    iput p2, p0, Lcom/transsion/livecaption/bean/Command;->code:I

    .line 10
    iput-object p3, p0, Lcom/transsion/livecaption/bean/Command;->data:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/livecaption/bean/Command;->data:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/livecaption/bean/Command;->type:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/livecaption/bean/Command;->code:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/livecaption/bean/Command;->data:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public get(Ljava/lang/String;)V
    .locals 0

    new-instance p1, Lcom/transsion/livecaption/bean/Command$1;

    invoke-direct {p1, p0}, Lcom/transsion/livecaption/bean/Command$1;-><init>(Lcom/transsion/livecaption/bean/Command;)V

    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    return-void
.end method

.method public getCode()I
    .locals 0

    iget p0, p0, Lcom/transsion/livecaption/bean/Command;->code:I

    return p0
.end method

.method public getData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/livecaption/bean/Command;->data:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/transsion/livecaption/bean/Command;->type:I

    return p0
.end method

.method public setCode(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/livecaption/bean/Command;->code:I

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/livecaption/bean/Command;->data:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/livecaption/bean/Command;->type:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/transsion/livecaption/bean/Command;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/transsion/livecaption/bean/Command;->code:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/transsion/livecaption/bean/Command;->data:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
