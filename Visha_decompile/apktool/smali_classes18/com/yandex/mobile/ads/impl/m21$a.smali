.class final Lcom/yandex/mobile/ads/impl/m21$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/bh0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/m21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/m21;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/m21;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/m21$a;->a:Lcom/yandex/mobile/ads/impl/m21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m21$a;->a:Lcom/yandex/mobile/ads/impl/m21;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/m21;->a(Lcom/yandex/mobile/ads/impl/m21;)Lcom/yandex/mobile/ads/impl/yf1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/yf1;->a()V

    return-void
.end method

.method public final a(I)V
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m21$a;->a:Lcom/yandex/mobile/ads/impl/m21;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/m21;->a(Lcom/yandex/mobile/ads/impl/m21;)Lcom/yandex/mobile/ads/impl/yf1;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/yf1;->a(I)V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m21$a;->a:Lcom/yandex/mobile/ads/impl/m21;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/m21;->a(Lcom/yandex/mobile/ads/impl/m21;)Lcom/yandex/mobile/ads/impl/yf1;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/yf1;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
