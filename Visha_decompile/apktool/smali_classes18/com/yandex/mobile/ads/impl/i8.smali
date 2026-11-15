.class final enum Lcom/yandex/mobile/ads/impl/i8;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/i8$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/mobile/ads/impl/i8;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lcom/yandex/mobile/ads/impl/i8$a;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum d:Lcom/yandex/mobile/ads/impl/i8;

.field public static final enum e:Lcom/yandex/mobile/ads/impl/i8;

.field public static final enum f:Lcom/yandex/mobile/ads/impl/i8;

.field private static final synthetic g:[Lcom/yandex/mobile/ads/impl/i8;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/yandex/mobile/ads/impl/i8;

    const-string v1, "BROWSER_CONTROL_PANEL_HEIGHT"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/yandex/mobile/ads/impl/i8;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/impl/i8;->d:Lcom/yandex/mobile/ads/impl/i8;

    new-instance v1, Lcom/yandex/mobile/ads/impl/i8;

    const/4 v3, 0x1

    const-string v4, "BROWSER_CONTROL_PANEL_BUTTON_PADDING"

    invoke-direct {v1, v3, v4}, Lcom/yandex/mobile/ads/impl/i8;-><init>(ILjava/lang/String;)V

    sput-object v1, Lcom/yandex/mobile/ads/impl/i8;->e:Lcom/yandex/mobile/ads/impl/i8;

    new-instance v3, Lcom/yandex/mobile/ads/impl/i8;

    const/4 v4, 0x2

    const-string v5, "BROWSER_CONTROL_PANEL_TITLE_TEXT_SIZE"

    invoke-direct {v3, v4, v5}, Lcom/yandex/mobile/ads/impl/i8;-><init>(ILjava/lang/String;)V

    sput-object v3, Lcom/yandex/mobile/ads/impl/i8;->f:Lcom/yandex/mobile/ads/impl/i8;

    filled-new-array {v0, v1, v3}, [Lcom/yandex/mobile/ads/impl/i8;

    move-result-object v4

    sput-object v4, Lcom/yandex/mobile/ads/impl/i8;->g:[Lcom/yandex/mobile/ads/impl/i8;

    invoke-static {v4}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Ldb3;

    new-instance v4, Lcom/yandex/mobile/ads/impl/i8$a;

    invoke-direct {v4, v2}, Lcom/yandex/mobile/ads/impl/i8$a;-><init>(I)V

    sput-object v4, Lcom/yandex/mobile/ads/impl/i8;->b:Lcom/yandex/mobile/ads/impl/i8$a;

    const-string v2, "values_dimen_%s"

    const-string v4, "template"

    invoke-static {v2, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/yandex/mobile/ads/impl/i8$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x30

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const-string v5, "values_dimen_%s_sw600dp"

    invoke-static {v5, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/yandex/mobile/ads/impl/i8$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x38

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0, v6}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    invoke-static {v2, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yandex/mobile/ads/impl/i8$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0xf

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0, v6}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    invoke-static {v5, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/yandex/mobile/ads/impl/i8$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    invoke-static {v2, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yandex/mobile/ads/impl/i8$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    invoke-static {v5, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/yandex/mobile/ads/impl/i8$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    filled-new-array/range {v7 .. v12}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/a;->q([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/i8;->c:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/i8;
    .locals 1

    const-class v0, Lcom/yandex/mobile/ads/impl/i8;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/i8;

    return-object p0
.end method

.method public static values()[Lcom/yandex/mobile/ads/impl/i8;
    .locals 1

    sget-object v0, Lcom/yandex/mobile/ads/impl/i8;->g:[Lcom/yandex/mobile/ads/impl/i8;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/mobile/ads/impl/i8;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)I
    .locals 3

    const-string v0, "values_dimen_%s"

    const-string v1, "resourceId"

    const-string v2, "context"

    invoke-static {p1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v2, Lcom/yandex/mobile/ads/impl/i8;->b:Lcom/yandex/mobile/ads/impl/i8$a;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/i8;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/yandex/mobile/ads/impl/i8$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/yandex/mobile/ads/impl/i8;->c:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    :try_start_1
    sget-object p1, Lcom/yandex/mobile/ads/impl/i8;->b:Lcom/yandex/mobile/ads/impl/i8$a;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/yandex/mobile/ads/impl/i8$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/yandex/mobile/ads/impl/i8;->c:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p0, Lcom/yandex/mobile/ads/impl/wh2;->b:I

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/wh2;->c(Landroid/content/Context;)I

    move-result p0

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/wh2;->b(Landroid/content/Context;)I

    move-result p1

    invoke-static {p0, p1}, Lwn8;->g(II)I

    move-result p0

    const/16 p1, 0x258

    if-lt p0, p1, :cond_0

    const-string p0, "_sw600dp"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
