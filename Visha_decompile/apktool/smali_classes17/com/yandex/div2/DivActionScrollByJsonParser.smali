.class public abstract Lcom/yandex/div2/DivActionScrollByJsonParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivActionScrollByJsonParser$a;,
        Lcom/yandex/div2/DivActionScrollByJsonParser$b;,
        Lcom/yandex/div2/DivActionScrollByJsonParser$c;,
        Lcom/yandex/div2/DivActionScrollByJsonParser$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/DivActionScrollByJsonParser$a;

.field public static final b:Lcom/yandex/div/json/expressions/Expression;

.field public static final c:Lcom/yandex/div/json/expressions/Expression;

.field public static final d:Lcom/yandex/div/json/expressions/Expression;

.field public static final e:Lcom/yandex/div/json/expressions/Expression;

.field public static final f:Lzbb;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/yandex/div2/DivActionScrollByJsonParser$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivActionScrollByJsonParser$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivActionScrollByJsonParser;->a:Lcom/yandex/div2/DivActionScrollByJsonParser$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivActionScrollByJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sput-object v2, Lcom/yandex/div2/DivActionScrollByJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivActionScrollByJsonParser;->d:Lcom/yandex/div/json/expressions/Expression;

    sget-object v1, Lcom/yandex/div2/DivActionScrollBy$Overflow;->CLAMP:Lcom/yandex/div2/DivActionScrollBy$Overflow;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivActionScrollByJsonParser;->e:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lzbb;->a:Lzbb$a;

    invoke-static {}, Lcom/yandex/div2/DivActionScrollBy$Overflow;->values()[Lcom/yandex/div2/DivActionScrollBy$Overflow;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivActionScrollByJsonParser$Companion$TYPE_HELPER_OVERFLOW$1;->INSTANCE:Lcom/yandex/div2/DivActionScrollByJsonParser$Companion$TYPE_HELPER_OVERFLOW$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivActionScrollByJsonParser;->f:Lzbb;

    return-void
.end method
