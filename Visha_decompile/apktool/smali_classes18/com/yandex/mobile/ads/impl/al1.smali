.class public final Lcom/yandex/mobile/ads/impl/al1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/gf2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/gf2;)V
    .locals 1

    const-string v0, "videoPlayerController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/al1;->a:Lcom/yandex/mobile/ads/impl/gf2;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/al1;->a:Lcom/yandex/mobile/ads/impl/gf2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/gf2;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
