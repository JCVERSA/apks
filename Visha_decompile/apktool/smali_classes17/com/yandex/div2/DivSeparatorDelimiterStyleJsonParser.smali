.class public abstract Lcom/yandex/div2/DivSeparatorDelimiterStyleJsonParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivSeparatorDelimiterStyleJsonParser$a;,
        Lcom/yandex/div2/DivSeparatorDelimiterStyleJsonParser$b;,
        Lcom/yandex/div2/DivSeparatorDelimiterStyleJsonParser$c;,
        Lcom/yandex/div2/DivSeparatorDelimiterStyleJsonParser$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/DivSeparatorDelimiterStyleJsonParser$a;

.field public static final b:Lcom/yandex/div/json/expressions/Expression;

.field public static final c:Lcom/yandex/div/json/expressions/Expression;

.field public static final d:Lzbb;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/yandex/div2/DivSeparatorDelimiterStyleJsonParser$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivSeparatorDelimiterStyleJsonParser$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivSeparatorDelimiterStyleJsonParser;->a:Lcom/yandex/div2/DivSeparatorDelimiterStyleJsonParser$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    const/high16 v1, 0x14000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivSeparatorDelimiterStyleJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    sget-object v1, Lcom/yandex/div2/DivSeparator$DelimiterStyle$Orientation;->HORIZONTAL:Lcom/yandex/div2/DivSeparator$DelimiterStyle$Orientation;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivSeparatorDelimiterStyleJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lzbb;->a:Lzbb$a;

    invoke-static {}, Lcom/yandex/div2/DivSeparator$DelimiterStyle$Orientation;->values()[Lcom/yandex/div2/DivSeparator$DelimiterStyle$Orientation;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivSeparatorDelimiterStyleJsonParser$Companion$TYPE_HELPER_ORIENTATION$1;->INSTANCE:Lcom/yandex/div2/DivSeparatorDelimiterStyleJsonParser$Companion$TYPE_HELPER_ORIENTATION$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivSeparatorDelimiterStyleJsonParser;->d:Lzbb;

    return-void
.end method
