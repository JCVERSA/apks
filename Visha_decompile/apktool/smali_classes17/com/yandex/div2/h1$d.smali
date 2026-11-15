.class public final Lcom/yandex/div2/h1$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/h1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/h1$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/h1$d;->b(Lex7;Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivFixedLengthInputMask$PatternElement;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivFixedLengthInputMask$PatternElement;
    .locals 10

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "template"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/div2/DivFixedLengthInputMask$PatternElement;

    iget-object v1, p2, Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate;->a:Ltp3;

    sget-object v9, Lacb;->c:Lzbb;

    sget-object v5, Lcom/yandex/div2/h1;->c:Lpnb;

    const-string v3, "key"

    move-object v0, p1

    move-object v2, p3

    move-object v4, v9

    invoke-static/range {v0 .. v5}, Lsa5;->j(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    const-string v1, "resolveExpression(contex\u2026ER_STRING, KEY_VALIDATOR)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p2, Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate;->b:Ltp3;

    sget-object v7, Lcom/yandex/div2/h1;->d:Lpnb;

    sget-object v1, Lcom/yandex/div2/h1;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v5, "placeholder"

    move-object v2, p1

    move-object v4, p3

    move-object v6, v9

    move-object v8, v1

    invoke-static/range {v2 .. v8}, Lsa5;->w(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iget-object p2, p2, Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate;->c:Ltp3;

    const-string v2, "regex"

    invoke-static {p1, p2, p3, v2, v9}, Lsa5;->r(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/yandex/div2/DivFixedLengthInputMask$PatternElement;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    return-object p0
.end method
