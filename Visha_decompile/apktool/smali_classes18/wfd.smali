.class public final synthetic Lwfd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/g4;

.field public final synthetic c:Lcom/yandex/mobile/ads/impl/k4;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/g4;Lcom/yandex/mobile/ads/impl/k4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwfd;->b:Lcom/yandex/mobile/ads/impl/g4;

    iput-object p2, p0, Lwfd;->c:Lcom/yandex/mobile/ads/impl/k4;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lwfd;->b:Lcom/yandex/mobile/ads/impl/g4;

    iget-object p0, p0, Lwfd;->c:Lcom/yandex/mobile/ads/impl/k4;

    invoke-static {v0, p0}, Lcom/yandex/mobile/ads/impl/g4;->b(Lcom/yandex/mobile/ads/impl/g4;Lcom/yandex/mobile/ads/impl/k4;)V

    return-void
.end method
