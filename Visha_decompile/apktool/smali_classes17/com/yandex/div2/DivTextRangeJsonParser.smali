.class public abstract Lcom/yandex/div2/DivTextRangeJsonParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivTextRangeJsonParser$a;,
        Lcom/yandex/div2/DivTextRangeJsonParser$b;,
        Lcom/yandex/div2/DivTextRangeJsonParser$c;,
        Lcom/yandex/div2/DivTextRangeJsonParser$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/DivTextRangeJsonParser$a;

.field public static final b:Lcom/yandex/div/json/expressions/Expression;

.field public static final c:Lcom/yandex/div/json/expressions/Expression;

.field public static final d:Lcom/yandex/div/json/expressions/Expression;

.field public static final e:Lzbb;

.field public static final f:Lzbb;

.field public static final g:Lzbb;

.field public static final h:Lzbb;

.field public static final i:Lzbb;

.field public static final j:Lpnb;

.field public static final k:Lpnb;

.field public static final l:Lpnb;

.field public static final m:Lpnb;

.field public static final n:Lpnb;

.field public static final o:Lpnb;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/yandex/div2/DivTextRangeJsonParser$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivTextRangeJsonParser$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivTextRangeJsonParser;->a:Lcom/yandex/div2/DivTextRangeJsonParser$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivTextRangeJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    sget-object v1, Lcom/yandex/div2/DivSizeUnit;->SP:Lcom/yandex/div2/DivSizeUnit;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivTextRangeJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivTextRangeJsonParser;->d:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lzbb;->a:Lzbb$a;

    invoke-static {}, Lcom/yandex/div2/DivTextAlignmentVertical;->values()[Lcom/yandex/div2/DivTextAlignmentVertical;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivTextRangeJsonParser$Companion$TYPE_HELPER_ALIGNMENT_VERTICAL$1;->INSTANCE:Lcom/yandex/div2/DivTextRangeJsonParser$Companion$TYPE_HELPER_ALIGNMENT_VERTICAL$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivTextRangeJsonParser;->e:Lzbb;

    invoke-static {}, Lcom/yandex/div2/DivSizeUnit;->values()[Lcom/yandex/div2/DivSizeUnit;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivTextRangeJsonParser$Companion$TYPE_HELPER_FONT_SIZE_UNIT$1;->INSTANCE:Lcom/yandex/div2/DivTextRangeJsonParser$Companion$TYPE_HELPER_FONT_SIZE_UNIT$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivTextRangeJsonParser;->f:Lzbb;

    invoke-static {}, Lcom/yandex/div2/DivFontWeight;->values()[Lcom/yandex/div2/DivFontWeight;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivTextRangeJsonParser$Companion$TYPE_HELPER_FONT_WEIGHT$1;->INSTANCE:Lcom/yandex/div2/DivTextRangeJsonParser$Companion$TYPE_HELPER_FONT_WEIGHT$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivTextRangeJsonParser;->g:Lzbb;

    invoke-static {}, Lcom/yandex/div2/DivLineStyle;->values()[Lcom/yandex/div2/DivLineStyle;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivTextRangeJsonParser$Companion$TYPE_HELPER_STRIKE$1;->INSTANCE:Lcom/yandex/div2/DivTextRangeJsonParser$Companion$TYPE_HELPER_STRIKE$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivTextRangeJsonParser;->h:Lzbb;

    invoke-static {}, Lcom/yandex/div2/DivLineStyle;->values()[Lcom/yandex/div2/DivLineStyle;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivTextRangeJsonParser$Companion$TYPE_HELPER_UNDERLINE$1;->INSTANCE:Lcom/yandex/div2/DivTextRangeJsonParser$Companion$TYPE_HELPER_UNDERLINE$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivTextRangeJsonParser;->i:Lzbb;

    new-instance v0, Lss2;

    invoke-direct {v0}, Lss2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivTextRangeJsonParser;->j:Lpnb;

    new-instance v0, Lts2;

    invoke-direct {v0}, Lts2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivTextRangeJsonParser;->k:Lpnb;

    new-instance v0, Lus2;

    invoke-direct {v0}, Lus2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivTextRangeJsonParser;->l:Lpnb;

    new-instance v0, Lvs2;

    invoke-direct {v0}, Lvs2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivTextRangeJsonParser;->m:Lpnb;

    new-instance v0, Lws2;

    invoke-direct {v0}, Lws2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivTextRangeJsonParser;->n:Lpnb;

    new-instance v0, Lxs2;

    invoke-direct {v0}, Lxs2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivTextRangeJsonParser;->o:Lpnb;

    return-void
.end method

.method public static synthetic a(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivTextRangeJsonParser;->h(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivTextRangeJsonParser;->g(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivTextRangeJsonParser;->i(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivTextRangeJsonParser;->j(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivTextRangeJsonParser;->k(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivTextRangeJsonParser;->l(J)Z

    move-result p0

    return p0
.end method

.method public static final g(J)Z
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

    if-lez p0, :cond_0

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
