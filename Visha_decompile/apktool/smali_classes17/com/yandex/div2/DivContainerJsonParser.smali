.class public abstract Lcom/yandex/div2/DivContainerJsonParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivContainerJsonParser$a;,
        Lcom/yandex/div2/DivContainerJsonParser$b;,
        Lcom/yandex/div2/DivContainerJsonParser$c;,
        Lcom/yandex/div2/DivContainerJsonParser$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/DivContainerJsonParser$a;

.field public static final b:Lcom/yandex/div2/DivAnimation;

.field public static final c:Lcom/yandex/div/json/expressions/Expression;

.field public static final d:Lcom/yandex/div/json/expressions/Expression;

.field public static final e:Lcom/yandex/div/json/expressions/Expression;

.field public static final f:Lcom/yandex/div/json/expressions/Expression;

.field public static final g:Lcom/yandex/div/json/expressions/Expression;

.field public static final h:Lcom/yandex/div2/DivSize$d;

.field public static final i:Lcom/yandex/div/json/expressions/Expression;

.field public static final j:Lcom/yandex/div/json/expressions/Expression;

.field public static final k:Lcom/yandex/div/json/expressions/Expression;

.field public static final l:Lcom/yandex/div2/DivSize$c;

.field public static final m:Lzbb;

.field public static final n:Lzbb;

.field public static final o:Lzbb;

.field public static final p:Lzbb;

.field public static final q:Lzbb;

.field public static final r:Lzbb;

.field public static final s:Lzbb;

.field public static final t:Lpnb;

.field public static final u:Lpnb;

.field public static final v:Lpnb;

