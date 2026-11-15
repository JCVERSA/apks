.class public final Lcom/yandex/div2/k2$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/k2;
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

    iput-object p1, p0, Lcom/yandex/div2/k2$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivLinearGradientTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/k2$d;->b(Lex7;Lcom/yandex/div2/DivLinearGradientTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivLinearGradient;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivLinearGradientTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivLinearGradient;
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivLinearGradient;

    iget-object v2, p2, Lcom/yandex/div2/DivLinearGradientTemplate;->a:Ltp3;

    sget-object v5, Lacb;->b:Lzbb;

    sget-object v6, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v7, Lcom/yandex/div2/k2;->c:Lpnb;

    sget-object v9, Lcom/yandex/div2/k2;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "angle"

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
    iget-object v2, p2, Lcom/yandex/div2/DivLinearGradientTemplate;->b:Ltp3;

    iget-object v1, p0, Lcom/yandex/div2/k2$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->R4()Lyi5;

    move-result-object v5

    iget-object p0, p0, Lcom/yandex/div2/k2$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->P4()Lyi5;

    move-result-object v6

    sget-object v7, Lcom/yandex/div2/k2;->e:Lhm5;

    const-string v4, "color_map"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v7}, Lsa5;->C(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;Lhm5;)Ljava/util/List;

    move-result-object p0

    iget-object v2, p2, Lcom/yandex/div2/DivLinearGradientTemplate;->c:Ltp3;

    sget-object v5, Lacb;->f:Lzbb;

    sget-object v6, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    sget-object v7, Lcom/yandex/div2/k2;->d:Lhm5;

    const-string v4, "colors"

    invoke-static/range {v1 .. v7}, Lsa5;->x(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lhm5;)Lnj3;

    move-result-object p1

    invoke-direct {v0, v9, p0, p1}, Lcom/yandex/div2/DivLinearGradient;-><init>(Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lnj3;)V

    return-object v0
.end method
