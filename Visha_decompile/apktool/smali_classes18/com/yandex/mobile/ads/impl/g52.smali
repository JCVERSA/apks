.class public final Lcom/yandex/mobile/ads/impl/g52;
.super Lcom/yandex/mobile/ads/impl/r12;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/yandex/mobile/ads/impl/g52;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:J

.field public final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/mobile/ads/impl/g52$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/g52$a;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/g52;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(JJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/r12;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/g52;->b:J

    .line 4
    iput-wide p3, p0, Lcom/yandex/mobile/ads/impl/g52;->c:J

    return-void
.end method

.method public synthetic constructor <init>(JJLyfd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yandex/mobile/ads/impl/g52;-><init>(JJ)V

    return-void
.end method

.method public static a(JLcom/yandex/mobile/ads/impl/ag1;)J
    .locals 6

    .line 4
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ag1;->t()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x80

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    .line 5
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ag1;->v()J

    move-result-wide v2

    or-long/2addr v0, v2

    add-long/2addr v0, p0

    const-wide p0, 0x1ffffffffL

    and-long/2addr p0, v0

    goto :goto_0

    :cond_0
    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide p0
.end method

.method public static a(Lcom/yandex/mobile/ads/impl/ag1;JLcom/yandex/mobile/ads/impl/p52;)Lcom/yandex/mobile/ads/impl/g52;
    .locals 1

    .line 1
    invoke-static {p1, p2, p0}, Lcom/yandex/mobile/ads/impl/g52;->a(JLcom/yandex/mobile/ads/impl/ag1;)J

    move-result-wide p0

    .line 2
    invoke-virtual {p3, p0, p1}, Lcom/yandex/mobile/ads/impl/p52;->b(J)J

    move-result-wide p2

    .line 3
    new-instance v0, Lcom/yandex/mobile/ads/impl/g52;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/g52;-><init>(JJ)V

    return-object v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/g52;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/g52;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
