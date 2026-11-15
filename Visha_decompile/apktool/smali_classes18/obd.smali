.class public final synthetic Lobd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/ed1;

.field public final synthetic c:Lcom/yandex/mobile/ads/impl/ed1$b;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/ed1;Lcom/yandex/mobile/ads/impl/ed1$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lobd;->b:Lcom/yandex/mobile/ads/impl/ed1;

    iput-object p2, p0, Lobd;->c:Lcom/yandex/mobile/ads/impl/ed1$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lobd;->b:Lcom/yandex/mobile/ads/impl/ed1;

    iget-object p0, p0, Lobd;->c:Lcom/yandex/mobile/ads/impl/ed1$b;

    invoke-static {v0, p0}, Lcom/yandex/mobile/ads/impl/ed1;->a(Lcom/yandex/mobile/ads/impl/ed1;Lcom/yandex/mobile/ads/impl/ed1$b;)V

    return-void
.end method
