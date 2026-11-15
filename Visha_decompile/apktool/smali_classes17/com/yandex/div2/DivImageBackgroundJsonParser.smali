.class public abstract Lcom/yandex/div2/DivImageBackgroundJsonParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivImageBackgroundJsonParser$a;,
        Lcom/yandex/div2/DivImageBackgroundJsonParser$b;,
        Lcom/yandex/div2/DivImageBackgroundJsonParser$c;,
        Lcom/yandex/div2/DivImageBackgroundJsonParser$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/DivImageBackgroundJsonParser$a;

.field public static final b:Lcom/yandex/div/json/expressions/Expression;

.field public static final c:Lcom/yandex/div/json/expressions/Expression;

.field public static final d:Lcom/yandex/div/json/expressions/Expression;

.field public static final e:Lcom/yandex/div/json/expressions/Expression;

.field public static final f:Lcom/yandex/div/json/expressions/Expression;

.field public static final g:Lzbb;

.field public static final h:Lzbb;

.field public static final i:Lzbb;

.field public static final j:Lpnb;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/yandex/div2/DivImageBackgroundJsonParser$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivImageBackgroundJsonParser$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivImageBackgroundJsonParser;->a:Lcom/yandex/div2/DivImageBackgroundJsonParser$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivImageBackgroundJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    sget-object v1, Lcom/yandex/div2/DivAlignmentHorizontal;->CENTER:Lcom/yandex/div2/DivAlignmentHorizontal;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivImageBackgroundJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    sget-object v1, Lcom/yandex/div2/DivAlignmentVertical;->CENTER:Lcom/yandex/div2/DivAlignmentVertical;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivImageBackgroundJsonParser;->d:Lcom/yandex/div/json/expressions/Expression;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivImageBackgroundJsonParser;->e:Lcom/yandex/div/json/expressions/Expression;

    sget-object v1, Lcom/yandex/div2/DivImageScale;->FILL:Lcom/yandex/div2/DivImageScale;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivImageBackgroundJsonParser;->f:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lzbb;->a:Lzbb$a;

    invoke-static {}, Lcom/yandex/div2/DivAlignmentHorizontal;->values()[Lcom/yandex/div2/DivAlignmentHorizontal;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivImageBackgroundJsonParser$Companion$TYPE_HELPER_CONTENT_ALIGNMENT_HORIZONTAL$1;->INSTANCE:Lcom/yandex/div2/DivImageBackgroundJsonParser$Companion$TYPE_HELPER_CONTENT_ALIGNMENT_HORIZONTAL$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivImageBackgroundJsonParser;->g:Lzbb;

    invoke-static {}, Lcom/yandex/div2/DivAlignmentVertical;->values()[Lcom/yandex/div2/DivAlignmentVertical;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivImageBackgroundJsonParser$Companion$TYPE_HELPER_CONTENT_ALIGNMENT_VERTICAL$1;->INSTANCE:Lcom/yandex/div2/DivImageBackgroundJsonParser$Companion$TYPE_HELPER_CONTENT_ALIGNMENT_VERTICAL$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivImageBackgroundJsonParser;->h:Lzbb;

    invoke-static {}, Lcom/yandex/div2/DivImageScale;->values()[Lcom/yandex/div2/DivImageScale;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivImageBackgroundJsonParser$Companion$TYPE_HELPER_SCALE$1;->INSTANCE:Lcom/yandex/div2/DivImageBackgroundJsonParser$Companion$TYPE_HELPER_SCALE$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivImageBackgroundJsonParser;->i:Lzbb;

    new-instance v0, Lqk2;

    invoke-direct {v0}, Lqk2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivImageBackgroundJsonParser;->j:Lpnb;

    return-void
.end method

.method public static synthetic a(D)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivImageBackgroundJsonParser;->b(D)Z

    move-result p0

    return p0
.end method

.method public static final b(D)Z
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
