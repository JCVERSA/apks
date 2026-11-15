.class public abstract Lcom/yandex/div2/DivGalleryJsonParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivGalleryJsonParser$a;,
        Lcom/yandex/div2/DivGalleryJsonParser$b;,
        Lcom/yandex/div2/DivGalleryJsonParser$c;,
        Lcom/yandex/div2/DivGalleryJsonParser$d;
    }
.end annotation


# static fields
.field public static final A:Lhm5;

.field public static final a:Lcom/yandex/div2/DivGalleryJsonParser$a;

.field public static final b:Lcom/yandex/div/json/expressions/Expression;

.field public static final c:Lcom/yandex/div/json/expressions/Expression;

.field public static final d:Lcom/yandex/div/json/expressions/Expression;

.field public static final e:Lcom/yandex/div2/DivSize$d;

.field public static final f:Lcom/yandex/div/json/expressions/Expression;

.field public static final g:Lcom/yandex/div/json/expressions/Expression;

.field public static final h:Lcom/yandex/div/json/expressions/Expression;

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

.field public static final w:Lpnb;

.field public static final x:Lpnb;

.field public static final y:Lpnb;

.field public static final z:Lpnb;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/yandex/div2/DivGalleryJsonParser$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivGalleryJsonParser$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivGalleryJsonParser;->a:Lcom/yandex/div2/DivGalleryJsonParser$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivGalleryJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Lcom/yandex/div2/DivGallery$CrossContentAlignment;->START:Lcom/yandex/div2/DivGallery$CrossContentAlignment;

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivGalleryJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivGalleryJsonParser;->d:Lcom/yandex/div/json/expressions/Expression;

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

    sput-object v2, Lcom/yandex/div2/DivGalleryJsonParser;->e:Lcom/yandex/div2/DivSize$d;

    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivGalleryJsonParser;->f:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Lcom/yandex/div2/DivGallery$Orientation;->HORIZONTAL:Lcom/yandex/div2/DivGallery$Orientation;

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivGalleryJsonParser;->g:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivGalleryJsonParser;->h:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Lcom/yandex/div2/DivGallery$ScrollMode;->DEFAULT:Lcom/yandex/div2/DivGallery$ScrollMode;

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivGalleryJsonParser;->i:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Lcom/yandex/div2/DivGallery$Scrollbar;->NONE:Lcom/yandex/div2/DivGallery$Scrollbar;

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivGalleryJsonParser;->j:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Lcom/yandex/div2/DivVisibility;->VISIBLE:Lcom/yandex/div2/DivVisibility;

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivGalleryJsonParser;->k:Lcom/yandex/div/json/expressions/Expression;

    new-instance v0, Lcom/yandex/div2/DivSize$c;

    new-instance v2, Lcom/yandex/div2/DivMatchParentSize;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3, v1}, Lcom/yandex/div2/DivMatchParentSize;-><init>(Lcom/yandex/div/json/expressions/Expression;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, v2}, Lcom/yandex/div2/DivSize$c;-><init>(Lcom/yandex/div2/DivMatchParentSize;)V

    sput-object v0, Lcom/yandex/div2/DivGalleryJsonParser;->l:Lcom/yandex/div2/DivSize$c;

    sget-object v0, Lzbb;->a:Lzbb$a;

    invoke-static {}, Lcom/yandex/div2/DivAlignmentHorizontal;->values()[Lcom/yandex/div2/DivAlignmentHorizontal;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivGalleryJsonParser$Companion$TYPE_HELPER_ALIGNMENT_HORIZONTAL$1;->INSTANCE:Lcom/yandex/div2/DivGalleryJsonParser$Companion$TYPE_HELPER_ALIGNMENT_HORIZONTAL$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivGalleryJsonParser;->m:Lzbb;

    invoke-static {}, Lcom/yandex/div2/DivAlignmentVertical;->values()[Lcom/yandex/div2/DivAlignmentVertical;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivGalleryJsonParser$Companion$TYPE_HELPER_ALIGNMENT_VERTICAL$1;->INSTANCE:Lcom/yandex/div2/DivGalleryJsonParser$Companion$TYPE_HELPER_ALIGNMENT_VERTICAL$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivGalleryJsonParser;->n:Lzbb;

    invoke-static {}, Lcom/yandex/div2/DivGallery$CrossContentAlignment;->values()[Lcom/yandex/div2/DivGallery$CrossContentAlignment;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivGalleryJsonParser$Companion$TYPE_HELPER_CROSS_CONTENT_ALIGNMENT$1;->INSTANCE:Lcom/yandex/div2/DivGalleryJsonParser$Companion$TYPE_HELPER_CROSS_CONTENT_ALIGNMENT$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivGalleryJsonParser;->o:Lzbb;

    invoke-static {}, Lcom/yandex/div2/DivGallery$Orientation;->values()[Lcom/yandex/div2/DivGallery$Orientation;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivGalleryJsonParser$Companion$TYPE_HELPER_ORIENTATION$1;->INSTANCE:Lcom/yandex/div2/DivGalleryJsonParser$Companion$TYPE_HELPER_ORIENTATION$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivGalleryJsonParser;->p:Lzbb;

    invoke-static {}, Lcom/yandex/div2/DivGallery$ScrollMode;->values()[Lcom/yandex/div2/DivGallery$ScrollMode;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivGalleryJsonParser$Companion$TYPE_HELPER_SCROLL_MODE$1;->INSTANCE:Lcom/yandex/div2/DivGalleryJsonParser$Companion$TYPE_HELPER_SCROLL_MODE$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivGalleryJsonParser;->q:Lzbb;

    invoke-static {}, Lcom/yandex/div2/DivGallery$Scrollbar;->values()[Lcom/yandex/div2/DivGallery$Scrollbar;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivGalleryJsonParser$Companion$TYPE_HELPER_SCROLLBAR$1;->INSTANCE:Lcom/yandex/div2/DivGalleryJsonParser$Companion$TYPE_HELPER_SCROLLBAR$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivGalleryJsonParser;->r:Lzbb;

    invoke-static {}, Lcom/yandex/div2/DivVisibility;->values()[Lcom/yandex/div2/DivVisibility;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivGalleryJsonParser$Companion$TYPE_HELPER_VISIBILITY$1;->INSTANCE:Lcom/yandex/div2/DivGalleryJsonParser$Companion$TYPE_HELPER_VISIBILITY$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivGalleryJsonParser;->s:Lzbb;

    new-instance v0, Ltj2;

    invoke-direct {v0}, Ltj2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivGalleryJsonParser;->t:Lpnb;

    new-instance v0, Luj2;

    invoke-direct {v0}, Luj2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivGalleryJsonParser;->u:Lpnb;

    new-instance v0, Lvj2;

    invoke-direct {v0}, Lvj2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivGalleryJsonParser;->v:Lpnb;

    new-instance v0, Lwj2;

    invoke-direct {v0}, Lwj2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivGalleryJsonParser;->w:Lpnb;

    new-instance v0, Lxj2;

    invoke-direct {v0}, Lxj2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivGalleryJsonParser;->x:Lpnb;

    new-instance v0, Lyj2;

    invoke-direct {v0}, Lyj2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivGalleryJsonParser;->y:Lpnb;

    new-instance v0, Lzj2;

    invoke-direct {v0}, Lzj2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivGalleryJsonParser;->z:Lpnb;

    new-instance v0, Lak2;

    invoke-direct {v0}, Lak2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivGalleryJsonParser;->A:Lhm5;

    return-void
.end method

.method public static synthetic a(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivGalleryJsonParser;->n(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(D)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivGalleryJsonParser;->i(D)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivGalleryJsonParser;->o(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivGalleryJsonParser;->k(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Ljava/util/List;)Z
    .locals 0

    invoke-static {p0}, Lcom/yandex/div2/DivGalleryJsonParser;->p(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivGalleryJsonParser;->l(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivGalleryJsonParser;->j(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivGalleryJsonParser;->m(J)Z

    move-result p0

    return p0
.end method

.method public static final i(D)Z
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

.method public static final j(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

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

.method public static final l(J)Z
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

.method public static final m(J)Z
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

.method public static final n(J)Z
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

.method public static final o(J)Z
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

.method public static final p(Ljava/util/List;)Z
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
