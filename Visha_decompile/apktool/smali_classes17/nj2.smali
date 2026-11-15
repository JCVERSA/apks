.class public final Lnj2;
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

    iput-object p1, p0, Lnj2;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lnj2;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivFunctionArgument;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivFunctionArgument;

    invoke-virtual {p0, p1, p2}, Lnj2;->e(Lex7;Lcom/yandex/div2/DivFunctionArgument;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivFunctionArgument;
    .locals 3

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/div2/DivFunctionArgument;

    const-string v0, "name"

    invoke-static {p1, p2, v0}, Ltb5;->d(Lex7;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "read(context, data, \"name\")"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    const-string v1, "type"

    sget-object v2, Lcom/yandex/div2/DivEvaluableType;->FROM_STRING:Le74;

    invoke-static {p1, p2, v1, v2}, Ltb5;->e(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Le74;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "read(context, data, \"typ\u2026valuableType.FROM_STRING)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/yandex/div2/DivEvaluableType;

    invoke-direct {p0, v0, p1}, Lcom/yandex/div2/DivFunctionArgument;-><init>(Ljava/lang/String;Lcom/yandex/div2/DivEvaluableType;)V

    return-object p0
.end method

.method public e(Lex7;Lcom/yandex/div2/DivFunctionArgument;)Lorg/json/JSONObject;
    .locals 2

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p2, Lcom/yandex/div2/DivFunctionArgument;->a:Ljava/lang/String;

    const-string v1, "name"

    invoke-static {p1, p0, v1, v0}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p2, Lcom/yandex/div2/DivFunctionArgument;->b:Lcom/yandex/div2/DivEvaluableType;

    sget-object v0, Lcom/yandex/div2/DivEvaluableType;->TO_STRING:Le74;

    const-string v1, "type"

    invoke-static {p1, p0, v1, p2, v0}, Ltb5;->w(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Le74;)V

    return-object p0
.end method
