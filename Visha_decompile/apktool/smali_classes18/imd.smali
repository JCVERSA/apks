.class public final synthetic Limd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/pz0$a;


# instance fields
.field public final synthetic a:Lcom/yandex/mobile/ads/impl/ld1;

.field public final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/ld1;Ljava/util/concurrent/CountDownLatch;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Limd;->a:Lcom/yandex/mobile/ads/impl/ld1;

    iput-object p2, p0, Limd;->b:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Limd;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Limd;->a:Lcom/yandex/mobile/ads/impl/ld1;

    iget-object v1, p0, Limd;->b:Ljava/util/concurrent/CountDownLatch;

    iget-object p0, p0, Limd;->c:Ljava/util/ArrayList;

    invoke-static {v0, v1, p0, p1}, Lcom/yandex/mobile/ads/impl/ld1;->b(Lcom/yandex/mobile/ads/impl/ld1;Ljava/util/concurrent/CountDownLatch;Ljava/util/ArrayList;Lorg/json/JSONObject;)V

    return-void
.end method
