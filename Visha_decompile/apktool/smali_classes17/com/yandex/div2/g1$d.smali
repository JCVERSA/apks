.class public final Lcom/yandex/div2/g1$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/g1;
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

    iput-object p1, p0, Lcom/yandex/div2/g1$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivFixedLengthInputMaskTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/g1$d;->b(Lex7;Lcom/yandex/div2/DivFixedLengthInputMaskTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivFixedLengthInputMask;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivFixedLengthInputMaskTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivFixedLengthInputMask;
    .locals 13

    move-object v0, p0

    move-object v8, p1

    move-object v9, p2

    move-object/from16 v10, p3

    const-string v1, "context"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "template"

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "data"

    invoke-static {v10, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Lcom/yandex/div2/DivFixedLengthInputMask;

    iget-object v2, v9, Lcom/yandex/div2/DivFixedLengthInputMaskTemplate;->a:Ltp3;

    sget-object v5, Lacb;->a:Lzbb;

    sget-object v6, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    sget-object v12, Lcom/yandex/div2/g1;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "always_visible"

    move-object v1, p1

    move-object/from16 v3, p3

    move-object v7, v12

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v12, v1

    :goto_0
    iget-object v1, v9, Lcom/yandex/div2/DivFixedLengthInputMaskTemplate;->b:Ltp3;

    const-string v2, "pattern"

    sget-object v3, Lacb;->c:Lzbb;

    invoke-static {p1, v1, v10, v2, v3}, Lsa5;->g(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v7

    const-string v1, "resolveExpression(contex\u2026ern\", TYPE_HELPER_STRING)"

    invoke-static {v7, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v9, Lcom/yandex/div2/DivFixedLengthInputMaskTemplate;->c:Ltp3;

    iget-object v2, v0, Lcom/yandex/div2/g1$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->s3()Lyi5;

    move-result-object v4

    iget-object v0, v0, Lcom/yandex/div2/g1$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->q3()Lyi5;

    move-result-object v5

    sget-object v6, Lcom/yandex/div2/g1;->c:Lhm5;

    const-string v3, "pattern_elements"

    move-object v0, p1

    move-object/from16 v2, p3

    invoke-static/range {v0 .. v6}, Lsa5;->l(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;Lhm5;)Ljava/util/List;

    move-result-object v0

    const-string v1, "resolveList(context, tem\u2026TTERN_ELEMENTS_VALIDATOR)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v9, Lcom/yandex/div2/DivFixedLengthInputMaskTemplate;->d:Ltp3;

    const-string v2, "raw_text_variable"

    invoke-static {p1, v1, v10, v2}, Lsa5;->a(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "resolve(context, templat\u2026ata, \"raw_text_variable\")"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    invoke-direct {v11, v12, v7, v0, v1}, Lcom/yandex/div2/DivFixedLengthInputMask;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/lang/String;)V

    return-object v11
.end method
