.class public final Lcom/transsion/vishatransfer/data/ConnectedState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/vishatransfer/data/ConnectedState$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0086\u0008\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J)\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u0005H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\n\"\u0004\u0008\u0012\u0010\u000c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/transsion/vishatransfer/data/ConnectedState;",
        "",
        "state",
        "",
        "message",
        "",
        "userType",
        "<init>",
        "(ILjava/lang/String;I)V",
        "getState",
        "()I",
        "setState",
        "(I)V",
        "getMessage",
        "()Ljava/lang/String;",
        "setMessage",
        "(Ljava/lang/String;)V",
        "getUserType",
        "setUserType",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "Companion",
        "vishatransferlib_release"
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
.field public static final Companion:Lcom/transsion/vishatransfer/data/ConnectedState$Companion;

.field public static final SOCKET_STATE_CONNECT:I = 0x0

.field public static final SOCKET_STATE_DEFAULT:I = -0x1

.field public static final SOCKET_STATE_DISCONNECT:I = 0x2

.field public static final SOCKET_STATE_ERROR:I = 0x3

.field public static final SOCKET_STATE_READY:I = 0x1

.field public static final SOCKET_STATE_START_TRANSFER:I = 0x8

.field public static final WIFI_STATE_CONNECTED:I = 0x4

.field public static final WIFI_STATE_DISCONNECTED:I = 0x5

.field public static final WIFI_STATE_FINISH_TRANSFER:I = 0x6

.field public static final WIFI_STATE_TRANSFER:I = 0x7


# instance fields
.field private message:Ljava/lang/String;

.field private state:I

.field private userType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/vishatransfer/data/ConnectedState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/vishatransfer/data/ConnectedState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/vishatransfer/data/ConnectedState;->Companion:Lcom/transsion/vishatransfer/data/ConnectedState$Companion;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/vishatransfer/data/ConnectedState;->state:I

    iput-object p2, p0, Lcom/transsion/vishatransfer/data/ConnectedState;->message:Ljava/lang/String;

    iput p3, p0, Lcom/transsion/vishatransfer/data/ConnectedState;->userType:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 2
    const-string p2, ""

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/vishatransfer/data/ConnectedState;-><init>(ILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/vishatransfer/data/ConnectedState;ILjava/lang/String;IILjava/lang/Object;)Lcom/transsion/vishatransfer/data/ConnectedState;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/transsion/vishatransfer/data/ConnectedState;->state:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/transsion/vishatransfer/data/ConnectedState;->message:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/transsion/vishatransfer/data/ConnectedState;->userType:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/vishatransfer/data/ConnectedState;->copy(ILjava/lang/String;I)Lcom/transsion/vishatransfer/data/ConnectedState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishatransfer/data/ConnectedState;->state:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishatransfer/data/ConnectedState;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishatransfer/data/ConnectedState;->userType:I

    return p0
.end method

.method public final copy(ILjava/lang/String;I)Lcom/transsion/vishatransfer/data/ConnectedState;
    .locals 0

    new-instance p0, Lcom/transsion/vishatransfer/data/ConnectedState;

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/vishatransfer/data/ConnectedState;-><init>(ILjava/lang/String;I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/vishatransfer/data/ConnectedState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/vishatransfer/data/ConnectedState;

    iget v1, p0, Lcom/transsion/vishatransfer/data/ConnectedState;->state:I

    iget v3, p1, Lcom/transsion/vishatransfer/data/ConnectedState;->state:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/vishatransfer/data/ConnectedState;->message:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/vishatransfer/data/ConnectedState;->message:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lcom/transsion/vishatransfer/data/ConnectedState;->userType:I

    iget p1, p1, Lcom/transsion/vishatransfer/data/ConnectedState;->userType:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishatransfer/data/ConnectedState;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final getState()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishatransfer/data/ConnectedState;->state:I

    return p0
.end method

.method public final getUserType()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishatransfer/data/ConnectedState;->userType:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/transsion/vishatransfer/data/ConnectedState;->state:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/vishatransfer/data/ConnectedState;->message:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/transsion/vishatransfer/data/ConnectedState;->userType:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishatransfer/data/ConnectedState;->message:Ljava/lang/String;

    return-void
.end method

.method public final setState(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishatransfer/data/ConnectedState;->state:I

    return-void
.end method

.method public final setUserType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishatransfer/data/ConnectedState;->userType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/transsion/vishatransfer/data/ConnectedState;->state:I

    iget-object v1, p0, Lcom/transsion/vishatransfer/data/ConnectedState;->message:Ljava/lang/String;

    iget p0, p0, Lcom/transsion/vishatransfer/data/ConnectedState;->userType:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectedState(state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", message="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", userType="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
