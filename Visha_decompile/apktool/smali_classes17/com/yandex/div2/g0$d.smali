.class public final Lcom/yandex/div2/g0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/g0;
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

    iput-object p1, p0, Lcom/yandex/div2/g0$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivBorderTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/g0$d;->b(Lex7;Lcom/yandex/div2/DivBorderTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivBorder;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivBorderTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivBorder;
    .locals 12

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivBorder;

    iget-object v2, p2, Lcom/yandex/div2/DivBorderTemplate;->a:Ltp3;

    sget-object v5, Lacb;->b:Lzbb;

    sget-object v6, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v7, Lcom/yandex/div2/g0;->c:Lpnb;

    const-string v4, "corner_radius"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v7}, Lsa5;->t(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    iget-object v4, p2, Lcom/yandex/div2/DivBorderTemplate;->b:Ltp3;

    iget-object v1, p0, Lcom/yandex/div2/g0$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->r2()Lyi5;

    move-result-object v7

    iget-object v1, p0, Lcom/yandex/div2/g0$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->p2()Lyi5;

    move-result-object v8

    const-string v6, "corners_radius"

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v3 .. v8}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/yandex/div2/DivCornersRadius;

    iget-object v5, p2, Lcom/yandex/div2/DivBorderTemplate;->c:Ltp3;

    sget-object v8, Lacb;->a:Lzbb;

    sget-object v9, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    sget-object v1, Lcom/yandex/div2/g0;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v7, "has_shadow"

    move-object v4, p1

    move-object v6, p3

    move-object v10, v1

    invoke-static/range {v4 .. v10}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v4

    if-nez v4, :cond_0

    move-object v4, v1

    :cond_0
    iget-object v6, p2, Lcom/yandex/div2/DivBorderTemplate;->d:Ltp3;

    iget-object v1, p0, Lcom/yandex/div2/g0$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->O6()Lyi5;

    move-result-object v9

    iget-object v1, p0, Lcom/yandex/div2/g0$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->M6()Lyi5;

    move-result-object v10

    const-string v8, "shadow"

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v5 .. v10}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/yandex/div2/DivShadow;

    iget-object v7, p2, Lcom/yandex/div2/DivBorderTemplate;->e:Ltp3;

    iget-object p2, p0, Lcom/yandex/div2/g0$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p2}, Lcom/yandex/div2/JsonParserComponent;->y7()Lyi5;

    move-result-object v10

    iget-object p0, p0, Lcom/yandex/div2/g0$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->w7()Lyi5;

    move-result-object v11

    const-string v9, "stroke"

    move-object v6, p1

    move-object v8, p3

    invoke-static/range {v6 .. v11}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/yandex/div2/DivStroke;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div2/DivBorder;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivCornersRadius;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivShadow;Lcom/yandex/div2/DivStroke;)V

    return-object v0
.end method
