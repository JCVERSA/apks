.class public final Lcom/yandex/div2/p3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/p3;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/p3;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSize;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivSize;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/p3;->e(Lex7;Lcom/yandex/div2/DivSize;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSize;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, p2, v0}, Ltb5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "readString(context, data, \"type\")"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x5cee774

    if-eq v2, v3, :cond_4

    const v3, 0x1476c184

    if-eq v2, v3, :cond_2

    const v3, 0x529e9464

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "match_parent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/yandex/div2/DivSize$c;

    iget-object p0, p0, Lcom/yandex/div2/p3;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->V4()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/l2$b;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/l2$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivMatchParentSize;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivSize$c;-><init>(Lcom/yandex/div2/DivMatchParentSize;)V

    return-object v0

    :cond_2
    const-string v2, "wrap_content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/yandex/div2/DivSize$d;

    iget-object p0, p0, Lcom/yandex/div2/p3;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->w9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/m5;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/m5;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivWrapContentSize;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivSize$d;-><init>(Lcom/yandex/div2/DivWrapContentSize;)V

    return-object v0

    :cond_4
    const-string v2, "fixed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :goto_0
    invoke-interface {p1}, Lex7;->a()Lkga;

    move-result-object v2

    invoke-interface {v2, v1, p2}, Lkga;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lza3;

    move-result-object v2

    instance-of v3, v2, Lcom/yandex/div2/DivSizeTemplate;

    if-eqz v3, :cond_5

    check-cast v2, Lcom/yandex/div2/DivSizeTemplate;

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_6

    iget-object p0, p0, Lcom/yandex/div2/p3;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->X6()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/r3;

    invoke-virtual {p0, p1, v2, p2}, Lcom/yandex/div2/r3;->b(Lex7;Lcom/yandex/div2/DivSizeTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSize;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-static {p2, v0, v1}, Lmx7;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0

    :cond_7
    new-instance v0, Lcom/yandex/div2/DivSize$b;

    iget-object p0, p0, Lcom/yandex/div2/p3;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->t3()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivFixedSizeJsonParser$b;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivFixedSizeJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivFixedSize;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivSize$b;-><init>(Lcom/yandex/div2/DivFixedSize;)V

    return-object v0
.end method

.method public e(Lex7;Lcom/yandex/div2/DivSize;)Lorg/json/JSONObject;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/yandex/div2/DivSize$b;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/div2/p3;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->t3()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivFixedSizeJsonParser$b;

    check-cast p2, Lcom/yandex/div2/DivSize$b;

    invoke-virtual {p2}, Lcom/yandex/div2/DivSize$b;->c()Lcom/yandex/div2/DivFixedSize;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivFixedSizeJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivFixedSize;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/yandex/div2/DivSize$c;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yandex/div2/p3;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->V4()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/l2$b;

    check-cast p2, Lcom/yandex/div2/DivSize$c;

    invoke-virtual {p2}, Lcom/yandex/div2/DivSize$c;->c()Lcom/yandex/div2/DivMatchParentSize;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/l2$b;->e(Lex7;Lcom/yandex/div2/DivMatchParentSize;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lcom/yandex/div2/DivSize$d;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/yandex/div2/p3;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->w9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/m5;

    check-cast p2, Lcom/yandex/div2/DivSize$d;

    invoke-virtual {p2}, Lcom/yandex/div2/DivSize$d;->c()Lcom/yandex/div2/DivWrapContentSize;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/m5;->e(Lex7;Lcom/yandex/div2/DivWrapContentSize;)Lorg/json/JSONObject;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
