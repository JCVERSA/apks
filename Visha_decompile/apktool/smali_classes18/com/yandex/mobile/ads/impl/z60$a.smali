.class final Lcom/yandex/mobile/ads/impl/z60$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/og1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/z60;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/z60;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/z60;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/z60$a;->a:Lcom/yandex/mobile/ads/impl/z60;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/z60$a;->a:Lcom/yandex/mobile/ads/impl/z60;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/z60;->a(Lcom/yandex/mobile/ads/impl/z60;)Lcom/yandex/mobile/ads/impl/hi1$b;

    move-result-object p0

    invoke-static {}, Lcom/yandex/mobile/ads/impl/m60;->a()Lcom/yandex/mobile/ads/impl/m60;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/hi1$b;->b(Lcom/yandex/mobile/ads/impl/m60;)V

    return-void
.end method
