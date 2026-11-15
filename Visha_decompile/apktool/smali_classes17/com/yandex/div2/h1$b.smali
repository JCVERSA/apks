.class public final Lcom/yandex/div2/h1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/h1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/h1$b;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/h1$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivFixedLengthInputMask$PatternElement;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivFixedLengthInputMask$PatternElement;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/h1$b;->e(Lex7;Lcom/yandex/div2/DivFixedLengthInputMask$PatternElement;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivFixedLengthInputMask$PatternElement;
    .locals 9

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/div2/DivFixedLengthInputMask$PatternElement;

    sget-object v6, Lacb;->c:Lzbb;

    sget-object v0, Lcom/yandex/div2/h1;->c:Lpnb;

    const-string v1, "key"

    invoke-static {p1, p2, v1, v6, v0}, Lpa5;->g(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v7

    const-string v0, "readExpression(context, \u2026ER_STRING, KEY_VALIDATOR)"

    invoke-static {v7, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/yandex/div2/h1;->d:Lpnb;

    sget-object v8, Lcom/yandex/div2/h1;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "placeholder"

    move-object v0, p1

    move-object v1, p2

    move-object v3, v6

    move-object v5, v8

    invoke-static/range {v0 .. v5}, Lpa5;->m(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v8, v0

    :goto_0
    const-string v0, "regex"

    invoke-static {p1, p2, v0, v6}, Lpa5;->h(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p1

    invoke-direct {p0, v7, v8, p1}, Lcom/yandex/div2/DivFixedLengthInputMask$PatternElement;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    return-object p0
.end method

.method public e(Lex7;Lcom/yandex/div2/DivFixedLengthInputMask$PatternElement;)Lorg/json/JSONObject;
    .locals 2

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p2, Lcom/yandex/div2/DivFixedLengthInputMask$PatternElement;->a:Lcom/yandex/div/json/expressions/Expression;

    const-string v1, "key"

    invoke-static {p1, p0, v1, v0}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v0, "placeholder"

    iget-object v1, p2, Lcom/yandex/div2/DivFixedLengthInputMask$PatternElement;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, p0, v0, v1}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v0, "regex"

    iget-object p2, p2, Lcom/yandex/div2/DivFixedLengthInputMask$PatternElement;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, p0, v0, p2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    return-object p0
.end method
