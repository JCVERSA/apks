.class public abstract Lcom/yandex/div2/DivStrokeJsonParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivStrokeJsonParser$a;,
        Lcom/yandex/div2/DivStrokeJsonParser$b;,
        Lcom/yandex/div2/DivStrokeJsonParser$c;,
        Lcom/yandex/div2/DivStrokeJsonParser$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/DivStrokeJsonParser$a;

.field public static final b:Lcom/yandex/div2/DivStrokeStyle$c;

.field public static final c:Lcom/yandex/div/json/expressions/Expression;

.field public static final d:Lcom/yandex/div/json/expressions/Expression;

.field public static final e:Lzbb;

.field public static final f:Lpnb;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/yandex/div2/DivStrokeJsonParser$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivStrokeJsonParser$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivStrokeJsonParser;->a:Lcom/yandex/div2/DivStrokeJsonParser$a;

    new-instance v0, Lcom/yandex/div2/DivStrokeStyle$c;

    new-instance v1, Lcom/yandex/div2/DivStrokeStyleSolid;

    invoke-direct {v1}, Lcom/yandex/div2/DivStrokeStyleSolid;-><init>()V

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivStrokeStyle$c;-><init>(Lcom/yandex/div2/DivStrokeStyleSolid;)V

    sput-object v0, Lcom/yandex/div2/DivStrokeJsonParser;->b:Lcom/yandex/div2/DivStrokeStyle$c;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    sget-object v1, Lcom/yandex/div2/DivSizeUnit;->DP:Lcom/yandex/div2/DivSizeUnit;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivStrokeJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivStrokeJsonParser;->d:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lzbb;->a:Lzbb$a;

    invoke-static {}, Lcom/yandex/div2/DivSizeUnit;->values()[Lcom/yandex/div2/DivSizeUnit;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivStrokeJsonParser$Companion$TYPE_HELPER_UNIT$1;->INSTANCE:Lcom/yandex/div2/DivStrokeJsonParser$Companion$TYPE_HELPER_UNIT$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivStrokeJsonParser;->e:Lzbb;

    new-instance v0, Ldr2;

    invoke-direct {v0}, Ldr2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivStrokeJsonParser;->f:Lpnb;

    return-void
.end method

.method public static synthetic a(D)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivStrokeJsonParser;->b(D)Z

    move-result p0

    return p0
.end method

.method public static final b(D)Z
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
