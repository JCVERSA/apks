.class public abstract Lcom/yandex/div2/DivPageTransformationSlideJsonParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivPageTransformationSlideJsonParser$a;,
        Lcom/yandex/div2/DivPageTransformationSlideJsonParser$b;,
        Lcom/yandex/div2/DivPageTransformationSlideJsonParser$c;,
        Lcom/yandex/div2/DivPageTransformationSlideJsonParser$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/DivPageTransformationSlideJsonParser$a;

.field public static final b:Lcom/yandex/div/json/expressions/Expression;

.field public static final c:Lcom/yandex/div/json/expressions/Expression;

.field public static final d:Lcom/yandex/div/json/expressions/Expression;

.field public static final e:Lcom/yandex/div/json/expressions/Expression;

.field public static final f:Lcom/yandex/div/json/expressions/Expression;

.field public static final g:Lzbb;

.field public static final h:Lpnb;

.field public static final i:Lpnb;

.field public static final j:Lpnb;

.field public static final k:Lpnb;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/yandex/div2/DivPageTransformationSlideJsonParser$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivPageTransformationSlideJsonParser$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivPageTransformationSlideJsonParser;->a:Lcom/yandex/div2/DivPageTransformationSlideJsonParser$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    sget-object v1, Lcom/yandex/div2/DivAnimationInterpolator;->EASE_IN_OUT:Lcom/yandex/div2/DivAnimationInterpolator;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivPageTransformationSlideJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivPageTransformationSlideJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivPageTransformationSlideJsonParser;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivPageTransformationSlideJsonParser;->e:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivPageTransformationSlideJsonParser;->f:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lzbb;->a:Lzbb$a;

    invoke-static {}, Lcom/yandex/div2/DivAnimationInterpolator;->values()[Lcom/yandex/div2/DivAnimationInterpolator;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivPageTransformationSlideJsonParser$Companion$TYPE_HELPER_INTERPOLATOR$1;->INSTANCE:Lcom/yandex/div2/DivPageTransformationSlideJsonParser$Companion$TYPE_HELPER_INTERPOLATOR$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivPageTransformationSlideJsonParser;->g:Lzbb;

    new-instance v0, Ljn2;

    invoke-direct {v0}, Ljn2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivPageTransformationSlideJsonParser;->h:Lpnb;

    new-instance v0, Lkn2;

    invoke-direct {v0}, Lkn2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivPageTransformationSlideJsonParser;->i:Lpnb;

    new-instance v0, Lln2;

    invoke-direct {v0}, Lln2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivPageTransformationSlideJsonParser;->j:Lpnb;

    new-instance v0, Lmn2;

    invoke-direct {v0}, Lmn2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivPageTransformationSlideJsonParser;->k:Lpnb;

    return-void
.end method

.method public static synthetic a(D)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivPageTransformationSlideJsonParser;->e(D)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(D)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivPageTransformationSlideJsonParser;->f(D)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(D)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivPageTransformationSlideJsonParser;->h(D)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(D)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivPageTransformationSlideJsonParser;->g(D)Z

    move-result p0

    return p0
.end method

.method public static final e(D)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final f(D)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final g(D)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final h(D)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
