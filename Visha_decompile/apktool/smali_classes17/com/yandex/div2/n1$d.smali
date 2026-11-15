.class public final Lcom/yandex/div2/n1$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/n1;
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

    iput-object p1, p0, Lcom/yandex/div2/n1$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivFunctionTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/n1$d;->b(Lex7;Lcom/yandex/div2/DivFunctionTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivFunction;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivFunctionTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivFunction;
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivFunction;

    iget-object v2, p2, Lcom/yandex/div2/DivFunctionTemplate;->a:Ltp3;

    iget-object v1, p0, Lcom/yandex/div2/n1$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->E3()Lyi5;

    move-result-object v5

    iget-object p0, p0, Lcom/yandex/div2/n1$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->C3()Lyi5;

    move-result-object v6

    const-string v4, "arguments"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->k(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object p0

    const-string v1, "resolveList(context, tem\u2026ArgumentJsonEntityParser)"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p2, Lcom/yandex/div2/DivFunctionTemplate;->b:Ltp3;

    const-string v2, "body"

    invoke-static {p1, v1, p3, v2}, Lsa5;->a(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "resolve(context, template.body, data, \"body\")"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    iget-object v2, p2, Lcom/yandex/div2/DivFunctionTemplate;->c:Ltp3;

    const-string v3, "name"

    sget-object v4, Lcom/yandex/div2/n1;->b:Lpnb;

    invoke-static {p1, v2, p3, v3, v4}, Lsa5;->e(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lpnb;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "resolve(context, templat\u2026, \"name\", NAME_VALIDATOR)"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    iget-object p2, p2, Lcom/yandex/div2/DivFunctionTemplate;->d:Ltp3;

    const-string v3, "return_type"

    sget-object v4, Lcom/yandex/div2/DivEvaluableType;->FROM_STRING:Le74;

    invoke-static {p1, p2, p3, v3, v4}, Lsa5;->b(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Le74;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "resolve(context, templat\u2026valuableType.FROM_STRING)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/yandex/div2/DivEvaluableType;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/yandex/div2/DivFunction;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/div2/DivEvaluableType;)V

    return-object v0
.end method
