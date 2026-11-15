.class public final Lcom/yandex/mobile/ads/impl/r91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ff1;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/v9;

.field private final b:Lcom/yandex/mobile/ads/impl/f42;

.field private final c:Lcom/yandex/mobile/ads/impl/tp1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/v9;Lcom/yandex/mobile/ads/impl/f42;Lcom/yandex/mobile/ads/impl/tp1;)V
    .locals 1

    const-string v0, "adTracker"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetUrlHandler"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reporter"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/r91;->a:Lcom/yandex/mobile/ads/impl/v9;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/r91;->b:Lcom/yandex/mobile/ads/impl/f42;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/r91;->c:Lcom/yandex/mobile/ads/impl/tp1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/r91;->a:Lcom/yandex/mobile/ads/impl/v9;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/r91;->b:Lcom/yandex/mobile/ads/impl/f42;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/r91;->c:Lcom/yandex/mobile/ads/impl/tp1;

    invoke-virtual {v0, p1, v1, p0}, Lcom/yandex/mobile/ads/impl/v9;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/f42;Lcom/yandex/mobile/ads/impl/tp1;)V

    return-void
.end method
