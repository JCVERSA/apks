.class final Lcom/yandex/mobile/ads/impl/y22$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/de1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/y22;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lyxd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/y22$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/wz;)J
    .locals 0

    .line 1
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public final a()Lcom/yandex/mobile/ads/impl/ex1;
    .locals 4

    .line 3
    new-instance p0, Lcom/yandex/mobile/ads/impl/ex1$b;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v2, 0x0

    .line 4
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/yandex/mobile/ads/impl/ex1$b;-><init>(JJ)V

    return-object p0
.end method

.method public final a(J)V
    .locals 0

    .line 2
    return-void
.end method
