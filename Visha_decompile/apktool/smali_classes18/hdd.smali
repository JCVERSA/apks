.class public final synthetic Lhdd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/as0$a;


# instance fields
.field public final synthetic a:Lcom/yandex/mobile/ads/impl/ld$a;

.field public final synthetic b:Lcom/yandex/mobile/ads/impl/yh1;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/ld$a;Lcom/yandex/mobile/ads/impl/yh1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhdd;->a:Lcom/yandex/mobile/ads/impl/ld$a;

    iput-object p2, p0, Lhdd;->b:Lcom/yandex/mobile/ads/impl/yh1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lhdd;->a:Lcom/yandex/mobile/ads/impl/ld$a;

    iget-object p0, p0, Lhdd;->b:Lcom/yandex/mobile/ads/impl/yh1;

    check-cast p1, Lcom/yandex/mobile/ads/impl/ld;

    invoke-static {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/ez;->u(Lcom/yandex/mobile/ads/impl/ld$a;Lcom/yandex/mobile/ads/impl/yh1;Lcom/yandex/mobile/ads/impl/ld;)V

    return-void
.end method
