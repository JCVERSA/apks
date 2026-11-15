.class public final enum Lcom/yandex/mobile/ads/impl/kr;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/mobile/ads/impl/kr;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/yandex/mobile/ads/impl/kr;

.field public static final enum d:Lcom/yandex/mobile/ads/impl/kr;

.field private static final synthetic e:[Lcom/yandex/mobile/ads/impl/kr;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/yandex/mobile/ads/impl/kr;

    const-string v1, "NETWORK"

    const-string v2, "network"

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/yandex/mobile/ads/impl/kr;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/impl/kr;->c:Lcom/yandex/mobile/ads/impl/kr;

    new-instance v1, Lcom/yandex/mobile/ads/impl/kr;

    const-string v2, "CACHE"

    const-string v3, "cache"

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lcom/yandex/mobile/ads/impl/kr;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/yandex/mobile/ads/impl/kr;->d:Lcom/yandex/mobile/ads/impl/kr;

    filled-new-array {v0, v1}, [Lcom/yandex/mobile/ads/impl/kr;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/kr;->e:[Lcom/yandex/mobile/ads/impl/kr;

    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Ldb3;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/kr;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/kr;
    .locals 1

    const-class v0, Lcom/yandex/mobile/ads/impl/kr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/kr;

    return-object p0
.end method

.method public static values()[Lcom/yandex/mobile/ads/impl/kr;
    .locals 1

    sget-object v0, Lcom/yandex/mobile/ads/impl/kr;->e:[Lcom/yandex/mobile/ads/impl/kr;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/mobile/ads/impl/kr;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/kr;->b:Ljava/lang/String;

    return-object p0
.end method
