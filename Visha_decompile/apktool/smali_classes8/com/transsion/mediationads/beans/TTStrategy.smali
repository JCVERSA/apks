.class public final Lcom/transsion/mediationads/beans/TTStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/mediationads/beans/TTStrategy$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0019\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 #2\u00020\u0001:\u0001#B9\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0008\u0010\u0016\u001a\u00020\u0003H\u0016J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0005H\u00c6\u0003JG\u0010\u001d\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u00d6\u0003J\t\u0010\"\u001a\u00020\u0005H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000f\"\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000fR\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u000fR\u0011\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u000f\u00a8\u0006$"
    }
    d2 = {
        "Lcom/transsion/mediationads/beans/TTStrategy;",
        "Ljava/io/Serializable;",
        "advertisingId",
        "",
        "protectDays",
        "",
        "startPosition",
        "maxAdvertisingCount",
        "videoIntervalsMin",
        "videoIntervalsMax",
        "<init>",
        "(Ljava/lang/String;IIIII)V",
        "getAdvertisingId",
        "()Ljava/lang/String;",
        "getProtectDays",
        "()I",
        "getStartPosition",
        "setStartPosition",
        "(I)V",
        "getMaxAdvertisingCount",
        "getVideoIntervalsMin",
        "getVideoIntervalsMax",
        "toString",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "Companion",
        "mediationads-api_release"
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
.field public static final Companion:Lcom/transsion/mediationads/beans/TTStrategy$Companion;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final advertisingId:Ljava/lang/String;

.field private final maxAdvertisingCount:I

.field private final protectDays:I

.field private startPosition:I

.field private final videoIntervalsMax:I

.field private final videoIntervalsMin:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/mediationads/beans/TTStrategy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/mediationads/beans/TTStrategy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/mediationads/beans/TTStrategy;->Companion:Lcom/transsion/mediationads/beans/TTStrategy$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/mediationads/beans/TTStrategy;->advertisingId:Ljava/lang/String;

    iput p2, p0, Lcom/transsion/mediationads/beans/TTStrategy;->protectDays:I

    iput p3, p0, Lcom/transsion/mediationads/beans/TTStrategy;->startPosition:I

    iput p4, p0, Lcom/transsion/mediationads/beans/TTStrategy;->maxAdvertisingCount:I

    iput p5, p0, Lcom/transsion/mediationads/beans/TTStrategy;->videoIntervalsMin:I

    iput p6, p0, Lcom/transsion/mediationads/beans/TTStrategy;->videoIntervalsMax:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/mediationads/beans/TTStrategy;Ljava/lang/String;IIIIIILjava/lang/Object;)Lcom/transsion/mediationads/beans/TTStrategy;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/transsion/mediationads/beans/TTStrategy;->advertisingId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget p2, p0, Lcom/transsion/mediationads/beans/TTStrategy;->protectDays:I

    :cond_1
    move p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/transsion/mediationads/beans/TTStrategy;->startPosition:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/transsion/mediationads/beans/TTStrategy;->maxAdvertisingCount:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/transsion/mediationads/beans/TTStrategy;->videoIntervalsMin:I

    :cond_4
    move v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget p6, p0, Lcom/transsion/mediationads/beans/TTStrategy;->videoIntervalsMax:I

    :cond_5
    move v3, p6

    move-object p2, p0

    move-object p3, p1

    move p4, p8

    move p5, v0

    move p6, v1

    move p7, v2

    move p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/transsion/mediationads/beans/TTStrategy;->copy(Ljava/lang/String;IIIII)Lcom/transsion/mediationads/beans/TTStrategy;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/mediationads/beans/TTStrategy;->advertisingId:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/transsion/mediationads/beans/TTStrategy;->protectDays:I

    return p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/transsion/mediationads/beans/TTStrategy;->startPosition:I

    return p0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Lcom/transsion/mediationads/beans/TTStrategy;->maxAdvertisingCount:I

    return p0
.end method

.method public final component5()I
    .locals 0

    iget p0, p0, Lcom/transsion/mediationads/beans/TTStrategy;->videoIntervalsMin:I

    return p0
