.class final Lcom/yandex/mobile/ads/impl/nb$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/nb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/nb;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/nb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/nb$a;->a:Lcom/yandex/mobile/ads/impl/nb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nb$a;->a:Lcom/yandex/mobile/ads/impl/nb;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/nb;->d(Lcom/yandex/mobile/ads/impl/nb;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "url"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nb$a;->a:Lcom/yandex/mobile/ads/impl/nb;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/nb;->c(Lcom/yandex/mobile/ads/impl/nb;)Lcom/yandex/mobile/ads/impl/ff1;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/ff1;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/nb$a;->a:Lcom/yandex/mobile/ads/impl/nb;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/nb;->b(Lcom/yandex/mobile/ads/impl/nb;)Lcom/yandex/mobile/ads/impl/x50;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/x50;->a()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nb$a;->a:Lcom/yandex/mobile/ads/impl/nb;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/nb;->a(Lcom/yandex/mobile/ads/impl/nb;)Landroid/app/Dialog;

    move-result-object p0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/n10;->a(Landroid/app/Dialog;)V

    return-void
.end method
