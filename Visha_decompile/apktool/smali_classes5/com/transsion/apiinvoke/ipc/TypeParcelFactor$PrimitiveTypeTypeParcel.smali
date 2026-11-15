.class Lcom/transsion/apiinvoke/ipc/TypeParcelFactor$PrimitiveTypeTypeParcel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/apiinvoke/ipc/ITypeParcel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrimitiveTypeTypeParcel"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/apiinvoke/ipc/TypeParcelFactor$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor$PrimitiveTypeTypeParcel;-><init>()V

    return-void
.end method


# virtual methods
.method public readFormParcel(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->access$900()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->access$1000(Landroid/os/Parcel;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;Ljava/lang/Class;Ljava/lang/Object;I)V
    .locals 0

    invoke-static {}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->access$900()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p1, p3, p0}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->access$1100(Landroid/os/Parcel;Ljava/lang/Object;I)V

    return-void
.end method
