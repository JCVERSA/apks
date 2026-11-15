.class public final synthetic Ljwd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/vj2;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/vj2;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljwd;->b:Lcom/yandex/mobile/ads/impl/vj2;

    iput-object p2, p0, Ljwd;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ljwd;->b:Lcom/yandex/mobile/ads/impl/vj2;

    iget-object p0, p0, Ljwd;->c:Ljava/util/Map;

    invoke-static {v0, p0}, Lcom/yandex/mobile/ads/impl/vj2;->b(Lcom/yandex/mobile/ads/impl/vj2;Ljava/util/Map;)V

    return-void
.end method
