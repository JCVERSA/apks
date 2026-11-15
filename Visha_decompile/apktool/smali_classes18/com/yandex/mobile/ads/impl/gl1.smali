.class public final Lcom/yandex/mobile/ads/impl/gl1;
.super Lcom/yandex/mobile/ads/impl/r12;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/yandex/mobile/ads/impl/gl1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:J

.field public final c:J

.field public final d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/mobile/ads/impl/gl1$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/gl1$a;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/gl1;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(J[BJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/r12;-><init>()V

    .line 3
    iput-wide p4, p0, Lcom/yandex/mobile/ads/impl/gl1;->b:J

    .line 4
    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/gl1;->c:J

    .line 5
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/gl1;->d:[B

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/r12;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/mobile/ads/impl/gl1;->b:J

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/mobile/ads/impl/gl1;->c:J

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/f92;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/gl1;->d:[B

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lkgd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/gl1;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static a(Lcom/yandex/mobile/ads/impl/ag1;IJ)Lcom/yandex/mobile/ads/impl/gl1;
    .locals 6

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ag1;->v()J

    move-result-wide v1

    add-int/lit8 p1, p1, -0x4

    new-array v3, p1, [B

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0, p1}, Lcom/yandex/mobile/ads/impl/ag1;->a([BII)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/gl1;

    move-object v0, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/gl1;-><init>(J[BJ)V

    return-object p0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/gl1;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/gl1;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gl1;->d:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
