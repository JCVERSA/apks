.class public abstract Lcom/yandex/div2/DivSliderTextStyleJsonParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivSliderTextStyleJsonParser$a;,
        Lcom/yandex/div2/DivSliderTextStyleJsonParser$b;,
        Lcom/yandex/div2/DivSliderTextStyleJsonParser$c;,
        Lcom/yandex/div2/DivSliderTextStyleJsonParser$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/DivSliderTextStyleJsonParser$a;

.field public static final b:Lcom/yandex/div/json/expressions/Expression;

.field public static final c:Lcom/yandex/div/json/expressions/Expression;

.field public static final d:Lcom/yandex/div/json/expressions/Expression;

.field public static final e:Lcom/yandex/div/json/expressions/Expression;

.field public static final f:Lzbb;

.field public static final g:Lzbb;

.field public static final h:Lpnb;

.field public static final i:Lpnb;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/yandex/div2/DivSliderTextStyleJsonParser$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivSliderTextStyleJsonParser$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivSliderTextStyleJsonParser;->a:Lcom/yandex/div2/DivSliderTextStyleJsonParser$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    const-wide/16 v1, 0xc

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivSliderTextStyleJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    sget-object v1, Lcom/yandex/div2/DivSizeUnit;->SP:Lcom/yandex/div2/DivSizeUnit;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivSliderTextStyleJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    sget-object v1, Lcom/yandex/div2/DivFontWeight;->REGULAR:Lcom/yandex/div2/DivFontWeight;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivSliderTextStyleJsonParser;->d:Lcom/yandex/div/json/expressions/Expression;

    const/high16 v1, -0x1000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivSliderTextStyleJsonParser;->e:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lzbb;->a:Lzbb$a;

    invoke-static {}, Lcom/yandex/div2/DivSizeUnit;->values()[Lcom/yandex/div2/DivSizeUnit;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivSliderTextStyleJsonParser$Companion$TYPE_HELPER_FONT_SIZE_UNIT$1;->INSTANCE:Lcom/yandex/div2/DivSliderTextStyleJsonParser$Companion$TYPE_HELPER_FONT_SIZE_UNIT$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivSliderTextStyleJsonParser;->f:Lzbb;

    invoke-static {}, Lcom/yandex/div2/DivFontWeight;->values()[Lcom/yandex/div2/DivFontWeight;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivSliderTextStyleJsonParser$Companion$TYPE_HELPER_FONT_WEIGHT$1;->INSTANCE:Lcom/yandex/div2/DivSliderTextStyleJsonParser$Companion$TYPE_HELPER_FONT_WEIGHT$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivSliderTextStyleJsonParser;->g:Lzbb;

    new-instance v0, Lfq2;

    invoke-direct {v0}, Lfq2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivSliderTextStyleJsonParser;->h:Lpnb;

    new-instance v0, Lgq2;

    invoke-direct {v0}, Lgq2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivSliderTextStyleJsonParser;->i:Lpnb;

    return-void
.end method

.method public static synthetic a(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivSliderTextStyleJsonParser;->c(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivSliderTextStyleJsonParser;->d(J)Z

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

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
