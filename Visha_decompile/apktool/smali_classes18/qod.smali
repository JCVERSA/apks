.class public final synthetic Lqod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/o02;

.field public final synthetic c:Landroid/graphics/RectF;

.field public final synthetic d:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/o02;Landroid/graphics/RectF;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqod;->b:Lcom/yandex/mobile/ads/impl/o02;

    iput-object p2, p0, Lqod;->c:Landroid/graphics/RectF;

    iput-object p3, p0, Lqod;->d:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lqod;->b:Lcom/yandex/mobile/ads/impl/o02;

    iget-object v1, p0, Lqod;->c:Landroid/graphics/RectF;

    iget-object p0, p0, Lqod;->d:Landroid/widget/ImageView;

    invoke-static {v0, v1, p0}, Lcom/yandex/mobile/ads/impl/o02;->b(Lcom/yandex/mobile/ads/impl/o02;Landroid/graphics/RectF;Landroid/widget/ImageView;)V

    return-void
.end method
