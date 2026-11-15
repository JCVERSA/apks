.class public final synthetic Lcom/yandex/mobile/ads/impl/wr2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/t60;

.field public final synthetic c:Lcom/yandex/mobile/ads/impl/ni1;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/t60;Lcom/yandex/mobile/ads/impl/ni1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/wr2;->b:Lcom/yandex/mobile/ads/impl/t60;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/wr2;->c:Lcom/yandex/mobile/ads/impl/ni1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/wr2;->b:Lcom/yandex/mobile/ads/impl/t60;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wr2;->c:Lcom/yandex/mobile/ads/impl/ni1;

    invoke-static {v0, p0}, Lcom/yandex/mobile/ads/impl/t60;->b(Lcom/yandex/mobile/ads/impl/t60;Lcom/yandex/mobile/ads/impl/ni1;)V

    return-void
.end method
