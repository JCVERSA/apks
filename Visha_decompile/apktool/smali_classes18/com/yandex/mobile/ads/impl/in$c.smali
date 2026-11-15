.class public final Lcom/yandex/mobile/ads/impl/in$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ws;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/in;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/in;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/in;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/in$c;->a:Lcom/yandex/mobile/ads/impl/in;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/us;)V
    .locals 1

    .line 3
    const-string v0, "appOpenAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/in$c;->a:Lcom/yandex/mobile/ads/impl/in;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/in;->a(Lcom/yandex/mobile/ads/impl/in;)Lcom/yandex/mobile/ads/impl/ws;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/ws;->a(Lcom/yandex/mobile/ads/impl/us;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/w3;)V
    .locals 1

    .line 1
    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/in$c;->a:Lcom/yandex/mobile/ads/impl/in;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/in;->a(Lcom/yandex/mobile/ads/impl/in;)Lcom/yandex/mobile/ads/impl/ws;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/ws;->a(Lcom/yandex/mobile/ads/impl/w3;)V

    :cond_0
    return-void
.end method
