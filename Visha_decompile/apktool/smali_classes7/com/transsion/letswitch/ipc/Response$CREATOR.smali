.class public final Lcom/transsion/letswitch/ipc/Response$CREATOR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/letswitch/ipc/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/transsion/letswitch/ipc/Response;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000e\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\u0002J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eH\u0017J\u001d\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0006H\u0016\u00a2\u0006\u0002\u0010\u0012R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/transsion/letswitch/ipc/Response$CREATOR;",
        "Landroid/os/Parcelable$Creator;",
        "Lcom/transsion/letswitch/ipc/Response;",
        "<init>",
        "()V",
        "CODE_SUCCESS",
        "",
        "CODE_FAILED",
        "success",
        "data",
        "Lcom/transsion/letswitch/ipc/TypeValuePair;",
        "failure",
        "createFromParcel",
        "parcel",
        "Landroid/os/Parcel;",
        "newArray",
        "",
        "size",
        "(I)[Lcom/transsion/letswitch/ipc/Response;",
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
    invoke-direct {p0}, Lcom/transsion/letswitch/ipc/Response$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/transsion/letswitch/ipc/Response;
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    const-string p0, "parcel"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p0, Lcom/transsion/letswitch/ipc/Response;

    invoke-direct {p0, p1}, Lcom/transsion/letswitch/ipc/Response;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/letswitch/ipc/Response$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/transsion/letswitch/ipc/Response;

    move-result-object p0

    return-object p0
.end method

.method public final failure()Lcom/transsion/letswitch/ipc/Response;
    .locals 1

    new-instance p0, Lcom/transsion/letswitch/ipc/Response;

    invoke-direct {p0}, Lcom/transsion/letswitch/ipc/Response;-><init>()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/transsion/letswitch/ipc/Response;->setCode(I)V

    return-object p0
.end method

.method public newArray(I)[Lcom/transsion/letswitch/ipc/Response;
    .locals 0

    .line 2
    new-array p0, p1, [Lcom/transsion/letswitch/ipc/Response;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/letswitch/ipc/Response$CREATOR;->newArray(I)[Lcom/transsion/letswitch/ipc/Response;

    move-result-object p0

    return-object p0
.end method

.method public final success(Lcom/transsion/letswitch/ipc/TypeValuePair;)Lcom/transsion/letswitch/ipc/Response;
    .locals 1

    const-string p0, "data"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/letswitch/ipc/Response;

    invoke-direct {p0}, Lcom/transsion/letswitch/ipc/Response;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/letswitch/ipc/Response;->setCode(I)V

    invoke-virtual {p0, p1}, Lcom/transsion/letswitch/ipc/Response;->setData(Lcom/transsion/letswitch/ipc/TypeValuePair;)V

    return-object p0
.end method
