.class public final synthetic Lu4e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/zi;

.field public final synthetic c:Lcom/yandex/mobile/ads/impl/t4;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/zi;Lcom/yandex/mobile/ads/impl/t4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu4e;->b:Lcom/yandex/mobile/ads/impl/zi;

    iput-object p2, p0, Lu4e;->c:Lcom/yandex/mobile/ads/impl/t4;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lu4e;->b:Lcom/yandex/mobile/ads/impl/zi;

    iget-object p0, p0, Lu4e;->c:Lcom/yandex/mobile/ads/impl/t4;

    invoke-static {v0, p0}, Lcom/yandex/mobile/ads/impl/zi;->f(Lcom/yandex/mobile/ads/impl/zi;Lcom/yandex/mobile/ads/impl/t4;)V

    return-void
.end method
