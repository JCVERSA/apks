.class public abstract Lcom/yandex/div2/DivVariableTemplate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lac5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivVariableTemplate$a;,
        Lcom/yandex/div2/DivVariableTemplate$b;,
        Lcom/yandex/div2/DivVariableTemplate$c;,
        Lcom/yandex/div2/DivVariableTemplate$d;,
        Lcom/yandex/div2/DivVariableTemplate$e;,
        Lcom/yandex/div2/DivVariableTemplate$f;,
        Lcom/yandex/div2/DivVariableTemplate$g;,
        Lcom/yandex/div2/DivVariableTemplate$h;,
        Lcom/yandex/div2/DivVariableTemplate$i;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/DivVariableTemplate$d;

.field public static final b:Ls74;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/DivVariableTemplate$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivVariableTemplate$d;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivVariableTemplate;->a:Lcom/yandex/div2/DivVariableTemplate$d;

    sget-object v0, Lcom/yandex/div2/DivVariableTemplate$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivVariableTemplate$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivVariableTemplate;->b:Ls74;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/div2/DivVariableTemplate;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lcom/yandex/div2/DivVariableTemplate$h;

    if-eqz v0, :cond_0

    const-string p0, "string"

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/yandex/div2/DivVariableTemplate$g;

    if-eqz v0, :cond_1

    const-string p0, "number"

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/yandex/div2/DivVariableTemplate$f;

    if-eqz v0, :cond_2

    const-string p0, "integer"

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/yandex/div2/DivVariableTemplate$b;

    if-eqz v0, :cond_3

    const-string p0, "boolean"

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lcom/yandex/div2/DivVariableTemplate$c;

    if-eqz v0, :cond_4

    const-string p0, "color"

    goto :goto_0

    :cond_4
    instance-of v0, p0, Lcom/yandex/div2/DivVariableTemplate$i;

    if-eqz v0, :cond_5

    const-string p0, "url"

    goto :goto_0

    :cond_5
    instance-of v0, p0, Lcom/yandex/div2/DivVariableTemplate$e;

    if-eqz v0, :cond_6

    const-string p0, "dict"

    goto :goto_0

    :cond_6
    instance-of p0, p0, Lcom/yandex/div2/DivVariableTemplate$a;

    if-eqz p0, :cond_7

    const-string p0, "array"

    :goto_0
    return-object p0

    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lcom/yandex/div2/DivVariableTemplate$h;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/yandex/div2/DivVariableTemplate$h;

    invoke-virtual {p0}, Lcom/yandex/div2/DivVariableTemplate$h;->c()Lcom/yandex/div2/StrVariableTemplate;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/yandex/div2/DivVariableTemplate$g;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/yandex/div2/DivVariableTemplate$g;

    invoke-virtual {p0}, Lcom/yandex/div2/DivVariableTemplate$g;->c()Lcom/yandex/div2/NumberVariableTemplate;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/yandex/div2/DivVariableTemplate$f;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/yandex/div2/DivVariableTemplate$f;

    invoke-virtual {p0}, Lcom/yandex/div2/DivVariableTemplate$f;->c()Lcom/yandex/div2/IntegerVariableTemplate;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/yandex/div2/DivVariableTemplate$b;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/yandex/div2/DivVariableTemplate$b;

    invoke-virtual {p0}, Lcom/yandex/div2/DivVariableTemplate$b;->c()Lcom/yandex/div2/BoolVariableTemplate;

    move-result-object p0

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lcom/yandex/div2/DivVariableTemplate$c;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/yandex/div2/DivVariableTemplate$c;

    invoke-virtual {p0}, Lcom/yandex/div2/DivVariableTemplate$c;->c()Lcom/yandex/div2/ColorVariableTemplate;

    move-result-object p0

    goto :goto_0

    :cond_4
    instance-of v0, p0, Lcom/yandex/div2/DivVariableTemplate$i;

    if-eqz v0, :cond_5

    check-cast p0, Lcom/yandex/div2/DivVariableTemplate$i;

    invoke-virtual {p0}, Lcom/yandex/div2/DivVariableTemplate$i;->c()Lcom/yandex/div2/UrlVariableTemplate;

    move-result-object p0

    goto :goto_0

    :cond_5
    instance-of v0, p0, Lcom/yandex/div2/DivVariableTemplate$e;

    if-eqz v0, :cond_6

    check-cast p0, Lcom/yandex/div2/DivVariableTemplate$e;

    invoke-virtual {p0}, Lcom/yandex/div2/DivVariableTemplate$e;->c()Lcom/yandex/div2/DictVariableTemplate;

    move-result-object p0

    goto :goto_0

    :cond_6
    instance-of v0, p0, Lcom/yandex/div2/DivVariableTemplate$a;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/yandex/div2/DivVariableTemplate$a;

    invoke-virtual {p0}, Lcom/yandex/div2/DivVariableTemplate$a;->c()Lcom/yandex/div2/ArrayVariableTemplate;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->f9()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/g5;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/g5;->e(Lex7;Lcom/yandex/div2/DivVariableTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
