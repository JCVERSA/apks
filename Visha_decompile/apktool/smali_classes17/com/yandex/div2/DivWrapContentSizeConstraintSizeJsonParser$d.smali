.class public final Lcom/yandex/div2/DivWrapContentSizeConstraintSizeJsonParser$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivWrapContentSizeConstraintSizeJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivWrapContentSizeConstraintSizeJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivWrapContentSizeTemplate$ConstraintSizeTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivWrapContentSizeConstraintSizeJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivWrapContentSizeTemplate$ConstraintSizeTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivWrapContentSizeTemplate$ConstraintSizeTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;
    .locals 8

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "template"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;

    iget-object v1, p2, Lcom/yandex/div2/DivWrapContentSizeTemplate$ConstraintSizeTemplate;->a:Ltp3;

    sget-object v4, Lcom/yandex/div2/DivWrapContentSizeConstraintSizeJsonParser;->c:Lzbb;

    sget-object v5, Lcom/yandex/div2/DivSizeUnit;->FROM_STRING:Le74;

    sget-object v7, Lcom/yandex/div2/DivWrapContentSizeConstraintSizeJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "unit"

    move-object v0, p1

    move-object v2, p3

    move-object v6, v7

    invoke-static/range {v0 .. v6}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v7, v0

    :goto_0
    iget-object v1, p2, Lcom/yandex/div2/DivWrapContentSizeTemplate$ConstraintSizeTemplate;->b:Ltp3;

    sget-object v4, Lacb;->b:Lzbb;

    sget-object v5, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v6, Lcom/yandex/div2/DivWrapContentSizeConstraintSizeJsonParser;->d:Lpnb;

    const-string v3, "value"

    move-object v0, p1

    move-object v2, p3

    invoke-static/range {v0 .. v6}, Lsa5;->i(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p1

    const-string p2, "resolveExpression(contex\u2026_TO_INT, VALUE_VALIDATOR)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v7, p1}, Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    return-object p0
.end method
