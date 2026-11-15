.class public final Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0087\u0008\u0018\u0000 \u001f2\u00020\u0001:\u0001 B\u001f\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001d\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\r\u0010\u000e\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J(\u0010\u0013\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0015\u0010\u0011J\u0010\u0010\u0016\u001a\u00020\tH\u00d6\u0001\u00a2\u0006\u0004\u0008\u0016\u0010\u000fJ\u001a\u0010\u001a\u001a\u00020\u00192\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u00d6\u0003\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u0011R\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u001c\u001a\u0004\u0008\u001e\u0010\u0011\u00a8\u0006!"
    }
    d2 = {
        "Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;",
        "Landroid/os/Parcelable;",
        "",
        "orderStatus",
        "description",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "Landroid/os/Parcel;",
        "dest",
        "",
        "flags",
        "",
        "writeToParcel",
        "(Landroid/os/Parcel;I)V",
        "describeContents",
        "()I",
        "component1",
        "()Ljava/lang/String;",
        "component2",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;",
        "toString",
        "hashCode",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/String;",
        "getOrderStatus",
        "getDescription",
        "Companion",
        "a",
        "shortTvLib_release"
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
            "Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity$a;

.field public static final ORDER_STATUS_0_PENDING_PAYMENT:I = 0x0

.field public static final ORDER_STATUS_1_TO_BE_SHIPPED:I = 0x1

.field public static final ORDER_STATUS_2_DONE:I = 0x2

.field public static final ORDER_STATUS_3_CANCELLED:I = 0x3

.field public static final ORDER_STATUS_4_PAYMENT:I = 0x4

.field public static final ORDER_STATUS_5_SHIPMENT_FAILED:I = 0x5


# instance fields
.field private final description:Ljava/lang/String;

.field private final orderStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;->Companion:Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity$a;

    .line 8
    .line 9
    new-instance v0, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity$b;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity$b;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;->orderStatus:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;->description:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;->orderStatus:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;->description:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;->copy(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;->orderStatus:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;->orderStatus:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;->orderStatus:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;->description:Ljava/lang/String;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;->description:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    return v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOrderStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;->orderStatus:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;->orderStatus:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;->description:Ljava/lang/String;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    :goto_1
    add-int/2addr v0, v1

    .line 24
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;->orderStatus:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;->description:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "GetPaynicornOrderStatusRespEntity(orderStatus="

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, ", description="

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, ")"

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    const-string p2, "dest"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;->orderStatus:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;->description:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
