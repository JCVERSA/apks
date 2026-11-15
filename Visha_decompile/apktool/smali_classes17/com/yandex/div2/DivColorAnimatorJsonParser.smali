.class public abstract Lcom/yandex/div2/DivColorAnimatorJsonParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivColorAnimatorJsonParser$a;,
        Lcom/yandex/div2/DivColorAnimatorJsonParser$b;,
        Lcom/yandex/div2/DivColorAnimatorJsonParser$c;,
        Lcom/yandex/div2/DivColorAnimatorJsonParser$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/DivColorAnimatorJsonParser$a;

.field public static final b:Lcom/yandex/div/json/expressions/Expression;

.field public static final c:Lcom/yandex/div/json/expressions/Expression;

.field public static final d:Lcom/yandex/div2/DivCount$b;

.field public static final e:Lcom/yandex/div/json/expressions/Expression;

.field public static final f:Lzbb;

.field public static final g:Lzbb;

.field public static final h:Lpnb;

.field public static final i:Lpnb;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/yandex/div2/DivColorAnimatorJsonParser$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivColorAnimatorJsonParser$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivColorAnimatorJsonParser;->a:Lcom/yandex/div2/DivColorAnimatorJsonParser$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    sget-object v1, Lcom/yandex/div2/DivAnimationDirection;->NORMAL:Lcom/yandex/div2/DivAnimationDirection;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivColorAnimatorJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    sget-object v1, Lcom/yandex/div2/DivAnimationInterpolator;->LINEAR:Lcom/yandex/div2/DivAnimationInterpolator;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivColorAnimatorJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    new-instance v1, Lcom/yandex/div2/DivCount$b;

    new-instance v2, Lcom/yandex/div2/DivFixedCount;

    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/yandex/div2/DivFixedCount;-><init>(Lcom/yandex/div/json/expressions/Expression;)V

    invoke-direct {v1, v2}, Lcom/yandex/div2/DivCount$b;-><init>(Lcom/yandex/div2/DivFixedCount;)V

    sput-object v1, Lcom/yandex/div2/DivColorAnimatorJsonParser;->d:Lcom/yandex/div2/DivCount$b;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivColorAnimatorJsonParser;->e:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lzbb;->a:Lzbb$a;

    invoke-static {}, Lcom/yandex/div2/DivAnimationDirection;->values()[Lcom/yandex/div2/DivAnimationDirection;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivColorAnimatorJsonParser$Companion$TYPE_HELPER_DIRECTION$1;->INSTANCE:Lcom/yandex/div2/DivColorAnimatorJsonParser$Companion$TYPE_HELPER_DIRECTION$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivColorAnimatorJsonParser;->f:Lzbb;

    invoke-static {}, Lcom/yandex/div2/DivAnimationInterpolator;->values()[Lcom/yandex/div2/DivAnimationInterpolator;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivColorAnimatorJsonParser$Companion$TYPE_HELPER_INTERPOLATOR$1;->INSTANCE:Lcom/yandex/div2/DivColorAnimatorJsonParser$Companion$TYPE_HELPER_INTERPOLATOR$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivColorAnimatorJsonParser;->g:Lzbb;

    new-instance v0, Lfh2;

    invoke-direct {v0}, Lfh2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivColorAnimatorJsonParser;->h:Lpnb;

    new-instance v0, Lgh2;

    invoke-direct {v0}, Lgh2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivColorAnimatorJsonParser;->i:Lpnb;

    return-void
.end method

.method public static synthetic a(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivColorAnimatorJsonParser;->c(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivColorAnimatorJsonParser;->d(J)Z

    move-result p0

    return p0
.end method

.method public static final c(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final d(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
