.class public abstract Lcom/yandex/div2/DivTypedValueTemplate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lac5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivTypedValueTemplate$a;,
        Lcom/yandex/div2/DivTypedValueTemplate$b;,
        Lcom/yandex/div2/DivTypedValueTemplate$c;,
        Lcom/yandex/div2/DivTypedValueTemplate$d;,
        Lcom/yandex/div2/DivTypedValueTemplate$e;,
        Lcom/yandex/div2/DivTypedValueTemplate$f;,
        Lcom/yandex/div2/DivTypedValueTemplate$g;,
        Lcom/yandex/div2/DivTypedValueTemplate$h;,
        Lcom/yandex/div2/DivTypedValueTemplate$i;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/DivTypedValueTemplate$d;

.field public static final b:Ls74;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/DivTypedValueTemplate$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivTypedValueTemplate$d;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivTypedValueTemplate;->a:Lcom/yandex/div2/DivTypedValueTemplate$d;

    sget-object v0, Lcom/yandex/div2/DivTypedValueTemplate$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivTypedValueTemplate$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivTypedValueTemplate;->b:Ls74;

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
    invoke-direct {p0}, Lcom/yandex/div2/DivTypedValueTemplate;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lcom/yandex/div2/DivTypedValueTemplate$h;

    if-eqz v0, :cond_0

    const-string p0, "string"

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/yandex/div2/DivTypedValueTemplate$f;

    if-eqz v0, :cond_1

    const-string p0, "integer"

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/yandex/div2/DivTypedValueTemplate$g;

    if-eqz v0, :cond_2

    const-string p0, "number"

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/yandex/div2/DivTypedValueTemplate$c;

    if-eqz v0, :cond_3

    const-string p0, "color"

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lcom/yandex/div2/DivTypedValueTemplate$b;

    if-eqz v0, :cond_4

    const-string p0, "boolean"

    goto :goto_0

    :cond_4
    instance-of v0, p0, Lcom/yandex/div2/DivTypedValueTemplate$i;

    if-eqz v0, :cond_5

    const-string p0, "url"

    goto :goto_0

    :cond_5
    instance-of v0, p0, Lcom/yandex/div2/DivTypedValueTemplate$e;

    if-eqz v0, :cond_6

    const-string p0, "dict"

    goto :goto_0

    :cond_6
    instance-of p0, p0, Lcom/yandex/div2/DivTypedValueTemplate$a;

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

    instance-of v0, p0, Lcom/yandex/div2/DivTypedValueTemplate$h;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/yandex/div2/DivTypedValueTemplate$h;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTypedValueTemplate$h;->c()Lcom/yandex/div2/StrValueTemplate;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/yandex/div2/DivTypedValueTemplate$f;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/yandex/div2/DivTypedValueTemplate$f;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTypedValueTemplate$f;->c()Lcom/yandex/div2/IntegerValueTemplate;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/yandex/div2/DivTypedValueTemplate$g;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/yandex/div2/DivTypedValueTemplate$g;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTypedValueTemplate$g;->c()Lcom/yandex/div2/NumberValueTemplate;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/yandex/div2/DivTypedValueTemplate$c;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/yandex/div2/DivTypedValueTemplate$c;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTypedValueTemplate$c;->c()Lcom/yandex/div2/ColorValueTemplate;

    move-result-object p0

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lcom/yandex/div2/DivTypedValueTemplate$b;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/yandex/div2/DivTypedValueTemplate$b;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTypedValueTemplate$b;->c()Lcom/yandex/div2/BoolValueTemplate;

    move-result-object p0

    goto :goto_0

    :cond_4
    instance-of v0, p0, Lcom/yandex/div2/DivTypedValueTemplate$i;

    if-eqz v0, :cond_5

    check-cast p0, Lcom/yandex/div2/DivTypedValueTemplate$i;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTypedValueTemplate$i;->c()Lcom/yandex/div2/UrlValueTemplate;

    move-result-object p0

    goto :goto_0

    :cond_5
    instance-of v0, p0, Lcom/yandex/div2/DivTypedValueTemplate$e;

    if-eqz v0, :cond_6

    check-cast p0, Lcom/yandex/div2/DivTypedValueTemplate$e;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTypedValueTemplate$e;->c()Lcom/yandex/div2/DictValueTemplate;

    move-result-object p0

    goto :goto_0

    :cond_6
    instance-of v0, p0, Lcom/yandex/div2/DivTypedValueTemplate$a;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/yandex/div2/DivTypedValueTemplate$a;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTypedValueTemplate$a;->c()Lcom/yandex/div2/ArrayValueTemplate;

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

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->c9()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/d5;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/d5;->e(Lex7;Lcom/yandex/div2/DivTypedValueTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
