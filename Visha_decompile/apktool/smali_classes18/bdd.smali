.class public final synthetic Lbdd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/as0$a;


# instance fields
.field public final synthetic a:Lcom/yandex/mobile/ads/impl/ld$a;

.field public final synthetic b:Lcom/yandex/mobile/ads/impl/es0;

.field public final synthetic c:Lcom/yandex/mobile/ads/impl/lw0;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/ld$a;Lcom/yandex/mobile/ads/impl/es0;Lcom/yandex/mobile/ads/impl/lw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbdd;->a:Lcom/yandex/mobile/ads/impl/ld$a;

    iput-object p2, p0, Lbdd;->b:Lcom/yandex/mobile/ads/impl/es0;

    iput-object p3, p0, Lbdd;->c:Lcom/yandex/mobile/ads/impl/lw0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lbdd;->a:Lcom/yandex/mobile/ads/impl/ld$a;

    iget-object v1, p0, Lbdd;->b:Lcom/yandex/mobile/ads/impl/es0;

    iget-object p0, p0, Lbdd;->c:Lcom/yandex/mobile/ads/impl/lw0;

    check-cast p1, Lcom/yandex/mobile/ads/impl/ld;

    invoke-static {v0, v1, p0, p1}, Lcom/yandex/mobile/ads/impl/ez;->c0(Lcom/yandex/mobile/ads/impl/ld$a;Lcom/yandex/mobile/ads/impl/es0;Lcom/yandex/mobile/ads/impl/lw0;Lcom/yandex/mobile/ads/impl/ld;)V

    return-void
.end method
