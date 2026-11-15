.class public final Lcom/yandex/mobile/ads/impl/qu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkotlinx/coroutines/c;

.field private static final b:Lrx5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/qu;->a:Lkotlinx/coroutines/c;

    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object v0

    invoke-virtual {v0}, Lrx5;->b()Lrx5;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/qu;->b:Lrx5;

    invoke-static {}, Lmc2;->a()Lkotlinx/coroutines/c;

    return-void
.end method

.method public static a()Lkotlinx/coroutines/c;
    .locals 1

    sget-object v0, Lcom/yandex/mobile/ads/impl/qu;->a:Lkotlinx/coroutines/c;

    return-object v0
.end method

.method public static b()Lrx5;
    .locals 1

    sget-object v0, Lcom/yandex/mobile/ads/impl/qu;->b:Lrx5;

    return-object v0
.end method
