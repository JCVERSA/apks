.class public abstract Lcom/yandex/div2/DivEdgeInsetsJsonParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivEdgeInsetsJsonParser$a;,
        Lcom/yandex/div2/DivEdgeInsetsJsonParser$b;,
        Lcom/yandex/div2/DivEdgeInsetsJsonParser$c;,
        Lcom/yandex/div2/DivEdgeInsetsJsonParser$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/DivEdgeInsetsJsonParser$a;

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

.field public static final l:Lpnb;

.field public static final m:Lpnb;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/yandex/div2/DivEdgeInsetsJsonParser$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivEdgeInsetsJsonParser$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivEdgeInsetsJsonParser;->a:Lcom/yandex/div2/DivEdgeInsetsJsonParser$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivEdgeInsetsJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivEdgeInsetsJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivEdgeInsetsJsonParser;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivEdgeInsetsJsonParser;->e:Lcom/yandex/div/json/expressions/Expression;

    sget-object v1, Lcom/yandex/div2/DivSizeUnit;->DP:Lcom/yandex/div2/DivSizeUnit;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivEdgeInsetsJsonParser;->f:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lzbb;->a:Lzbb$a;

    invoke-static {}, Lcom/yandex/div2/DivSizeUnit;->values()[Lcom/yandex/div2/DivSizeUnit;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivEdgeInsetsJsonParser$Companion$TYPE_HELPER_UNIT$1;->INSTANCE:Lcom/yandex/div2/DivEdgeInsetsJsonParser$Companion$TYPE_HELPER_UNIT$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivEdgeInsetsJsonParser;->g:Lzbb;

    new-instance v0, Lpi2;

    invoke-direct {v0}, Lpi2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivEdgeInsetsJsonParser;->h:Lpnb;

    new-instance v0, Lqi2;

    invoke-direct {v0}, Lqi2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivEdgeInsetsJsonParser;->i:Lpnb;

    new-instance v0, Lri2;

    invoke-direct {v0}, Lri2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivEdgeInsetsJsonParser;->j:Lpnb;

    new-instance v0, Lsi2;

    invoke-direct {v0}, Lsi2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivEdgeInsetsJsonParser;->k:Lpnb;

    new-instance v0, Lti2;

    invoke-direct {v0}, Lti2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivEdgeInsetsJsonParser;->l:Lpnb;

    new-instance v0, Lui2;

    invoke-direct {v0}, Lui2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivEdgeInsetsJsonParser;->m:Lpnb;

    return-void
.end method

.method public static synthetic a(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivEdgeInsetsJsonParser;->h(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivEdgeInsetsJsonParser;->g(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivEdgeInsetsJsonParser;->k(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivEdgeInsetsJsonParser;->l(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivEdgeInsetsJsonParser;->j(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivEdgeInsetsJsonParser;->i(J)Z

    move-result p0

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

.method public static final h(J)Z
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

.method public static final j(J)Z
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
