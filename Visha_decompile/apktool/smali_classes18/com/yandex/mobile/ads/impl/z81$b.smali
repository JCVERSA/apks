.class final Lcom/yandex/mobile/ads/impl/z81$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/j62;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/z81;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/z81;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/z81;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/z81$b;->a:Lcom/yandex/mobile/ads/impl/z81;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/yandex/mobile/ads/impl/n92;
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/z81$b;->a:Lcom/yandex/mobile/ads/impl/z81;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/z81;->f()Lcom/yandex/mobile/ads/impl/na1;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/z81$b;->a:Lcom/yandex/mobile/ads/impl/z81;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/z81;->a(Lcom/yandex/mobile/ads/impl/z81;)Landroid/content/Context;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/na1;->b(Landroid/content/Context;I)Lcom/yandex/mobile/ads/impl/n92;

    move-result-object p0

    return-object p0
.end method

.method public final b(I)Lcom/yandex/mobile/ads/impl/n92;
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/z81$b;->a:Lcom/yandex/mobile/ads/impl/z81;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/z81;->f()Lcom/yandex/mobile/ads/impl/na1;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/z81$b;->a:Lcom/yandex/mobile/ads/impl/z81;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/z81;->a(Lcom/yandex/mobile/ads/impl/z81;)Landroid/content/Context;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/na1;->a(Landroid/content/Context;I)Lcom/yandex/mobile/ads/impl/n92;

    move-result-object p0

    return-object p0
.end method
