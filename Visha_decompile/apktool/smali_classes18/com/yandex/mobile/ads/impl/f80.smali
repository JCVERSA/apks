.class public final Lcom/yandex/mobile/ads/impl/f80;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/yandex/mobile/ads/impl/f80;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/mobile/ads/impl/f80;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/f80;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/f80;->a:Lcom/yandex/mobile/ads/impl/f80;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Lcom/yandex/mobile/ads/impl/f80;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 0

    const p0, 0x5aed49af

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "ExtrasNullParcelable"

    return-object p0
.end method
