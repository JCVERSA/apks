.class public final Lcom/yandex/mobile/ads/impl/uo0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/uf2;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/tg2;

.field private final b:Lcom/yandex/mobile/ads/impl/wo0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/qd2;Lcom/yandex/mobile/ads/impl/vo0;Lcom/yandex/mobile/ads/impl/tg2;Lcom/yandex/mobile/ads/impl/wo0;)V
    .locals 1

    const-string v0, "adBreak"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoAdInfo"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "statusController"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "viewProvider"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "containerVisibleAreaValidator"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoVisibleStartValidator"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/uo0;->a:Lcom/yandex/mobile/ads/impl/tg2;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/uo0;->b:Lcom/yandex/mobile/ads/impl/wo0;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/uo0;->b:Lcom/yandex/mobile/ads/impl/wo0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/wo0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uo0;->a:Lcom/yandex/mobile/ads/impl/tg2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/tg2;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
