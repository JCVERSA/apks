.class public final synthetic Lcom/yandex/mobile/ads/impl/lr2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/sl$a;

.field public final synthetic c:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/sl$a;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/lr2;->b:Lcom/yandex/mobile/ads/impl/sl$a;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/lr2;->c:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lr2;->b:Lcom/yandex/mobile/ads/impl/sl$a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lr2;->c:Landroid/graphics/Bitmap;

    invoke-static {v0, p0}, Lcom/yandex/mobile/ads/impl/sl$a;->b(Lcom/yandex/mobile/ads/impl/sl$a;Landroid/graphics/Bitmap;)V

    return-void
.end method
