.class final Lcom/yandex/mobile/ads/impl/qo1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/qo1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private final b:Lcom/yandex/mobile/ads/impl/u7;

.field final synthetic c:Lcom/yandex/mobile/ads/impl/qo1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/qo1;Lcom/yandex/mobile/ads/impl/u7;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/u7;",
            ")V"
        }
    .end annotation

    const-string v0, "adRenderingValidator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/qo1$a;->c:Lcom/yandex/mobile/ads/impl/qo1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/qo1$a;->b:Lcom/yandex/mobile/ads/impl/u7;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qo1$a;->c:Lcom/yandex/mobile/ads/impl/qo1;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/qo1;->a(Lcom/yandex/mobile/ads/impl/qo1;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qo1$a;->b:Lcom/yandex/mobile/ads/impl/u7;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/u7;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qo1$a;->c:Lcom/yandex/mobile/ads/impl/qo1;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/qo1;->d(Lcom/yandex/mobile/ads/impl/qo1;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qo1$a;->c:Lcom/yandex/mobile/ads/impl/qo1;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/qo1;->b(Lcom/yandex/mobile/ads/impl/qo1;)Lcom/yandex/mobile/ads/impl/qo1$b;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/qo1$b;->a()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/yandex/mobile/ads/impl/qo1$a;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/qo1$a;->c:Lcom/yandex/mobile/ads/impl/qo1;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/qo1$a;->b:Lcom/yandex/mobile/ads/impl/u7;

    invoke-direct {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/qo1$a;-><init>(Lcom/yandex/mobile/ads/impl/qo1;Lcom/yandex/mobile/ads/impl/u7;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qo1$a;->c:Lcom/yandex/mobile/ads/impl/qo1;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/qo1;->c(Lcom/yandex/mobile/ads/impl/qo1;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method
