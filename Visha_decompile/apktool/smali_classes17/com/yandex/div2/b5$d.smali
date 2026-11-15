.class public final Lcom/yandex/div2/b5$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/b5;
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

    iput-object p1, p0, Lcom/yandex/div2/b5$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTransformTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/b5$d;->b(Lex7;Lcom/yandex/div2/DivTransformTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTransform;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivTransformTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTransform;
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivTransform;

    iget-object v2, p2, Lcom/yandex/div2/DivTransformTemplate;->a:Ltp3;

    iget-object v1, p0, Lcom/yandex/div2/b5$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->S5()Lyi5;

    move-result-object v5

    iget-object v1, p0, Lcom/yandex/div2/b5$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->Q5()Lyi5;

    move-result-object v6

    const-string v4, "pivot_x"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivPivot;

    if-nez v1, :cond_0

    sget-object v1, Lcom/yandex/div2/b5;->b:Lcom/yandex/div2/DivPivot$c;

    :cond_0
    const-string v2, "JsonFieldResolver.resolv\u2026 ?: PIVOT_X_DEFAULT_VALUE"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p2, Lcom/yandex/div2/DivTransformTemplate;->b:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/b5$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->S5()Lyi5;

    move-result-object v7

    iget-object p0, p0, Lcom/yandex/div2/b5$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->Q5()Lyi5;

    move-result-object v8

    const-string v6, "pivot_y"

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v3 .. v8}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivPivot;

    if-nez p0, :cond_1

    sget-object p0, Lcom/yandex/div2/b5;->c:Lcom/yandex/div2/DivPivot$c;

    :cond_1
    const-string v2, "JsonFieldResolver.resolv\u2026 ?: PIVOT_Y_DEFAULT_VALUE"

    invoke-static {p0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p2, Lcom/yandex/div2/DivTransformTemplate;->c:Ltp3;

    sget-object v7, Lacb;->d:Lzbb;

    sget-object v8, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->g:Le74;

    const-string v6, "rotation"

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v3 .. v8}, Lsa5;->s(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p1

    invoke-direct {v0, v1, p0, p1}, Lcom/yandex/div2/DivTransform;-><init>(Lcom/yandex/div2/DivPivot;Lcom/yandex/div2/DivPivot;Lcom/yandex/div/json/expressions/Expression;)V

    return-object v0
.end method
