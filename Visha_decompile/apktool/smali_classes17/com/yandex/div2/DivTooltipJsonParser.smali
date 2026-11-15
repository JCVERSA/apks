.class public abstract Lcom/yandex/div2/DivTooltipJsonParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivTooltipJsonParser$a;,
        Lcom/yandex/div2/DivTooltipJsonParser$b;,
        Lcom/yandex/div2/DivTooltipJsonParser$c;,
        Lcom/yandex/div2/DivTooltipJsonParser$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/DivTooltipJsonParser$a;

.field public static final b:Lcom/yandex/div/json/expressions/Expression;

.field public static final c:Lcom/yandex/div/json/expressions/Expression;

.field public static final d:Lcom/yandex/div2/DivTooltipMode$b;

.field public static final e:Lzbb;

.field public static final f:Lpnb;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/yandex/div2/DivTooltipJsonParser$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivTooltipJsonParser$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivTooltipJsonParser;->a:Lcom/yandex/div2/DivTooltipJsonParser$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivTooltipJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-wide/16 v1, 0x1388

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivTooltipJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    new-instance v0, Lcom/yandex/div2/DivTooltipMode$b;

    new-instance v1, Lcom/yandex/div2/DivTooltipModeModal;

    invoke-direct {v1}, Lcom/yandex/div2/DivTooltipModeModal;-><init>()V

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivTooltipMode$b;-><init>(Lcom/yandex/div2/DivTooltipModeModal;)V

    sput-object v0, Lcom/yandex/div2/DivTooltipJsonParser;->d:Lcom/yandex/div2/DivTooltipMode$b;

    sget-object v0, Lzbb;->a:Lzbb$a;

    invoke-static {}, Lcom/yandex/div2/DivTooltip$Position;->values()[Lcom/yandex/div2/DivTooltip$Position;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivTooltipJsonParser$Companion$TYPE_HELPER_POSITION$1;->INSTANCE:Lcom/yandex/div2/DivTooltipJsonParser$Companion$TYPE_HELPER_POSITION$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivTooltipJsonParser;->e:Lzbb;

    new-instance v0, Ljt2;

    invoke-direct {v0}, Ljt2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivTooltipJsonParser;->f:Lpnb;

    return-void
.end method

.method public static synthetic a(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivTooltipJsonParser;->b(J)Z

    move-result p0

    return p0
.end method

.method public static final b(J)Z
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
