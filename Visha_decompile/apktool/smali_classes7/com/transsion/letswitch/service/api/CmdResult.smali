.class public final Lcom/transsion/letswitch/service/api/CmdResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/letswitch/service/api/CmdResult$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0087\u0008\u0018\u0000  2\u00020\u0001:\u0001 B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001d\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\r\u0010\u000e\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0010\u0010\u000fJ\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J&\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u00c6\u0001\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\u0004H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0015\u0010\u0012J\u0010\u0010\u0016\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0016\u0010\u000fJ\u001a\u0010\u001a\u001a\u00020\u00192\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u00d6\u0003\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u000fR\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u001e\u001a\u0004\u0008\u001f\u0010\u0012\u00a8\u0006!"
    }
    d2 = {
        "Lcom/transsion/letswitch/service/api/CmdResult;",
        "Landroid/os/Parcelable;",
        "",
        "result",
        "",
        "message",
        "<init>",
        "(ILjava/lang/String;)V",
        "Landroid/os/Parcel;",
        "dest",
        "flags",
        "Lzfb;",
        "writeToParcel",
        "(Landroid/os/Parcel;I)V",
        "describeContents",
        "()I",
        "component1",
        "component2",
        "()Ljava/lang/String;",
        "copy",
        "(ILjava/lang/String;)Lcom/transsion/letswitch/service/api/CmdResult;",
        "toString",
        "hashCode",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "I",
        "getResult",
        "Ljava/lang/String;",
        "getMessage",
        "Companion",
        "api_release"
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
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/letswitch/service/api/CmdResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/transsion/letswitch/service/api/CmdResult$Companion;

.field private static final FAIL_RESULT:Lcom/transsion/letswitch/service/api/CmdResult;


# instance fields
.field private final message:Ljava/lang/String;

.field private final result:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/letswitch/service/api/CmdResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/letswitch/service/api/CmdResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/letswitch/service/api/CmdResult;->Companion:Lcom/transsion/letswitch/service/api/CmdResult$Companion;

    new-instance v0, Lcom/transsion/letswitch/service/api/CmdResult$Creator;

    invoke-direct {v0}, Lcom/transsion/letswitch/service/api/CmdResult$Creator;-><init>()V

    sput-object v0, Lcom/transsion/letswitch/service/api/CmdResult;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/transsion/letswitch/service/api/CmdResult;

    const/4 v1, -0x1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/transsion/letswitch/service/api/CmdResult;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/letswitch/service/api/CmdResult;->FAIL_RESULT:Lcom/transsion/letswitch/service/api/CmdResult;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/letswitch/service/api/CmdResult;->result:I

    iput-object p2, p0, Lcom/transsion/letswitch/service/api/CmdResult;->message:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getFAIL_RESULT$cp()Lcom/transsion/letswitch/service/api/CmdResult;
    .locals 1

    sget-object v0, Lcom/transsion/letswitch/service/api/CmdResult;->FAIL_RESULT:Lcom/transsion/letswitch/service/api/CmdResult;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/transsion/letswitch/service/api/CmdResult;ILjava/lang/String;ILjava/lang/Object;)Lcom/transsion/letswitch/service/api/CmdResult;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/transsion/letswitch/service/api/CmdResult;->result:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/transsion/letswitch/service/api/CmdResult;->message:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/letswitch/service/api/CmdResult;->copy(ILjava/lang/String;)Lcom/transsion/letswitch/service/api/CmdResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/transsion/letswitch/service/api/CmdResult;->result:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/CmdResult;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(ILjava/lang/String;)Lcom/transsion/letswitch/service/api/CmdResult;
    .locals 0

    new-instance p0, Lcom/transsion/letswitch/service/api/CmdResult;

    invoke-direct {p0, p1, p2}, Lcom/transsion/letswitch/service/api/CmdResult;-><init>(ILjava/lang/String;)V

    return-object p0
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/letswitch/service/api/CmdResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/letswitch/service/api/CmdResult;

    iget v1, p0, Lcom/transsion/letswitch/service/api/CmdResult;->result:I

    iget v3, p1, Lcom/transsion/letswitch/service/api/CmdResult;->result:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/transsion/letswitch/service/api/CmdResult;->message:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/letswitch/service/api/CmdResult;->message:Ljava/lang/String;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/CmdResult;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final getResult()I
    .locals 0

    iget p0, p0, Lcom/transsion/letswitch/service/api/CmdResult;->result:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/transsion/letswitch/service/api/CmdResult;->result:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/CmdResult;->message:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/transsion/letswitch/service/api/CmdResult;->result:I

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/CmdResult;->message:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CmdResult(result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", message="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "dest"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/transsion/letswitch/service/api/CmdResult;->result:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/CmdResult;->message:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
