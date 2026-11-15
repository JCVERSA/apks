.class final Lcom/yandex/mobile/ads/impl/sl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/sl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final b:Landroid/graphics/Bitmap;

.field private final c:Lcom/yandex/mobile/ads/impl/sl$b;

.field private final d:Landroid/os/Handler;

.field private final e:Lcom/yandex/mobile/ads/impl/yl;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/yandex/mobile/ads/impl/fp1;Landroid/os/Handler;Lcom/yandex/mobile/ads/impl/yl;)V
    .locals 1

    const-string v0, "originalBitmap"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blurredBitmapProvider"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sl$a;->b:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/sl$a;->c:Lcom/yandex/mobile/ads/impl/sl$b;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/sl$a;->d:Landroid/os/Handler;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/sl$a;->e:Lcom/yandex/mobile/ads/impl/yl;

    return-void
.end method

.method private final a(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sl$a;->d:Landroid/os/Handler;

    new-instance v1, Lcom/yandex/mobile/ads/impl/lr2;

    invoke-direct {v1, p0, p1}, Lcom/yandex/mobile/ads/impl/lr2;-><init>(Lcom/yandex/mobile/ads/impl/sl$a;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/sl$a;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 2
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$blurredBitmap"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sl$a;->c:Lcom/yandex/mobile/ads/impl/sl$b;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/sl$b;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/sl$a;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/sl$a;->a(Lcom/yandex/mobile/ads/impl/sl$a;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sl$a;->e:Lcom/yandex/mobile/ads/impl/yl;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/sl$a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide v2, 0x3fb999999999999aL    # 0.1

    invoke-static {v1, v2, v3}, Lcom/yandex/mobile/ads/impl/yl;->a(Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/sl$a;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
