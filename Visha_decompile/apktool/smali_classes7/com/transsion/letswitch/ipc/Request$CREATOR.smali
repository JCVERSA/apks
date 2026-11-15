.class public final Lcom/transsion/letswitch/ipc/Request$CREATOR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/letswitch/ipc/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/transsion/letswitch/ipc/Request;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0016\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u001d\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016\u00a2\u0006\u0002\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/transsion/letswitch/ipc/Request$CREATOR;",
        "Landroid/os/Parcelable$Creator;",
        "Lcom/transsion/letswitch/ipc/Request;",
        "<init>",
        "()V",
        "create",
        "clazzName",
        "",
        "methodName",
        "createFromParcel",
        "parcel",
        "Landroid/os/Parcel;",
        "newArray",
        "",
        "size",
        "",
        "(I)[Lcom/transsion/letswitch/ipc/Request;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/letswitch/ipc/Request$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/letswitch/ipc/Request;
    .locals 0

    const-string p0, "clazzName"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "methodName"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/letswitch/ipc/Request;

    invoke-direct {p0}, Lcom/transsion/letswitch/ipc/Request;-><init>()V

    invoke-virtual {p0, p1}, Lcom/transsion/letswitch/ipc/Request;->setServiceClazzName(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/transsion/letswitch/ipc/Request;->setMethodName(Ljava/lang/String;)V

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lcom/transsion/letswitch/ipc/Request;
    .locals 0

    const-string p0, "parcel"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p0, Lcom/transsion/letswitch/ipc/Request;

    invoke-direct {p0, p1}, Lcom/transsion/letswitch/ipc/Request;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/letswitch/ipc/Request$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/transsion/letswitch/ipc/Request;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/transsion/letswitch/ipc/Request;
    .locals 0

    .line 2
    new-array p0, p1, [Lcom/transsion/letswitch/ipc/Request;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/letswitch/ipc/Request$CREATOR;->newArray(I)[Lcom/transsion/letswitch/ipc/Request;

    move-result-object p0

    return-object p0
.end method
