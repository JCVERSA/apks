.class public final Lcom/yandex/mobile/ads/impl/uj0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/uj0;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(II)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/uj0;->a:Landroid/content/Context;

    const-string v1, "context"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/yandex/mobile/ads/impl/wh2;->a(Landroid/content/Context;I)I

    move-result p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uj0;->a:Landroid/content/Context;

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p2}, Lcom/yandex/mobile/ads/impl/wh2;->a(Landroid/content/Context;I)I

    move-result p0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/sp0;->a([Ljava/lang/Object;)V

    const/16 p2, 0x140

    if-ge p1, p2, :cond_3

    const/16 p2, 0xf0

    if-lt p0, p2, :cond_0

    goto :goto_1

    :cond_0
    const/16 p2, 0xa0

    if-ge p1, p2, :cond_2

    if-lt p0, p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "small"

    goto :goto_2

    :cond_2
    :goto_0
    const-string p0, "medium"

    goto :goto_2

    :cond_3
    :goto_1
    const-string p0, "large"

    :goto_2
    return-object p0
.end method
