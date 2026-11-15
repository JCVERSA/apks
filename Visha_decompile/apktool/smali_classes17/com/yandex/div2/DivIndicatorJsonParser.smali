.class public abstract Lcom/yandex/div2/DivIndicatorJsonParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivIndicatorJsonParser$a;,
        Lcom/yandex/div2/DivIndicatorJsonParser$b;,
        Lcom/yandex/div2/DivIndicatorJsonParser$c;,
        Lcom/yandex/div2/DivIndicatorJsonParser$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/DivIndicatorJsonParser$a;

.field public static final b:Lcom/yandex/div/json/expressions/Expression;

.field public static final c:Lcom/yandex/div/json/expressions/Expression;

.field public static final d:Lcom/yandex/div/json/expressions/Expression;

.field public static final e:Lcom/yandex/div/json/expressions/Expression;

.field public static final f:Lcom/yandex/div2/DivSize$d;

.field public static final g:Lcom/yandex/div/json/expressions/Expression;

.field public static final h:Lcom/yandex/div/json/expressions/Expression;

.field public static final i:Lcom/yandex/div2/DivShape$c;

.field public static final j:Lcom/yandex/div2/DivFixedSize;

.field public static final k:Lcom/yandex/div/json/expressions/Expression;

.field public static final l:Lcom/yandex/div2/DivSize$c;

.field public static final m:Lzbb;

.field public static final n:Lzbb;

.field public static final o:Lzbb;

.field public static final p:Lzbb;

.field public static final q:Lpnb;

.field public static final r:Lpnb;

.field public static final s:Lpnb;

.field public static final t:Lpnb;

.field public static final u:Lpnb;

