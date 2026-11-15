.class public final Lcom/yandex/div2/n0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/n0;
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

    iput-object p1, p0, Lcom/yandex/div2/n0$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivCollectionItemBuilderTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/n0$d;->b(Lex7;Lcom/yandex/div2/DivCollectionItemBuilderTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivCollectionItemBuilder;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivCollectionItemBuilderTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivCollectionItemBuilder;
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/yandex/div2/DivCollectionItemBuilder;

    iget-object v2, p2, Lcom/yandex/div2/DivCollectionItemBuilderTemplate;->a:Ltp3;

    sget-object v3, Lacb;->g:Lzbb;

    invoke-static {p1, v2, p3, v0, v3}, Lsa5;->g(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    const-string v2, "resolveExpression(contex\u2026, TYPE_HELPER_JSON_ARRAY)"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p2, Lcom/yandex/div2/DivCollectionItemBuilderTemplate;->b:Ltp3;

    const-string v3, "data_element_name"

    invoke-static {p1, v2, p3, v3}, Lsa5;->m(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    sget-object v2, Lcom/yandex/div2/n0;->b:Ljava/lang/String;

    :cond_0
    const-string v3, "JsonFieldResolver.resolv\u2026LEMENT_NAME_DEFAULT_VALUE"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p2, Lcom/yandex/div2/DivCollectionItemBuilderTemplate;->c:Ltp3;

    iget-object p2, p0, Lcom/yandex/div2/n0$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p2}, Lcom/yandex/div2/JsonParserComponent;->f2()Lyi5;

    move-result-object v8

    iget-object p0, p0, Lcom/yandex/div2/n0$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->d2()Lyi5;

    move-result-object v9

    sget-object v10, Lcom/yandex/div2/n0;->c:Lhm5;

    const-string v7, "prototypes"

    move-object v4, p1

    move-object v6, p3

    invoke-static/range {v4 .. v10}, Lsa5;->l(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;Lhm5;)Ljava/util/List;

    move-result-object p0

    const-string p1, "resolveList(context, tem\u2026er, PROTOTYPES_VALIDATOR)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0, v2, p0}, Lcom/yandex/div2/DivCollectionItemBuilder;-><init>(Lcom/yandex/div/json/expressions/Expression;Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method
