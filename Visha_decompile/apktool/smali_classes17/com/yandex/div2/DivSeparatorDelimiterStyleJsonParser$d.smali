.class public final Lcom/yandex/div2/DivSeparatorDelimiterStyleJsonParser$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivSeparatorDelimiterStyleJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivSeparatorDelimiterStyleJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivSeparatorTemplate$DelimiterStyleTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivSeparatorDelimiterStyleJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivSeparatorTemplate$DelimiterStyleTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSeparator$DelimiterStyle;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivSeparatorTemplate$DelimiterStyleTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSeparator$DelimiterStyle;
    .locals 8

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "template"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/div2/DivSeparator$DelimiterStyle;

    iget-object v1, p2, Lcom/yandex/div2/DivSeparatorTemplate$DelimiterStyleTemplate;->a:Ltp3;

    sget-object v4, Lacb;->f:Lzbb;

    sget-object v5, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    sget-object v7, Lcom/yandex/div2/DivSeparatorDelimiterStyleJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "color"

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
    iget-object v1, p2, Lcom/yandex/div2/DivSeparatorTemplate$DelimiterStyleTemplate;->b:Ltp3;

    sget-object v4, Lcom/yandex/div2/DivSeparatorDelimiterStyleJsonParser;->d:Lzbb;

    sget-object v5, Lcom/yandex/div2/DivSeparator$DelimiterStyle$Orientation;->FROM_STRING:Le74;

    sget-object p2, Lcom/yandex/div2/DivSeparatorDelimiterStyleJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "orientation"

    move-object v0, p1

    move-object v2, p3

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, p1

    :goto_1
    invoke-direct {p0, v7, p2}, Lcom/yandex/div2/DivSeparator$DelimiterStyle;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    return-object p0
.end method
