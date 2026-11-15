.class public abstract Lcom/yandex/div2/DivAccessibilityJsonParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivAccessibilityJsonParser$a;,
        Lcom/yandex/div2/DivAccessibilityJsonParser$b;,
        Lcom/yandex/div2/DivAccessibilityJsonParser$c;,
        Lcom/yandex/div2/DivAccessibilityJsonParser$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/DivAccessibilityJsonParser$a;

.field public static final b:Lcom/yandex/div/json/expressions/Expression;

.field public static final c:Lcom/yandex/div/json/expressions/Expression;

.field public static final d:Lcom/yandex/div2/DivAccessibility$Type;

.field public static final e:Lzbb;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/yandex/div2/DivAccessibilityJsonParser$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivAccessibilityJsonParser$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivAccessibilityJsonParser;->a:Lcom/yandex/div2/DivAccessibilityJsonParser$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    sget-object v1, Lcom/yandex/div2/DivAccessibility$Mode;->DEFAULT:Lcom/yandex/div2/DivAccessibility$Mode;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivAccessibilityJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivAccessibilityJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lcom/yandex/div2/DivAccessibility$Type;->AUTO:Lcom/yandex/div2/DivAccessibility$Type;

    sput-object v0, Lcom/yandex/div2/DivAccessibilityJsonParser;->d:Lcom/yandex/div2/DivAccessibility$Type;

    sget-object v0, Lzbb;->a:Lzbb$a;

    invoke-static {}, Lcom/yandex/div2/DivAccessibility$Mode;->values()[Lcom/yandex/div2/DivAccessibility$Mode;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivAccessibilityJsonParser$Companion$TYPE_HELPER_MODE$1;->INSTANCE:Lcom/yandex/div2/DivAccessibilityJsonParser$Companion$TYPE_HELPER_MODE$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivAccessibilityJsonParser;->e:Lzbb;

    return-void
.end method
