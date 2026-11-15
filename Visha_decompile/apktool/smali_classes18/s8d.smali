.class public final synthetic Ls8d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/ck;

.field public final synthetic c:Lcom/yandex/mobile/ads/impl/v7;

.field public final synthetic d:Lcom/yandex/mobile/ads/impl/p82;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/ck;Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/p82;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls8d;->b:Lcom/yandex/mobile/ads/impl/ck;

    iput-object p2, p0, Ls8d;->c:Lcom/yandex/mobile/ads/impl/v7;

    iput-object p3, p0, Ls8d;->d:Lcom/yandex/mobile/ads/impl/p82;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ls8d;->b:Lcom/yandex/mobile/ads/impl/ck;

    iget-object v1, p0, Ls8d;->c:Lcom/yandex/mobile/ads/impl/v7;

    iget-object p0, p0, Ls8d;->d:Lcom/yandex/mobile/ads/impl/p82;

    invoke-static {v0, v1, p0}, Lcom/yandex/mobile/ads/impl/ck;->b(Lcom/yandex/mobile/ads/impl/ck;Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/p82;)V

    return-void
.end method