.end method

.method public final component6()I
    .locals 0

    iget p0, p0, Lcom/transsion/mediationads/beans/TTStrategy;->videoIntervalsMax:I

    return p0
.end method

.method public final copy(Ljava/lang/String;IIIII)Lcom/transsion/mediationads/beans/TTStrategy;
    .locals 7

    new-instance p0, Lcom/transsion/mediationads/beans/TTStrategy;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/transsion/mediationads/beans/TTStrategy;-><init>(Ljava/lang/String;IIIII)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/mediationads/beans/TTStrategy;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/mediationads/beans/TTStrategy;

    iget-object v1, p0, Lcom/transsion/mediationads/beans/TTStrategy;->advertisingId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/mediationads/beans/TTStrategy;->advertisingId:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/transsion/mediationads/beans/TTStrategy;->protectDays:I

    iget v3, p1, Lcom/transsion/mediationads/beans/TTStrategy;->protectDays:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/transsion/mediationads/beans/TTStrategy;->startPosition:I

    iget v3, p1, Lcom/transsion/mediationads/beans/TTStrategy;->startPosition:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/transsion/mediationads/beans/TTStrategy;->maxAdvertisingCount:I

    iget v3, p1, Lcom/transsion/mediationads/beans/TTStrategy;->maxAdvertisingCount:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/transsion/mediationads/beans/TTStrategy;->videoIntervalsMin:I

    iget v3, p1, Lcom/transsion/mediationads/beans/TTStrategy;->videoIntervalsMin:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget p0, p0, Lcom/transsion/mediationads/beans/TTStrategy;->videoIntervalsMax:I

    iget p1, p1, Lcom/transsion/mediationads/beans/TTStrategy;->videoIntervalsMax:I

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getAdvertisingId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/mediationads/beans/TTStrategy;->advertisingId:Ljava/lang/String;

    return-object p0
.end method

.method public final getMaxAdvertisingCount()I
    .locals 0

    iget p0, p0, Lcom/transsion/mediationads/beans/TTStrategy;->maxAdvertisingCount:I

    return p0
.end method

.method public final getProtectDays()I
    .locals 0

    iget p0, p0, Lcom/transsion/mediationads/beans/TTStrategy;->protectDays:I

    return p0
.end method

.method public final getStartPosition()I
    .locals 0

    iget p0, p0, Lcom/transsion/mediationads/beans/TTStrategy;->startPosition:I

    return p0
.end method

.method public final getVideoIntervalsMax()I
    .locals 0

    iget p0, p0, Lcom/transsion/mediationads/beans/TTStrategy;->videoIntervalsMax:I

    return p0
.end method

.method public final getVideoIntervalsMin()I
    .locals 0

    iget p0, p0, Lcom/transsion/mediationads/beans/TTStrategy;->videoIntervalsMin:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/mediationads/beans/TTStrategy;->advertisingId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/mediationads/beans/TTStrategy;->protectDays:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/mediationads/beans/TTStrategy;->startPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/mediationads/beans/TTStrategy;->maxAdvertisingCount:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/mediationads/beans/TTStrategy;->videoIntervalsMin:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/transsion/mediationads/beans/TTStrategy;->videoIntervalsMax:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setStartPosition(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/mediationads/beans/TTStrategy;->startPosition:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/transsion/mediationads/beans/TTStrategy;->advertisingId:Ljava/lang/String;

    iget v1, p0, Lcom/transsion/mediationads/beans/TTStrategy;->protectDays:I

    iget v2, p0, Lcom/transsion/mediationads/beans/TTStrategy;->startPosition:I

    iget v3, p0, Lcom/transsion/mediationads/beans/TTStrategy;->maxAdvertisingCount:I

    iget v4, p0, Lcom/transsion/mediationads/beans/TTStrategy;->videoIntervalsMin:I

    iget p0, p0, Lcom/transsion/mediationads/beans/TTStrategy;->videoIntervalsMax:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TTStrategy(advertisingId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", protectDays="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", startPosition="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", maxAdvertisingCount="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", videoIntervalsMin="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", videoIntervalsMax="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
