.class public Lcom/transsion/apiinvoke/ipc/CommonParcelable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/apiinvoke/ipc/CommonParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mapValue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/apiinvoke/invoke/TypeValuePair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/apiinvoke/ipc/CommonParcelable$1;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/ipc/CommonParcelable$1;-><init>()V

    sput-object v0, Lcom/transsion/apiinvoke/ipc/CommonParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/apiinvoke/ipc/CommonParcelable;->mapValue:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/apiinvoke/ipc/CommonParcelable;->mapValue:Ljava/util/Map;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 6
    invoke-static {}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->getFactor()Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->readFormParcel(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/transsion/apiinvoke/ipc/CommonParcelable;->mapValue:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/CommonParcelable;->mapValue:Ljava/util/Map;

    invoke-static {p2, p3}, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->create(Ljava/lang/Class;Ljava/lang/Object;)Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/CommonParcelable;->mapValue:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->create(Ljava/lang/Class;Ljava/lang/Object;)Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-class v0, Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    invoke-static {}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->getFactor()Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/CommonParcelable;->mapValue:Ljava/util/Map;

    invoke-virtual {v1, p1, v0, p0, p2}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Class;Ljava/lang/Object;I)V

    return-void
.end method
