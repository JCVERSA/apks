.class public final Lcom/yandex/mobile/ads/impl/wk0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/yandex/mobile/ads/impl/vk0;

.field private static final b:Lcom/yandex/mobile/ads/impl/vk0;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/yandex/mobile/ads/impl/vk0;

    sget-object v1, Lcom/yandex/mobile/ads/impl/op1$b;->S:Lcom/yandex/mobile/ads/impl/op1$b;

    sget-object v2, Lcom/yandex/mobile/ads/impl/op1$b;->R:Lcom/yandex/mobile/ads/impl/op1$b;

    sget-object v3, Lcom/yandex/mobile/ads/impl/op1$b;->T:Lcom/yandex/mobile/ads/impl/op1$b;

    sget-object v4, Lcom/yandex/mobile/ads/impl/op1$b;->U:Lcom/yandex/mobile/ads/impl/op1$b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yandex/mobile/ads/impl/vk0;-><init>(Lcom/yandex/mobile/ads/impl/op1$b;Lcom/yandex/mobile/ads/impl/op1$b;Lcom/yandex/mobile/ads/impl/op1$b;Lcom/yandex/mobile/ads/impl/op1$b;)V

    sput-object v0, Lcom/yandex/mobile/ads/impl/wk0;->a:Lcom/yandex/mobile/ads/impl/vk0;

    new-instance v0, Lcom/yandex/mobile/ads/impl/vk0;

    sget-object v1, Lcom/yandex/mobile/ads/impl/op1$b;->y:Lcom/yandex/mobile/ads/impl/op1$b;

    sget-object v2, Lcom/yandex/mobile/ads/impl/op1$b;->x:Lcom/yandex/mobile/ads/impl/op1$b;

    sget-object v3, Lcom/yandex/mobile/ads/impl/op1$b;->z:Lcom/yandex/mobile/ads/impl/op1$b;

    sget-object v4, Lcom/yandex/mobile/ads/impl/op1$b;->A:Lcom/yandex/mobile/ads/impl/op1$b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yandex/mobile/ads/impl/vk0;-><init>(Lcom/yandex/mobile/ads/impl/op1$b;Lcom/yandex/mobile/ads/impl/op1$b;Lcom/yandex/mobile/ads/impl/op1$b;Lcom/yandex/mobile/ads/impl/op1$b;)V

    sput-object v0, Lcom/yandex/mobile/ads/impl/wk0;->b:Lcom/yandex/mobile/ads/impl/vk0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/yandex/mobile/ads/impl/s9;)Lcom/yandex/mobile/ads/impl/vk0;
    .locals 1

    const-string v0, "adStructureType"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yandex/mobile/ads/impl/wk0;->b:Lcom/yandex/mobile/ads/impl/vk0;

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Lcom/yandex/mobile/ads/impl/wk0;->a:Lcom/yandex/mobile/ads/impl/vk0;

    :goto_0
    return-object p0
.end method
