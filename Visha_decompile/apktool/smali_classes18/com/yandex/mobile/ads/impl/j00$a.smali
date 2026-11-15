.class final Lcom/yandex/mobile/ads/impl/j00$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ex1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/j00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/j00;


# direct methods
.method private constructor <init>(Lcom/yandex/mobile/ads/impl/j00;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/j00$a;->a:Lcom/yandex/mobile/ads/impl/j00;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/j00;Lpjd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/j00$a;-><init>(Lcom/yandex/mobile/ads/impl/j00;)V

    return-void
.end method


# virtual methods
.method public final b(J)Lcom/yandex/mobile/ads/impl/ex1$a;
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/j00$a;->a:Lcom/yandex/mobile/ads/impl/j00;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/j00;->c(Lcom/yandex/mobile/ads/impl/j00;)Lcom/yandex/mobile/ads/impl/y22;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/y22;->b(J)J

    move-result-wide v0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j00$a;->a:Lcom/yandex/mobile/ads/impl/j00;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/j00;->a(Lcom/yandex/mobile/ads/impl/j00;)J

    move-result-wide v2

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/j00;->b(Lcom/yandex/mobile/ads/impl/j00;)J

    move-result-wide v4

    sub-long v6, v4, v2

    mul-long/2addr v6, v0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/j00;->d(Lcom/yandex/mobile/ads/impl/j00;)J

    move-result-wide v0

    div-long/2addr v6, v0

    add-long/2addr v6, v2

    const-wide/16 v0, 0x7530

    sub-long/2addr v6, v0

    const-wide/16 v0, 0x1

    sub-long/2addr v4, v0

    .line 4
    sget p0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    .line 5
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 6
    new-instance p0, Lcom/yandex/mobile/ads/impl/ex1$a;

    new-instance v2, Lcom/yandex/mobile/ads/impl/gx1;

    invoke-direct {v2, p1, p2, v0, v1}, Lcom/yandex/mobile/ads/impl/gx1;-><init>(JJ)V

    .line 7
    invoke-direct {p0, v2, v2}, Lcom/yandex/mobile/ads/impl/ex1$a;-><init>(Lcom/yandex/mobile/ads/impl/gx1;Lcom/yandex/mobile/ads/impl/gx1;)V

    return-object p0
.end method

.method public final b()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    return p0
.end method

.method public final c()J
    .locals 3

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j00$a;->a:Lcom/yandex/mobile/ads/impl/j00;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/j00;->c(Lcom/yandex/mobile/ads/impl/j00;)Lcom/yandex/mobile/ads/impl/y22;

    move-result-object v0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/j00;->d(Lcom/yandex/mobile/ads/impl/j00;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/y22;->a(J)J

    move-result-wide v0

    return-wide v0
.end method
