.class public abstract Lcom/yandex/div2/DivWrapContentSizeConstraintSizeJsonParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivWrapContentSizeConstraintSizeJsonParser$a;,
        Lcom/yandex/div2/DivWrapContentSizeConstraintSizeJsonParser$b;,
        Lcom/yandex/div2/DivWrapContentSizeConstraintSizeJsonParser$c;,
        Lcom/yandex/div2/DivWrapContentSizeConstraintSizeJsonParser$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/DivWrapContentSizeConstraintSizeJsonParser$a;

.field public static final b:Lcom/yandex/div/json/expressions/Expression;

.field public static final c:Lzbb;

.field public static final d:Lpnb;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/yandex/div2/DivWrapContentSizeConstraintSizeJsonParser$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivWrapContentSizeConstraintSizeJsonParser$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivWrapContentSizeConstraintSizeJsonParser;->a:Lcom/yandex/div2/DivWrapContentSizeConstraintSizeJsonParser$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    sget-object v1, Lcom/yandex/div2/DivSizeUnit;->DP:Lcom/yandex/div2/DivSizeUnit;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivWrapContentSizeConstraintSizeJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lzbb;->a:Lzbb$a;

    invoke-static {}, Lcom/yandex/div2/DivSizeUnit;->values()[Lcom/yandex/div2/DivSizeUnit;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivWrapContentSizeConstraintSizeJsonParser$Companion$TYPE_HELPER_UNIT$1;->INSTANCE:Lcom/yandex/div2/DivWrapContentSizeConstraintSizeJsonParser$Companion$TYPE_HELPER_UNIT$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivWrapContentSizeConstraintSizeJsonParser;->c:Lzbb;

    new-instance v0, Ldw2;

    invoke-direct {v0}, Ldw2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivWrapContentSizeConstraintSizeJsonParser;->d:Lpnb;

    return-void
.end method

.method public static synthetic a(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivWrapContentSizeConstraintSizeJsonParser;->b(J)Z

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
