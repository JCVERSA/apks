.class public final Lcom/yandex/mobile/ads/impl/hs0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/hs0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:I

.field private final b:J


# direct methods
.method private constructor <init>(IJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/yandex/mobile/ads/impl/hs0$b;->a:I

    .line 4
    iput-wide p2, p0, Lcom/yandex/mobile/ads/impl/hs0$b;->b:J

    return-void
.end method

.method public synthetic constructor <init>(IJLaid;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/hs0$b;-><init>(IJ)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/yandex/mobile/ads/impl/hs0$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/yandex/mobile/ads/impl/hs0$b;->a:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/yandex/mobile/ads/impl/hs0$b;)J
    .locals 2

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/hs0$b;->b:J

    return-wide v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 2
    iget p0, p0, Lcom/yandex/mobile/ads/impl/hs0$b;->a:I

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method
