.class public final Lcom/yandex/mobile/ads/impl/mg1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/mg1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lcom/yandex/mobile/ads/impl/mg1$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/mobile/ads/impl/mg1$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/mg1$a;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/mg1$a;->a:Lcom/yandex/mobile/ads/impl/mg1$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Z)Lcom/yandex/mobile/ads/impl/mg1;
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string v1, "handler"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/ng1;

    invoke-direct {v1, p0, v0}, Lcom/yandex/mobile/ads/impl/ng1;-><init>(ZLandroid/os/Handler;)V

    return-object v1
.end method
