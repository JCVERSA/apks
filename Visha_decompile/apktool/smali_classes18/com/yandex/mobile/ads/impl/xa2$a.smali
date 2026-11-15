.class public final enum Lcom/yandex/mobile/ads/impl/xa2$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/xa2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/mobile/ads/impl/xa2$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/yandex/mobile/ads/impl/xa2$a;

.field public static final enum d:Lcom/yandex/mobile/ads/impl/xa2$a;

.field private static final synthetic e:[Lcom/yandex/mobile/ads/impl/xa2$a;


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/yandex/mobile/ads/impl/xa2$a;

    const-string v1, "VERIFICATION_REJECTED"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/yandex/mobile/ads/impl/xa2$a;-><init>(IILjava/lang/String;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/xa2$a;

    const-string v2, "VERIFICATION_NOT_SUPPORTED"

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4, v2}, Lcom/yandex/mobile/ads/impl/xa2$a;-><init>(IILjava/lang/String;)V

    sput-object v1, Lcom/yandex/mobile/ads/impl/xa2$a;->c:Lcom/yandex/mobile/ads/impl/xa2$a;

    new-instance v2, Lcom/yandex/mobile/ads/impl/xa2$a;

    const/4 v3, 0x3

    const-string v5, "ERROR_RESOURCE_LOAD"

    invoke-direct {v2, v4, v3, v5}, Lcom/yandex/mobile/ads/impl/xa2$a;-><init>(IILjava/lang/String;)V

    sput-object v2, Lcom/yandex/mobile/ads/impl/xa2$a;->d:Lcom/yandex/mobile/ads/impl/xa2$a;

    filled-new-array {v0, v1, v2}, [Lcom/yandex/mobile/ads/impl/xa2$a;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/xa2$a;->e:[Lcom/yandex/mobile/ads/impl/xa2$a;

    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Ldb3;

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lcom/yandex/mobile/ads/impl/xa2$a;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/xa2$a;
    .locals 1

    const-class v0, Lcom/yandex/mobile/ads/impl/xa2$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/xa2$a;

    return-object p0
.end method

.method public static values()[Lcom/yandex/mobile/ads/impl/xa2$a;
    .locals 1

    sget-object v0, Lcom/yandex/mobile/ads/impl/xa2$a;->e:[Lcom/yandex/mobile/ads/impl/xa2$a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/mobile/ads/impl/xa2$a;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/xa2$a;->b:I

    return p0
.end method
