.class public abstract Lcom/yandex/div2/d3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/d3$a;,
        Lcom/yandex/div2/d3$b;,
        Lcom/yandex/div2/d3$c;,
        Lcom/yandex/div2/d3$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/d3$a;

.field public static final b:Lcom/yandex/div2/DivRadialGradientCenter$c;

.field public static final c:Lcom/yandex/div2/DivRadialGradientCenter$c;

.field public static final d:Lcom/yandex/div2/DivRadialGradientRadius$c;

.field public static final e:Lhm5;

.field public static final f:Lhm5;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/yandex/div2/d3$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/d3$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/d3;->a:Lcom/yandex/div2/d3$a;

    new-instance v0, Lcom/yandex/div2/DivRadialGradientCenter$c;

    new-instance v1, Lcom/yandex/div2/DivRadialGradientRelativeCenter;

    sget-object v2, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/yandex/div2/DivRadialGradientRelativeCenter;-><init>(Lcom/yandex/div/json/expressions/Expression;)V

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivRadialGradientCenter$c;-><init>(Lcom/yandex/div2/DivRadialGradientRelativeCenter;)V

    sput-object v0, Lcom/yandex/div2/d3;->b:Lcom/yandex/div2/DivRadialGradientCenter$c;

    new-instance v0, Lcom/yandex/div2/DivRadialGradientCenter$c;

    new-instance v1, Lcom/yandex/div2/DivRadialGradientRelativeCenter;

    invoke-virtual {v2, v3}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/yandex/div2/DivRadialGradientRelativeCenter;-><init>(Lcom/yandex/div/json/expressions/Expression;)V

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivRadialGradientCenter$c;-><init>(Lcom/yandex/div2/DivRadialGradientRelativeCenter;)V

    sput-object v0, Lcom/yandex/div2/d3;->c:Lcom/yandex/div2/DivRadialGradientCenter$c;

    new-instance v0, Lcom/yandex/div2/DivRadialGradientRadius$c;

    new-instance v1, Lcom/yandex/div2/DivRadialGradientRelativeRadius;

    sget-object v3, Lcom/yandex/div2/DivRadialGradientRelativeRadius$Value;->FARTHEST_CORNER:Lcom/yandex/div2/DivRadialGradientRelativeRadius$Value;

    invoke-virtual {v2, v3}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yandex/div2/DivRadialGradientRelativeRadius;-><init>(Lcom/yandex/div/json/expressions/Expression;)V

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivRadialGradientRadius$c;-><init>(Lcom/yandex/div2/DivRadialGradientRelativeRadius;)V

    sput-object v0, Lcom/yandex/div2/d3;->d:Lcom/yandex/div2/DivRadialGradientRadius$c;

    new-instance v0, Lto2;

    invoke-direct {v0}, Lto2;-><init>()V

    sput-object v0, Lcom/yandex/div2/d3;->e:Lhm5;

    new-instance v0, Luo2;

    invoke-direct {v0}, Luo2;-><init>()V

    sput-object v0, Lcom/yandex/div2/d3;->f:Lhm5;

    return-void
.end method

.method public static synthetic a(Ljava/util/List;)Z
    .locals 0

    invoke-static {p0}, Lcom/yandex/div2/d3;->d(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/util/List;)Z
    .locals 0

    invoke-static {p0}, Lcom/yandex/div2/d3;->c(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static final c(Ljava/util/List;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final d(Ljava/util/List;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
