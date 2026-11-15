.class public final Li47;
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

    iput-object p1, p0, Li47;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/NumberVariableTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Li47;->b(Lex7;Lcom/yandex/div2/NumberVariableTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/NumberVariable;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/NumberVariableTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/NumberVariable;
    .locals 3

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "template"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/div2/NumberVariable;

    iget-object v0, p2, Lcom/yandex/div2/NumberVariableTemplate;->a:Ltp3;

    const-string v1, "name"

    invoke-static {p1, v0, p3, v1}, Lsa5;->a(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "resolve(context, template.name, data, \"name\")"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    iget-object p2, p2, Lcom/yandex/div2/NumberVariableTemplate;->b:Ltp3;

    const-string v1, "value"

    sget-object v2, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->g:Le74;

    invoke-static {p1, p2, p3, v1, v2}, Lsa5;->b(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Le74;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "resolve(context, templat\u2026value\", NUMBER_TO_DOUBLE)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    invoke-direct {p0, v0, p1, p2}, Lcom/yandex/div2/NumberVariable;-><init>(Ljava/lang/String;D)V

    return-object p0
.end method
