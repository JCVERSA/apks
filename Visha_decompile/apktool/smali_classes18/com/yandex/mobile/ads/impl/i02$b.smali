.class public final Lcom/yandex/mobile/ads/impl/i02$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/i02;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/yandex/mobile/ads/impl/i02$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:J

.field public final c:J

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Llid;

    invoke-direct {v0}, Llid;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/i02$b$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/i02$b$a;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/i02$b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    cmp-long v0, p2, p4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/hg;->a(Z)V

    iput-wide p2, p0, Lcom/yandex/mobile/ads/impl/i02$b;->b:J

    iput-wide p4, p0, Lcom/yandex/mobile/ads/impl/i02$b;->c:J

    iput p1, p0, Lcom/yandex/mobile/ads/impl/i02$b;->d:I

    return-void
.end method

.method private static synthetic a(Lcom/yandex/mobile/ads/impl/i02$b;Lcom/yandex/mobile/ads/impl/i02$b;)I
    .locals 5

    invoke-static {}, Lcom/yandex/mobile/ads/impl/yq;->b()Lcom/yandex/mobile/ads/impl/yq;

    move-result-object v0

    iget-wide v1, p0, Lcom/yandex/mobile/ads/impl/i02$b;->b:J

    iget-wide v3, p1, Lcom/yandex/mobile/ads/impl/i02$b;->b:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/yandex/mobile/ads/impl/yq;->a(JJ)Lcom/yandex/mobile/ads/impl/yq;

    move-result-object v0

    iget-wide v1, p0, Lcom/yandex/mobile/ads/impl/i02$b;->c:J

    iget-wide v3, p1, Lcom/yandex/mobile/ads/impl/i02$b;->c:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/yandex/mobile/ads/impl/yq;->a(JJ)Lcom/yandex/mobile/ads/impl/yq;

    move-result-object v0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/i02$b;->d:I

    iget p1, p1, Lcom/yandex/mobile/ads/impl/i02$b;->d:I

    invoke-virtual {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/yq;->a(II)Lcom/yandex/mobile/ads/impl/yq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/yq;->a()I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/i02$b;Lcom/yandex/mobile/ads/impl/i02$b;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/i02$b;->a(Lcom/yandex/mobile/ads/impl/i02$b;Lcom/yandex/mobile/ads/impl/i02$b;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/yandex/mobile/ads/impl/i02$b;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/i02$b;

    iget-wide v2, p0, Lcom/yandex/mobile/ads/impl/i02$b;->b:J

    iget-wide v4, p1, Lcom/yandex/mobile/ads/impl/i02$b;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/yandex/mobile/ads/impl/i02$b;->c:J

    iget-wide v4, p1, Lcom/yandex/mobile/ads/impl/i02$b;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget p0, p0, Lcom/yandex/mobile/ads/impl/i02$b;->d:I

    iget p1, p1, Lcom/yandex/mobile/ads/impl/i02$b;->d:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/i02$b;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lcom/yandex/mobile/ads/impl/i02$b;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget p0, p0, Lcom/yandex/mobile/ads/impl/i02$b;->d:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/i02$b;->b:J

    iget-wide v2, p0, Lcom/yandex/mobile/ads/impl/i02$b;->c:J

    iget p0, p0, Lcom/yandex/mobile/ads/impl/i02$b;->d:I

    sget v4, Lcom/yandex/mobile/ads/impl/f92;->a:I

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Segment: startTimeMs="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", endTimeMs="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", speedDivisor="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/i02$b;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/i02$b;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p0, p0, Lcom/yandex/mobile/ads/impl/i02$b;->d:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
