.class public final synthetic Lfcd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/as0$a;


# instance fields
.field public final synthetic a:Lcom/yandex/mobile/ads/impl/ld$a;

.field public final synthetic b:Lcom/yandex/mobile/ads/impl/jc0;

.field public final synthetic c:Lcom/yandex/mobile/ads/impl/ty;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/ld$a;Lcom/yandex/mobile/ads/impl/jc0;Lcom/yandex/mobile/ads/impl/ty;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfcd;->a:Lcom/yandex/mobile/ads/impl/ld$a;

    iput-object p2, p0, Lfcd;->b:Lcom/yandex/mobile/ads/impl/jc0;

    iput-object p3, p0, Lfcd;->c:Lcom/yandex/mobile/ads/impl/ty;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lfcd;->a:Lcom/yandex/mobile/ads/impl/ld$a;

    iget-object v1, p0, Lfcd;->b:Lcom/yandex/mobile/ads/impl/jc0;

    iget-object p0, p0, Lfcd;->c:Lcom/yandex/mobile/ads/impl/ty;

    check-cast p1, Lcom/yandex/mobile/ads/impl/ld;

    invoke-static {v0, v1, p0, p1}, Lcom/yandex/mobile/ads/impl/ez;->w(Lcom/yandex/mobile/ads/impl/ld$a;Lcom/yandex/mobile/ads/impl/jc0;Lcom/yandex/mobile/ads/impl/ty;Lcom/yandex/mobile/ads/impl/ld;)V

    return-void
.end method
