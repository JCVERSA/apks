.class public final synthetic Lesd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Landroid/view/Display;

.field public final synthetic c:Landroid/graphics/Point;

.field public final synthetic d:Lcom/yandex/mobile/ads/impl/rt1;


# direct methods
.method public synthetic constructor <init>(Landroid/view/Display;Landroid/graphics/Point;Lcom/yandex/mobile/ads/impl/rt1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lesd;->b:Landroid/view/Display;

    iput-object p2, p0, Lesd;->c:Landroid/graphics/Point;

    iput-object p3, p0, Lesd;->d:Lcom/yandex/mobile/ads/impl/rt1;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lesd;->b:Landroid/view/Display;

    iget-object v1, p0, Lesd;->c:Landroid/graphics/Point;

    iget-object p0, p0, Lesd;->d:Lcom/yandex/mobile/ads/impl/rt1;

    invoke-static {v0, v1, p0}, Lcom/yandex/mobile/ads/impl/rt1;->b(Landroid/view/Display;Landroid/graphics/Point;Lcom/yandex/mobile/ads/impl/rt1;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method
