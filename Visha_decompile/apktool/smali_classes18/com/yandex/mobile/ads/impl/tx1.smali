.class public final Lcom/yandex/mobile/ads/impl/tx1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/sx1;


# instance fields
.field private final b:Lcom/yandex/mobile/ads/impl/ps0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ps0;)V
    .locals 1

    const-string v0, "localStorage"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/tx1;->b:Lcom/yandex/mobile/ads/impl/ps0;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/tx1;->b:Lcom/yandex/mobile/ads/impl/ps0;

    const-string v0, "SessionData"

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/ps0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/tx1;->b:Lcom/yandex/mobile/ads/impl/ps0;

    const-string v0, "SessionData"

    invoke-interface {p0, v0, p1}, Lcom/yandex/mobile/ads/impl/ps0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
