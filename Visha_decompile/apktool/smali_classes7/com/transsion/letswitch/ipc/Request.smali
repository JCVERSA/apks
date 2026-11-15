.class public final Lcom/transsion/letswitch/ipc/Request;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/letswitch/ipc/Request$CREATOR;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 !2\u00020\u0001:\u0001!B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B\u0011\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0006J\u0015\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\t\u0010\u0006J\u001f\u0010\r\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0012\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\"\u0010\u0018\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0013\u001a\u0004\u0008\u0019\u0010\u0015\"\u0004\u0008\u001a\u0010\u0017R\u001d\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006\""
    }
    d2 = {
        "Lcom/transsion/letswitch/ipc/Request;",
        "Landroid/os/Parcelable;",
        "<init>",
        "()V",
        "Landroid/os/Parcel;",
        "parcel",
        "(Landroid/os/Parcel;)V",
        "inParcel",
        "Lzfb;",
        "readFromParcel",
        "dest",
        "",
        "flags",
        "writeToParcel",
        "(Landroid/os/Parcel;I)V",
        "describeContents",
        "()I",
        "",
        "serviceClazzName",
        "Ljava/lang/String;",
        "getServiceClazzName",
        "()Ljava/lang/String;",
        "setServiceClazzName",
        "(Ljava/lang/String;)V",
        "methodName",
        "getMethodName",
        "setMethodName",
        "",
        "Lcom/transsion/letswitch/ipc/TypeValuePair;",
        "params",
        "Ljava/util/List;",
        "getParams",
        "()Ljava/util/List;",
        "CREATOR",
        "ipc_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Lcom/transsion/letswitch/ipc/Request$CREATOR;


# instance fields
.field private methodName:Ljava/lang/String;

.field private final params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/letswitch/ipc/TypeValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private serviceClazzName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/letswitch/ipc/Request$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/letswitch/ipc/Request$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/letswitch/ipc/Request;->CREATOR:Lcom/transsion/letswitch/ipc/Request$CREATOR;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/letswitch/ipc/Request;->serviceClazzName:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/transsion/letswitch/ipc/Request;->methodName:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/letswitch/ipc/Request;->params:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/transsion/letswitch/ipc/Request;-><init>()V

    .line 6
    invoke-virtual {p0, p1}, Lcom/transsion/letswitch/ipc/Request;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getMethodName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/letswitch/ipc/Request;->methodName:Ljava/lang/String;

    return-object p0
.end method

.method public final getParams()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/letswitch/ipc/TypeValuePair;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/letswitch/ipc/Request;->params:Ljava/util/List;

    return-object p0
.end method

.method public final getServiceClazzName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/letswitch/ipc/Request;->serviceClazzName:Ljava/lang/String;

    return-object p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    const-string v0, "inParcel"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iput-object v0, p0, Lcom/transsion/letswitch/ipc/Request;->serviceClazzName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/transsion/letswitch/ipc/Request;->methodName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-gtz v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/transsion/letswitch/ipc/Request;->params:Ljava/util/List;

    sget-object v3, Lcom/transsion/letswitch/ipc/TypeValuePair;->Companion:Lcom/transsion/letswitch/ipc/TypeValuePair$Companion;

    invoke-virtual {v3, p1}, Lcom/transsion/letswitch/ipc/TypeValuePair$Companion;->readPair(Landroid/os/Parcel;)Lcom/transsion/letswitch/ipc/TypeValuePair;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final setMethodName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/letswitch/ipc/Request;->methodName:Ljava/lang/String;

    return-void
.end method

.method public final setServiceClazzName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/letswitch/ipc/Request;->serviceClazzName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "dest"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/letswitch/ipc/Request;->serviceClazzName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/letswitch/ipc/Request;->methodName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/letswitch/ipc/Request;->params:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p0, p0, Lcom/transsion/letswitch/ipc/Request;->params:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/letswitch/ipc/TypeValuePair;

    sget-object v1, Lcom/transsion/letswitch/ipc/TypeValuePair;->Companion:Lcom/transsion/letswitch/ipc/TypeValuePair$Companion;

    invoke-virtual {v1, p1, v0, p2}, Lcom/transsion/letswitch/ipc/TypeValuePair$Companion;->writePair(Landroid/os/Parcel;Lcom/transsion/letswitch/ipc/TypeValuePair;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
