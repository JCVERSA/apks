.class public final Lcom/transsion/letswitch/ipc/Response;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/letswitch/ipc/Response$CREATOR;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 *2\u00020\u0001:\u0001*B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B\u0011\u0008\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0006J\r\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0006J\u001f\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\"\u0010\u0017\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u000f\"\u0004\u0008\u001a\u0010\u001bR\"\u0010\u001d\u001a\u00020\u001c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R$\u0010$\u001a\u0004\u0018\u00010#8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)\u00a8\u0006+"
    }
    d2 = {
        "Lcom/transsion/letswitch/ipc/Response;",
        "Landroid/os/Parcelable;",
        "<init>",
        "()V",
        "Landroid/os/Parcel;",
        "parcel",
        "(Landroid/os/Parcel;)V",
        "",
        "isSuccess",
        "()Z",
        "",
        "content",
        "()Ljava/lang/Object;",
        "",
        "describeContents",
        "()I",
        "inParcel",
        "Lzfb;",
        "readFromParcel",
        "dest",
        "flags",
        "writeToParcel",
        "(Landroid/os/Parcel;I)V",
        "code",
        "I",
        "getCode",
        "setCode",
        "(I)V",
        "",
        "msg",
        "Ljava/lang/String;",
        "getMsg",
        "()Ljava/lang/String;",
        "setMsg",
        "(Ljava/lang/String;)V",
        "Lcom/transsion/letswitch/ipc/TypeValuePair;",
        "data",
        "Lcom/transsion/letswitch/ipc/TypeValuePair;",
        "getData",
        "()Lcom/transsion/letswitch/ipc/TypeValuePair;",
        "setData",
        "(Lcom/transsion/letswitch/ipc/TypeValuePair;)V",
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
.field public static final CODE_FAILED:I = -0x1

.field public static final CODE_SUCCESS:I

.field public static final CREATOR:Lcom/transsion/letswitch/ipc/Response$CREATOR;


# instance fields
.field private code:I

.field private data:Lcom/transsion/letswitch/ipc/TypeValuePair;

.field private msg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/letswitch/ipc/Response$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/letswitch/ipc/Response$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/letswitch/ipc/Response;->CREATOR:Lcom/transsion/letswitch/ipc/Response$CREATOR;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/transsion/letswitch/ipc/Response;->code:I

    .line 3
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/letswitch/ipc/Response;->msg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    const-string v0, "parcel"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/transsion/letswitch/ipc/Response;-><init>()V

    .line 5
    invoke-virtual {p0, p1}, Lcom/transsion/letswitch/ipc/Response;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final content()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/letswitch/ipc/Response;->data:Lcom/transsion/letswitch/ipc/TypeValuePair;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/letswitch/ipc/TypeValuePair;->getValue()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getCode()I
    .locals 0

    iget p0, p0, Lcom/transsion/letswitch/ipc/Response;->code:I

    return p0
.end method

.method public final getData()Lcom/transsion/letswitch/ipc/TypeValuePair;
    .locals 0

    iget-object p0, p0, Lcom/transsion/letswitch/ipc/Response;->data:Lcom/transsion/letswitch/ipc/TypeValuePair;

    return-object p0
.end method

.method public final getMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/letswitch/ipc/Response;->msg:Ljava/lang/String;

    return-object p0
.end method

.method public final isSuccess()Z
    .locals 0

    iget p0, p0, Lcom/transsion/letswitch/ipc/Response;->code:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    const-string v0, "inParcel"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/letswitch/ipc/Response;->code:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iput-object v0, p0, Lcom/transsion/letswitch/ipc/Response;->msg:Ljava/lang/String;

    sget-object v0, Lcom/transsion/letswitch/ipc/TypeValuePair;->Companion:Lcom/transsion/letswitch/ipc/TypeValuePair$Companion;

    invoke-virtual {v0, p1}, Lcom/transsion/letswitch/ipc/TypeValuePair$Companion;->readPair(Landroid/os/Parcel;)Lcom/transsion/letswitch/ipc/TypeValuePair;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/letswitch/ipc/Response;->data:Lcom/transsion/letswitch/ipc/TypeValuePair;

    return-void
.end method

.method public final setCode(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/letswitch/ipc/Response;->code:I

    return-void
.end method

.method public final setData(Lcom/transsion/letswitch/ipc/TypeValuePair;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/letswitch/ipc/Response;->data:Lcom/transsion/letswitch/ipc/TypeValuePair;

    return-void
.end method

.method public final setMsg(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/letswitch/ipc/Response;->msg:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "dest"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/transsion/letswitch/ipc/Response;->code:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/transsion/letswitch/ipc/Response;->msg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/letswitch/ipc/TypeValuePair;->Companion:Lcom/transsion/letswitch/ipc/TypeValuePair$Companion;

    iget-object p0, p0, Lcom/transsion/letswitch/ipc/Response;->data:Lcom/transsion/letswitch/ipc/TypeValuePair;

    invoke-virtual {v0, p1, p0, p2}, Lcom/transsion/letswitch/ipc/TypeValuePair$Companion;->writePair(Landroid/os/Parcel;Lcom/transsion/letswitch/ipc/TypeValuePair;I)V

    return-void
.end method
