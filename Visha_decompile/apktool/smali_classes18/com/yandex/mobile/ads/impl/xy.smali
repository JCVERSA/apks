.class public final enum Lcom/yandex/mobile/ads/impl/xy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/xy$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/mobile/ads/impl/xy;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lcom/yandex/mobile/ads/impl/xy$a;

.field public static final enum c:Lcom/yandex/mobile/ads/impl/xy;

.field public static final enum d:Lcom/yandex/mobile/ads/impl/xy;

.field private static final synthetic e:[Lcom/yandex/mobile/ads/impl/xy;

.field private static final synthetic f:Ldb3;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/yandex/mobile/ads/impl/xy;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/yandex/mobile/ads/impl/xy;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/impl/xy;->c:Lcom/yandex/mobile/ads/impl/xy;

    new-instance v1, Lcom/yandex/mobile/ads/impl/xy;

    const/4 v3, 0x1

    const-string v4, "RESULT"

    invoke-direct {v1, v3, v4}, Lcom/yandex/mobile/ads/impl/xy;-><init>(ILjava/lang/String;)V

    sput-object v1, Lcom/yandex/mobile/ads/impl/xy;->d:Lcom/yandex/mobile/ads/impl/xy;

    filled-new-array {v0, v1}, [Lcom/yandex/mobile/ads/impl/xy;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/xy;->e:[Lcom/yandex/mobile/ads/impl/xy;

    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Ldb3;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/xy;->f:Ldb3;

    new-instance v0, Lcom/yandex/mobile/ads/impl/xy$a;

    invoke-direct {v0, v2}, Lcom/yandex/mobile/ads/impl/xy$a;-><init>(I)V

    sput-object v0, Lcom/yandex/mobile/ads/impl/xy;->b:Lcom/yandex/mobile/ads/impl/xy$a;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()Ldb3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldb3;"
        }
    .end annotation

    sget-object v0, Lcom/yandex/mobile/ads/impl/xy;->f:Ldb3;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/xy;
    .locals 1

    const-class v0, Lcom/yandex/mobile/ads/impl/xy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/xy;

    return-object p0
.end method

.method public static values()[Lcom/yandex/mobile/ads/impl/xy;
    .locals 1

    sget-object v0, Lcom/yandex/mobile/ads/impl/xy;->e:[Lcom/yandex/mobile/ads/impl/xy;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/mobile/ads/impl/xy;

    return-object v0
.end method
