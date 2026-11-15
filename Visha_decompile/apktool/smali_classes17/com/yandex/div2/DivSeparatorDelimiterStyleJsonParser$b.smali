.class public final Lcom/yandex/div2/DivSeparatorDelimiterStyleJsonParser$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivSeparatorDelimiterStyleJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivSeparatorDelimiterStyleJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivSeparatorDelimiterStyleJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSeparator$DelimiterStyle;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivSeparator$DelimiterStyle;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivSeparatorDelimiterStyleJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivSeparator$DelimiterStyle;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSeparator$DelimiterStyle;
    .locals 8

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/div2/DivSeparator$DelimiterStyle;

    sget-object v3, Lacb;->f:Lzbb;

    sget-object v4, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    sget-object v6, Lcom/yandex/div2/DivSeparatorDelimiterStyleJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "color"

    move-object v0, p1

    move-object v1, p2

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v6, v0

    :goto_0
    sget-object v3, Lcom/yandex/div2/DivSeparatorDelimiterStyleJsonParser;->d:Lzbb;

    sget-object v4, Lcom/yandex/div2/DivSeparator$DelimiterStyle$Orientation;->FROM_STRING:Le74;

    sget-object v7, Lcom/yandex/div2/DivSeparatorDelimiterStyleJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "orientation"

    move-object v0, p1

    move-object v1, p2

    move-object v5, v7

    invoke-static/range {v0 .. v5}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move-object v7, p1

    :goto_1
    invoke-direct {p0, v6, v7}, Lcom/yandex/div2/DivSeparator$DelimiterStyle;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    return-object p0
.end method

.method public e(Lex7;Lcom/yandex/div2/DivSeparator$DelimiterStyle;)Lorg/json/JSONObject;
    .locals 3

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p2, Lcom/yandex/div2/DivSeparator$DelimiterStyle;->a:Lcom/yandex/div/json/expressions/Expression;

    sget-object v1, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->a:Le74;

    const-string v2, "color"

    invoke-static {p1, p0, v2, v0, v1}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    iget-object p2, p2, Lcom/yandex/div2/DivSeparator$DelimiterStyle;->b:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lcom/yandex/div2/DivSeparator$DelimiterStyle$Orientation;->TO_STRING:Le74;

    const-string v1, "orientation"

    invoke-static {p1, p0, v1, p2, v0}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    return-object p0
.end method
