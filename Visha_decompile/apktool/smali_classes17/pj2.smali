.class public final Lpj2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpj2;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivFunctionArgumentTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lpj2;->b(Lex7;Lcom/yandex/div2/DivFunctionArgumentTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivFunctionArgument;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivFunctionArgumentTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivFunctionArgument;
    .locals 3

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "template"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/div2/DivFunctionArgument;

    iget-object v0, p2, Lcom/yandex/div2/DivFunctionArgumentTemplate;->a:Ltp3;

    const-string v1, "name"

    invoke-static {p1, v0, p3, v1}, Lsa5;->a(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "resolve(context, template.name, data, \"name\")"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    iget-object p2, p2, Lcom/yandex/div2/DivFunctionArgumentTemplate;->b:Ltp3;

    const-string v1, "type"

    sget-object v2, Lcom/yandex/div2/DivEvaluableType;->FROM_STRING:Le74;

    invoke-static {p1, p2, p3, v1, v2}, Lsa5;->b(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Le74;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "resolve(context, templat\u2026valuableType.FROM_STRING)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/yandex/div2/DivEvaluableType;

    invoke-direct {p0, v0, p1}, Lcom/yandex/div2/DivFunctionArgument;-><init>(Ljava/lang/String;Lcom/yandex/div2/DivEvaluableType;)V

    return-object p0
.end method
