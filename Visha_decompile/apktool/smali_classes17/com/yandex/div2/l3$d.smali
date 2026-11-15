.class public final Lcom/yandex/div2/l3$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/l3;
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

    iput-object p1, p0, Lcom/yandex/div2/l3$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivShadowTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/l3$d;->b(Lex7;Lcom/yandex/div2/DivShadowTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivShadow;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivShadowTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivShadow;
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivShadow;

    iget-object v2, p2, Lcom/yandex/div2/DivShadowTemplate;->a:Ltp3;

    sget-object v5, Lacb;->d:Lzbb;

    sget-object v6, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->g:Le74;

    sget-object v7, Lcom/yandex/div2/l3;->e:Lpnb;

    sget-object v9, Lcom/yandex/div2/l3;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "alpha"

    move-object v1, p1

    move-object v3, p3

    move-object v8, v9

    invoke-static/range {v1 .. v8}, Lsa5;->u(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v9, v1

    :goto_0
    iget-object v2, p2, Lcom/yandex/div2/DivShadowTemplate;->b:Ltp3;

    sget-object v5, Lacb;->b:Lzbb;

    sget-object v6, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v7, Lcom/yandex/div2/l3;->f:Lpnb;

    sget-object v10, Lcom/yandex/div2/l3;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "blur"

    move-object v1, p1

    move-object v3, p3

    move-object v8, v10

    invoke-static/range {v1 .. v8}, Lsa5;->u(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v10, v1

    :goto_1
    iget-object v2, p2, Lcom/yandex/div2/DivShadowTemplate;->c:Ltp3;

    sget-object v5, Lacb;->f:Lzbb;

    sget-object v6, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    sget-object v8, Lcom/yandex/div2/l3;->d:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "color"

    move-object v1, p1

    move-object v3, p3

    move-object v7, v8

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move-object v8, v1

    :goto_2
    iget-object v2, p2, Lcom/yandex/div2/DivShadowTemplate;->d:Ltp3;

    iget-object p2, p0, Lcom/yandex/div2/l3$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p2}, Lcom/yandex/div2/JsonParserComponent;->Y5()Lyi5;

    move-result-object v5

    iget-object p0, p0, Lcom/yandex/div2/l3$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->W5()Lyi5;

    move-result-object v6

    const-string v4, "offset"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->d(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "resolve(context, templat\u2026divPointJsonEntityParser)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/yandex/div2/DivPoint;

    invoke-direct {v0, v9, v10, v8, p0}, Lcom/yandex/div2/DivShadow;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivPoint;)V

    return-object v0
.end method
