.class public final Lcom/yandex/div2/n0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lgfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/n0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/n0$c;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivCollectionItemBuilderTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/n0$c;->e(Lex7;Lcom/yandex/div2/DivCollectionItemBuilderTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivCollectionItemBuilderTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/n0$c;->d(Lex7;Lcom/yandex/div2/DivCollectionItemBuilderTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivCollectionItemBuilderTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivCollectionItemBuilderTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivCollectionItemBuilderTemplate;
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lex7;->c()Z

    move-result v0

    invoke-static {p1}, Lfx7;->c(Lex7;)Lex7;

    move-result-object p1

    new-instance v8, Lcom/yandex/div2/DivCollectionItemBuilderTemplate;

    sget-object v4, Lacb;->g:Lzbb;

    const/4 v7, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/yandex/div2/DivCollectionItemBuilderTemplate;->a:Ltp3;

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, v7

    :goto_0
    const-string v3, "data"

    move-object v1, p1

    move-object v2, p3

    move v5, v0

    invoke-static/range {v1 .. v6}, Lra5;->h(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;)Ltp3;

    move-result-object v9

    const-string v1, "readFieldWithExpression(\u2026owOverride, parent?.data)"

    invoke-static {v9, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    iget-object v1, p2, Lcom/yandex/div2/DivCollectionItemBuilderTemplate;->b:Ltp3;

    goto :goto_1

    :cond_1
    move-object v1, v7

    :goto_1
    const-string v2, "data_element_name"

    invoke-static {p1, p3, v2, v0, v1}, Lra5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;)Ltp3;

    move-result-object v10

    const-string v1, "readOptionalField(contex\u2026 parent?.dataElementName)"

    invoke-static {v10, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    iget-object p2, p2, Lcom/yandex/div2/DivCollectionItemBuilderTemplate;->c:Ltp3;

    move-object v5, p2

    goto :goto_2

    :cond_2
    move-object v5, v7

    :goto_2
    iget-object p0, p0, Lcom/yandex/div2/n0$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->e2()Lyi5;

    move-result-object v6

    sget-object v7, Lcom/yandex/div2/n0;->c:Lhm5;

    const-string p0, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>"

    invoke-static {v7, p0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "prototypes"

    move-object v1, p1

    move-object v2, p3

    move v4, v0

    invoke-static/range {v1 .. v7}, Lra5;->m(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;Lhm5;)Ltp3;

    move-result-object p0

    const-string p1, "readListField(context, d\u2026TOTYPES_VALIDATOR.cast())"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v9, v10, p0}, Lcom/yandex/div2/DivCollectionItemBuilderTemplate;-><init>(Ltp3;Ltp3;Ltp3;)V

    return-object v8
.end method

.method public e(Lex7;Lcom/yandex/div2/DivCollectionItemBuilderTemplate;)Lorg/json/JSONObject;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivCollectionItemBuilderTemplate;->a:Ltp3;

    const-string v2, "data"

    invoke-static {p1, v0, v2, v1}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v1, "data_element_name"

    iget-object v2, p2, Lcom/yandex/div2/DivCollectionItemBuilderTemplate;->b:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->G(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object p2, p2, Lcom/yandex/div2/DivCollectionItemBuilderTemplate;->c:Ltp3;

    iget-object p0, p0, Lcom/yandex/div2/n0$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->e2()Lyi5;

    move-result-object p0

    const-string v1, "prototypes"

    invoke-static {p1, v0, v1, p2, p0}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    return-object v0
.end method