.field public static final w:Lhm5;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/yandex/div2/DivContainerJsonParser$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivContainerJsonParser$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivContainerJsonParser;->a:Lcom/yandex/div2/DivContainerJsonParser$a;

    new-instance v0, Lcom/yandex/div2/DivAnimation;

    sget-object v13, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    const-wide v4, 0x3fe3333333333333L    # 0.6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v4

    sget-object v2, Lcom/yandex/div2/DivAnimation$Name;->FADE:Lcom/yandex/div2/DivAnimation$Name;

    invoke-virtual {v13, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v7

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v10

    const/16 v11, 0x6c

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/yandex/div2/DivAnimation;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivCount;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivContainerJsonParser;->b:Lcom/yandex/div2/DivAnimation;

    invoke-virtual {v13, v14}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivContainerJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v13, v0}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivContainerJsonParser;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v13, v0}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivContainerJsonParser;->e:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lcom/yandex/div2/DivContentAlignmentHorizontal;->START:Lcom/yandex/div2/DivContentAlignmentHorizontal;

    invoke-virtual {v13, v0}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivContainerJsonParser;->f:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lcom/yandex/div2/DivContentAlignmentVertical;->TOP:Lcom/yandex/div2/DivContentAlignmentVertical;

    invoke-virtual {v13, v0}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivContainerJsonParser;->g:Lcom/yandex/div/json/expressions/Expression;

    new-instance v0, Lcom/yandex/div2/DivSize$d;

    new-instance v8, Lcom/yandex/div2/DivWrapContentSize;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/yandex/div2/DivWrapContentSize;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, v8}, Lcom/yandex/div2/DivSize$d;-><init>(Lcom/yandex/div2/DivWrapContentSize;)V

    sput-object v0, Lcom/yandex/div2/DivContainerJsonParser;->h:Lcom/yandex/div2/DivSize$d;

    sget-object v0, Lcom/yandex/div2/DivContainer$LayoutMode;->NO_WRAP:Lcom/yandex/div2/DivContainer$LayoutMode;

    invoke-virtual {v13, v0}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivContainerJsonParser;->i:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lcom/yandex/div2/DivContainer$Orientation;->VERTICAL:Lcom/yandex/div2/DivContainer$Orientation;

    invoke-virtual {v13, v0}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivContainerJsonParser;->j:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lcom/yandex/div2/DivVisibility;->VISIBLE:Lcom/yandex/div2/DivVisibility;

    invoke-virtual {v13, v0}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivContainerJsonParser;->k:Lcom/yandex/div/json/expressions/Expression;

    new-instance v0, Lcom/yandex/div2/DivSize$c;

    new-instance v2, Lcom/yandex/div2/DivMatchParentSize;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3, v1}, Lcom/yandex/div2/DivMatchParentSize;-><init>(Lcom/yandex/div/json/expressions/Expression;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, v2}, Lcom/yandex/div2/DivSize$c;-><init>(Lcom/yandex/div2/DivMatchParentSize;)V

    sput-object v0, Lcom/yandex/div2/DivContainerJsonParser;->l:Lcom/yandex/div2/DivSize$c;

    sget-object v0, Lzbb;->a:Lzbb$a;

    invoke-static {}, Lcom/yandex/div2/DivAlignmentHorizontal;->values()[Lcom/yandex/div2/DivAlignmentHorizontal;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivContainerJsonParser$Companion$TYPE_HELPER_ALIGNMENT_HORIZONTAL$1;->INSTANCE:Lcom/yandex/div2/DivContainerJsonParser$Companion$TYPE_HELPER_ALIGNMENT_HORIZONTAL$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivContainerJsonParser;->m:Lzbb;

    invoke-static {}, Lcom/yandex/div2/DivAlignmentVertical;->values()[Lcom/yandex/div2/DivAlignmentVertical;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivContainerJsonParser$Companion$TYPE_HELPER_ALIGNMENT_VERTICAL$1;->INSTANCE:Lcom/yandex/div2/DivContainerJsonParser$Companion$TYPE_HELPER_ALIGNMENT_VERTICAL$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivContainerJsonParser;->n:Lzbb;

    invoke-static {}, Lcom/yandex/div2/DivContentAlignmentHorizontal;->values()[Lcom/yandex/div2/DivContentAlignmentHorizontal;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivContainerJsonParser$Companion$TYPE_HELPER_CONTENT_ALIGNMENT_HORIZONTAL$1;->INSTANCE:Lcom/yandex/div2/DivContainerJsonParser$Companion$TYPE_HELPER_CONTENT_ALIGNMENT_HORIZONTAL$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivContainerJsonParser;->o:Lzbb;

    invoke-static {}, Lcom/yandex/div2/DivContentAlignmentVertical;->values()[Lcom/yandex/div2/DivContentAlignmentVertical;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivContainerJsonParser$Companion$TYPE_HELPER_CONTENT_ALIGNMENT_VERTICAL$1;->INSTANCE:Lcom/yandex/div2/DivContainerJsonParser$Companion$TYPE_HELPER_CONTENT_ALIGNMENT_VERTICAL$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivContainerJsonParser;->p:Lzbb;

    invoke-static {}, Lcom/yandex/div2/DivContainer$LayoutMode;->values()[Lcom/yandex/div2/DivContainer$LayoutMode;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivContainerJsonParser$Companion$TYPE_HELPER_LAYOUT_MODE$1;->INSTANCE:Lcom/yandex/div2/DivContainerJsonParser$Companion$TYPE_HELPER_LAYOUT_MODE$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivContainerJsonParser;->q:Lzbb;

    invoke-static {}, Lcom/yandex/div2/DivContainer$Orientation;->values()[Lcom/yandex/div2/DivContainer$Orientation;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivContainerJsonParser$Companion$TYPE_HELPER_ORIENTATION$1;->INSTANCE:Lcom/yandex/div2/DivContainerJsonParser$Companion$TYPE_HELPER_ORIENTATION$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivContainerJsonParser;->r:Lzbb;

    invoke-static {}, Lcom/yandex/div2/DivVisibility;->values()[Lcom/yandex/div2/DivVisibility;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivContainerJsonParser$Companion$TYPE_HELPER_VISIBILITY$1;->INSTANCE:Lcom/yandex/div2/DivContainerJsonParser$Companion$TYPE_HELPER_VISIBILITY$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivContainerJsonParser;->s:Lzbb;

    new-instance v0, Lkh2;

    invoke-direct {v0}, Lkh2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivContainerJsonParser;->t:Lpnb;

    new-instance v0, Llh2;

    invoke-direct {v0}, Llh2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivContainerJsonParser;->u:Lpnb;

    new-instance v0, Lmh2;

    invoke-direct {v0}, Lmh2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivContainerJsonParser;->v:Lpnb;

    new-instance v0, Lnh2;

    invoke-direct {v0}, Lnh2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivContainerJsonParser;->w:Lhm5;

    return-void
.end method

.method public static synthetic a(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivContainerJsonParser;->f(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(D)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivContainerJsonParser;->e(D)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivContainerJsonParser;->g(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Ljava/util/List;)Z
    .locals 0

    invoke-static {p0}, Lcom/yandex/div2/DivContainerJsonParser;->h(Ljava/util/List;)Z

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

.method public static final f(J)Z
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

.method public static final g(J)Z
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

.method public static final h(Ljava/util/List;)Z
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
