.class public final Lcom/transsion/apiinvoke/ipc/typeparcel/ParcelHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final VERSION:I = 0x2


# instance fields
.field private extras:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/transsion/apiinvoke/ipc/typeparcel/ParcelHeader;->version:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/apiinvoke/ipc/typeparcel/ParcelHeader;->extras:Ljava/util/HashMap;

    return-void
.end method

.method public static empty()Lcom/transsion/apiinvoke/ipc/typeparcel/ParcelHeader;
    .locals 2

    new-instance v0, Lcom/transsion/apiinvoke/ipc/typeparcel/ParcelHeader;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/ipc/typeparcel/ParcelHeader;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lcom/transsion/apiinvoke/ipc/typeparcel/ParcelHeader;->version:I

    return-object v0
.end method

.method public static readParcelHeader(Landroid/os/Parcel;)Lcom/transsion/apiinvoke/ipc/typeparcel/ParcelHeader;
    .locals 6

    new-instance v0, Lcom/transsion/apiinvoke/ipc/typeparcel/ParcelHeader;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/ipc/typeparcel/ParcelHeader;-><init>()V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/transsion/apiinvoke/ipc/typeparcel/ParcelHeader;->version:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-gtz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, v0, Lcom/transsion/apiinvoke/ipc/typeparcel/ParcelHeader;->extras:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/typeparcel/ParcelHeader;->extras:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addHeader : key "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " header "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ParcelHeader"

    invoke-static {p1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public extras()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/typeparcel/ParcelHeader;->extras:Ljava/util/HashMap;

    return-object p0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/typeparcel/ParcelHeader;->extras:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/typeparcel/ParcelHeader;->extras:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeHeader : key "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ParcelHeader"

    invoke-static {p1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public version()I
    .locals 0

    iget p0, p0, Lcom/transsion/apiinvoke/ipc/typeparcel/ParcelHeader;->version:I

    return p0
.end method

.method public writeParcelHeader(Landroid/os/Parcel;Lcom/transsion/apiinvoke/ipc/typeparcel/ParcelHeader;)V
    .locals 1

    invoke-virtual {p2}, Lcom/transsion/apiinvoke/ipc/typeparcel/ParcelHeader;->version()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Lcom/transsion/apiinvoke/ipc/typeparcel/ParcelHeader;->extras()Ljava/util/HashMap;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_2
    return-void
.end method
