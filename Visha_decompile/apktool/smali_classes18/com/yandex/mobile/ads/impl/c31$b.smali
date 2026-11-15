.class public final Lcom/yandex/mobile/ads/impl/c31$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/w21$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/c31;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/d31;

.field private final b:Lcom/yandex/mobile/ads/impl/c31$a;

.field private final c:Lcom/yandex/mobile/ads/impl/wu0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/d31;Lcom/yandex/mobile/ads/impl/c31$a;Lcom/yandex/mobile/ads/impl/wu0;)V
    .locals 1

    const-string v0, "mraidWebViewPool"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "media"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/c31$b;->a:Lcom/yandex/mobile/ads/impl/d31;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/c31$b;->b:Lcom/yandex/mobile/ads/impl/c31$a;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/c31$b;->c:Lcom/yandex/mobile/ads/impl/wu0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/c31$b;->a:Lcom/yandex/mobile/ads/impl/d31;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/c31$b;->c:Lcom/yandex/mobile/ads/impl/wu0;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/d31;->b(Lcom/yandex/mobile/ads/impl/wu0;)Lcom/yandex/mobile/ads/impl/w21;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/c31$b;->b:Lcom/yandex/mobile/ads/impl/c31$a;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/c31$a;->a()V

    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/c31$b;->b:Lcom/yandex/mobile/ads/impl/c31$a;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/c31$a;->a()V

    return-void
.end method
