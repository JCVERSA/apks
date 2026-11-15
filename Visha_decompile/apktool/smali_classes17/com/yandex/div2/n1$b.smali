.class public final Lcom/yandex/div2/n1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/n1;
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

    iput-object p1, p0, Lcom/yandex/div2/n1$b;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/n1$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivFunction;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivFunction;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/n1$b;->e(Lex7;Lcom/yandex/div2/DivFunction;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivFunction;
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivFunction;

    iget-object p0, p0, Lcom/yandex/div2/n1$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->C3()Lyi5;

    move-result-object p0

    const-string v1, "arguments"

    invoke-static {p1, p2, v1, p0}, Ltb5;->i(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object p0

    const-string v1, "readList(context, data, \u2026ArgumentJsonEntityParser)"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "body"

    invoke-static {p1, p2, v1}, Ltb5;->d(Lex7;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "read(context, data, \"body\")"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    const-string v2, "name"

    sget-object v3, Lcom/yandex/div2/n1;->b:Lpnb;

    invoke-static {p1, p2, v2, v3}, Ltb5;->h(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lpnb;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "read(context, data, \"name\", NAME_VALIDATOR)"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    const-string v3, "return_type"

    sget-object v4, Lcom/yandex/div2/DivEvaluableType;->FROM_STRING:Le74;

    invoke-static {p1, p2, v3, v4}, Ltb5;->e(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Le74;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "read(context, data, \"ret\u2026valuableType.FROM_STRING)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/yandex/div2/DivEvaluableType;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/yandex/div2/DivFunction;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/div2/DivEvaluableType;)V

    return-object v0
.end method

.method public e(Lex7;Lcom/yandex/div2/DivFunction;)Lorg/json/JSONObject;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivFunction;->a:Ljava/util/List;

    iget-object p0, p0, Lcom/yandex/div2/n1$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->C3()Lyi5;

    move-result-object p0

    const-string v2, "arguments"

    invoke-static {p1, v0, v2, v1, p0}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    const-string p0, "body"

    iget-object v1, p2, Lcom/yandex/div2/DivFunction;->b:Ljava/lang/String;

    invoke-static {p1, v0, p0, v1}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "name"

    iget-object v1, p2, Lcom/yandex/div2/DivFunction;->c:Ljava/lang/String;

    invoke-static {p1, v0, p0, v1}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p2, Lcom/yandex/div2/DivFunction;->d:Lcom/yandex/div2/DivEvaluableType;

    sget-object p2, Lcom/yandex/div2/DivEvaluableType;->TO_STRING:Le74;

    const-string v1, "return_type"

    invoke-static {p1, v0, v1, p0, p2}, Ltb5;->w(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Le74;)V

    return-object v0
.end method
