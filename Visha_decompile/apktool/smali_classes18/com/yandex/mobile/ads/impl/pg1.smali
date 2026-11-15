.class public final Lcom/yandex/mobile/ads/impl/pg1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/yandex/mobile/ads/impl/mg1;
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string v1, "handler"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/yandex/mobile/ads/impl/mg1;->a:I

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/ng1;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lcom/yandex/mobile/ads/impl/ng1;-><init>(ZLandroid/os/Handler;)V

    return-object v1
.end method
