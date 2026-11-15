.class public final synthetic Lsld;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/util/Set;

.field public final synthetic c:Lcom/yandex/mobile/ads/impl/go0;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsld;->b:Ljava/util/Set;

    iput-object p2, p0, Lsld;->c:Lcom/yandex/mobile/ads/impl/go0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lsld;->b:Ljava/util/Set;

    iget-object p0, p0, Lsld;->c:Lcom/yandex/mobile/ads/impl/go0;

    invoke-static {v0, p0}, Lcom/yandex/mobile/ads/impl/km0;->r(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;)V

    return-void
.end method
