.class public final Lcom/yandex/div2/q4$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lgfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/q4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/q4$c;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTextRangeBorderTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/q4$c;->e(Lex7;Lcom/yandex/div2/DivTextRangeBorderTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTextRangeBorderTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/q4$c;->d(Lex7;Lcom/yandex/div2/DivTextRangeBorderTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTextRangeBorderTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivTextRangeBorderTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTextRangeBorderTemplate;
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lex7;->c()Z

    move-result v0

    invoke-static {p1}, Lfx7;->c(Lex7;)Lex7;

    move-result-object p1

    new-instance v9, Lcom/yandex/div2/DivTextRangeBorderTemplate;

    sget-object v4, Lacb;->b:Lzbb;

    const/4 v10, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/yandex/div2/DivTextRangeBorderTemplate;->a:Ltp3;

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, v10

    :goto_0
    sget-object v7, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v8, Lcom/yandex/div2/q4;->b:Lpnb;

    const-string v3, "corner_radius"

    move-object v1, p1

    move-object v2, p3

    move v5, v0

    invoke-static/range {v1 .. v8}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v7

    const-string v1, "readOptionalFieldWithExp\u2026 CORNER_RADIUS_VALIDATOR)"

    invoke-static {v7, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    iget-object p2, p2, Lcom/yandex/div2/DivTextRangeBorderTemplate;->b:Ltp3;

    move-object v5, p2

    goto :goto_1

    :cond_1
    move-object v5, v10

    :goto_1
    iget-object p0, p0, Lcom/yandex/div2/q4$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->x7()Lyi5;

    move-result-object v6

    const-string v3, "stroke"

    move-object v1, p1

    move-object v2, p3

    move v4, v0

    invoke-static/range {v1 .. v6}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object p0

    const-string p1, "readOptionalField(contex\u2026StrokeJsonTemplateParser)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v7, p0}, Lcom/yandex/div2/DivTextRangeBorderTemplate;-><init>(Ltp3;Ltp3;)V

    return-object v9
.end method

.method public e(Lex7;Lcom/yandex/div2/DivTextRangeBorderTemplate;)Lorg/json/JSONObject;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivTextRangeBorderTemplate;->a:Ltp3;

    const-string v2, "corner_radius"

    invoke-static {p1, v0, v2, v1}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object p2, p2, Lcom/yandex/div2/DivTextRangeBorderTemplate;->b:Ltp3;

    iget-object p0, p0, Lcom/yandex/div2/q4$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->x7()Lyi5;

    move-result-object p0

    const-string v1, "stroke"

    invoke-static {p1, v0, v1, p2, p0}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    return-object v0
.end method
