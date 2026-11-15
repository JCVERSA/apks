.class public final enum Lcom/yandex/mobile/ads/impl/th2;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/tq0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/mobile/ads/impl/th2;",
        ">;",
        "Lcom/yandex/mobile/ads/impl/tq0;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/yandex/mobile/ads/impl/th2;

.field public static final enum d:Lcom/yandex/mobile/ads/impl/th2;

.field public static final enum e:Lcom/yandex/mobile/ads/impl/th2;

.field private static final synthetic f:[Lcom/yandex/mobile/ads/impl/th2;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/yandex/mobile/ads/impl/th2;

    const-string v1, "DEFAULT"

    const-string v2, "default"

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/yandex/mobile/ads/impl/th2;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/impl/th2;->c:Lcom/yandex/mobile/ads/impl/th2;

    new-instance v1, Lcom/yandex/mobile/ads/impl/th2;

    const-string v2, "LOADING"

    const-string v3, "loading"

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lcom/yandex/mobile/ads/impl/th2;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/yandex/mobile/ads/impl/th2;->d:Lcom/yandex/mobile/ads/impl/th2;

    new-instance v2, Lcom/yandex/mobile/ads/impl/th2;

    const-string v3, "HIDDEN"

    const-string v4, "hidden"

    const/4 v5, 0x2

    invoke-direct {v2, v5, v3, v4}, Lcom/yandex/mobile/ads/impl/th2;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/yandex/mobile/ads/impl/th2;->e:Lcom/yandex/mobile/ads/impl/th2;

    filled-new-array {v0, v1, v2}, [Lcom/yandex/mobile/ads/impl/th2;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/th2;->f:[Lcom/yandex/mobile/ads/impl/th2;

    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Ldb3;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/th2;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/th2;
    .locals 1

    const-class v0, Lcom/yandex/mobile/ads/impl/th2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/th2;

    return-object p0
.end method

.method public static values()[Lcom/yandex/mobile/ads/impl/th2;
    .locals 1

    sget-object v0, Lcom/yandex/mobile/ads/impl/th2;->f:[Lcom/yandex/mobile/ads/impl/th2;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/mobile/ads/impl/th2;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/th2;->b:Ljava/lang/String;

    invoke-static {p0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lhz9;->a:Lhz9;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "state: %s"

    const-string v1, "format(...)"

    const/4 v2, 0x1

    invoke-static {p0, v2, v0, v1}, Lcom/yandex/mobile/ads/impl/z0;->a([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
