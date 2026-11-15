.class public final synthetic Lvqd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/q12;

.field public final synthetic c:Landroid/graphics/SurfaceTexture;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/q12;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvqd;->b:Lcom/yandex/mobile/ads/impl/q12;

    iput-object p2, p0, Lvqd;->c:Landroid/graphics/SurfaceTexture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lvqd;->b:Lcom/yandex/mobile/ads/impl/q12;

    iget-object p0, p0, Lvqd;->c:Landroid/graphics/SurfaceTexture;

    invoke-static {v0, p0}, Lcom/yandex/mobile/ads/impl/q12;->b(Lcom/yandex/mobile/ads/impl/q12;Landroid/graphics/SurfaceTexture;)V

    return-void
.end method
