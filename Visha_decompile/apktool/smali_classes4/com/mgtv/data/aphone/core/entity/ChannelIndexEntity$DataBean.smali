.class public Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/mgtv/json/JsonInterface;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x365c7d73d8319753L


# instance fields
.field public adId:I

.field public combineId:Ljava/lang/String;

.field public dataModuleId:I

.field public indexKey:Ljava/lang/String;

.field public isExchange:I

.field public moduleData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;",
            ">;"
        }
    .end annotation
.end field

.field public moduleId:I

.field public moduleName:Ljava/lang/String;

.field public moduleType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$1;

    invoke-direct {v0}, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$1;-><init>()V

    sput-object v0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean;->CREATOR:Landroid/os/Parcelable$Creator;

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean;->adId:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean;->combineId:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean;->dataModuleId:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean;->isExchange:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean;->moduleId:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean;->moduleName:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean;->moduleType:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean;->indexKey:Ljava/lang/String;

    .line 11
    sget-object v0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean;->moduleData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean;->adId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean;->combineId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean;->dataModuleId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean;->isExchange:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean;->moduleId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean;->moduleName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean;->moduleType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean;->indexKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean;->moduleData:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