.field public static final v:Lhm5;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/yandex/div2/DivIndicatorJsonParser$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivIndicatorJsonParser$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivIndicatorJsonParser;->a:Lcom/yandex/div2/DivIndicatorJsonParser$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    const v2, 0xffdc60

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivIndicatorJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-wide v2, 0x3ff4cccccccccccdL    # 1.3

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivIndicatorJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivIndicatorJsonParser;->d:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Lcom/yandex/div2/DivIndicator$Animation;->SCALE:Lcom/yandex/div2/DivIndicator$Animation;

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivIndicatorJsonParser;->e:Lcom/yandex/div/json/expressions/Expression;

    new-instance v2, Lcom/yandex/div2/DivSize$d;

    new-instance v9, Lcom/yandex/div2/DivWrapContentSize;

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/yandex/div2/DivWrapContentSize;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v2, v9}, Lcom/yandex/div2/DivSize$d;-><init>(Lcom/yandex/div2/DivWrapContentSize;)V

    sput-object v2, Lcom/yandex/div2/DivIndicatorJsonParser;->f:Lcom/yandex/div2/DivSize$d;

    const v2, 0x33919cb5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivIndicatorJsonParser;->g:Lcom/yandex/div/json/expressions/Expression;

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivIndicatorJsonParser;->h:Lcom/yandex/div/json/expressions/Expression;

    new-instance v2, Lcom/yandex/div2/DivShape$c;

    new-instance v11, Lcom/yandex/div2/DivRoundedRectangleShape;

    const/16 v9, 0x1f

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/yandex/div2/DivRoundedRectangleShape;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivFixedSize;Lcom/yandex/div2/DivFixedSize;Lcom/yandex/div2/DivFixedSize;Lcom/yandex/div2/DivStroke;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v2, v11}, Lcom/yandex/div2/DivShape$c;-><init>(Lcom/yandex/div2/DivRoundedRectangleShape;)V

    sput-object v2, Lcom/yandex/div2/DivIndicatorJsonParser;->i:Lcom/yandex/div2/DivShape$c;

    new-instance v2, Lcom/yandex/div2/DivFixedSize;

    const-wide/16 v3, 0xf

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v1, v3, v4, v1}, Lcom/yandex/div2/DivFixedSize;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lcom/yandex/div2/DivIndicatorJsonParser;->j:Lcom/yandex/div2/DivFixedSize;

    sget-object v2, Lcom/yandex/div2/DivVisibility;->VISIBLE:Lcom/yandex/div2/DivVisibility;

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivIndicatorJsonParser;->k:Lcom/yandex/div/json/expressions/Expression;

    new-instance v0, Lcom/yandex/div2/DivSize$c;

    new-instance v2, Lcom/yandex/div2/DivMatchParentSize;

    invoke-direct {v2, v1, v4, v1}, Lcom/yandex/div2/DivMatchParentSize;-><init>(Lcom/yandex/div/json/expressions/Expression;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, v2}, Lcom/yandex/div2/DivSize$c;-><init>(Lcom/yandex/div2/DivMatchParentSize;)V

    sput-object v0, Lcom/yandex/div2/DivIndicatorJsonParser;->l:Lcom/yandex/div2/DivSize$c;

    sget-object v0, Lzbb;->a:Lzbb$a;

    invoke-static {}, Lcom/yandex/div2/DivAlignmentHorizontal;->values()[Lcom/yandex/div2/DivAlignmentHorizontal;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivIndicatorJsonParser$Companion$TYPE_HELPER_ALIGNMENT_HORIZONTAL$1;->INSTANCE:Lcom/yandex/div2/DivIndicatorJsonParser$Companion$TYPE_HELPER_ALIGNMENT_HORIZONTAL$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivIndicatorJsonParser;->m:Lzbb;

    invoke-static {}, Lcom/yandex/div2/DivAlignmentVertical;->values()[Lcom/yandex/div2/DivAlignmentVertical;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivIndicatorJsonParser$Companion$TYPE_HELPER_ALIGNMENT_VERTICAL$1;->INSTANCE:Lcom/yandex/div2/DivIndicatorJsonParser$Companion$TYPE_HELPER_ALIGNMENT_VERTICAL$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivIndicatorJsonParser;->n:Lzbb;

    invoke-static {}, Lcom/yandex/div2/DivIndicator$Animation;->values()[Lcom/yandex/div2/DivIndicator$Animation;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivIndicatorJsonParser$Companion$TYPE_HELPER_ANIMATION$1;->INSTANCE:Lcom/yandex/div2/DivIndicatorJsonParser$Companion$TYPE_HELPER_ANIMATION$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivIndicatorJsonParser;->o:Lzbb;

    invoke-static {}, Lcom/yandex/div2/DivVisibility;->values()[Lcom/yandex/div2/DivVisibility;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivIndicatorJsonParser$Companion$TYPE_HELPER_VISIBILITY$1;->INSTANCE:Lcom/yandex/div2/DivIndicatorJsonParser$Companion$TYPE_HELPER_VISIBILITY$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivIndicatorJsonParser;->p:Lzbb;

    new-instance v0, Lal2;

    invoke-direct {v0}, Lal2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivIndicatorJsonParser;->q:Lpnb;

    new-instance v0, Lbl2;

    invoke-direct {v0}, Lbl2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivIndicatorJsonParser;->r:Lpnb;

    new-instance v0, Lcl2;

    invoke-direct {v0}, Lcl2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivIndicatorJsonParser;->s:Lpnb;

    new-instance v0, Ldl2;

    invoke-direct {v0}, Ldl2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivIndicatorJsonParser;->t:Lpnb;

    new-instance v0, Lel2;

    invoke-direct {v0}, Lel2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivIndicatorJsonParser;->u:Lpnb;

    new-instance v0, Lfl2;

    invoke-direct {v0}, Lfl2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivIndicatorJsonParser;->v:Lhm5;

    return-void
.end method

.method public static synthetic a(Ljava/util/List;)Z
    .locals 0

    invoke-static {p0}, Lcom/yandex/div2/DivIndicatorJsonParser;->l(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(D)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivIndicatorJsonParser;->h(D)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivIndicatorJsonParser;->k(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(D)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivIndicatorJsonParser;->j(D)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivIndicatorJsonParser;->i(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(D)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivIndicatorJsonParser;->g(D)Z

    move-result p0

    return p0
.end method

.method public static final g(D)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-lez p0, :cond_0

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

.method public static final i(J)Z
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

.method public static final j(D)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final k(J)Z
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

.method public static final l(Ljava/util/List;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
