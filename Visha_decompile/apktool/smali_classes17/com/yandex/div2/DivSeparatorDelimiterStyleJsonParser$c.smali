.class public final Lcom/yandex/div2/DivSeparatorDelimiterStyleJsonParser$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lgfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivSeparatorDelimiterStyleJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivSeparatorDelimiterStyleJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivSeparatorTemplate$DelimiterStyleTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivSeparatorDelimiterStyleJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivSeparatorTemplate$DelimiterStyleTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivSeparatorTemplate$DelimiterStyleTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivSeparatorDelimiterStyleJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivSeparatorTemplate$DelimiterStyleTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSeparatorTemplate$DelimiterStyleTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivSeparatorTemplate$DelimiterStyleTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSeparatorTemplate$DelimiterStyleTemplate;
    .locals 10

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lex7;->c()Z

    move-result p0

    invoke-static {p1}, Lfx7;->c(Lex7;)Lex7;

    move-result-object p1

    new-instance v7, Lcom/yandex/div2/DivSeparatorTemplate$DelimiterStyleTemplate;

    sget-object v3, Lacb;->f:Lzbb;

    const/4 v8, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/yandex/div2/DivSeparatorTemplate$DelimiterStyleTemplate;->a:Ltp3;

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v8

    :goto_0
    sget-object v6, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    const-string v2, "color"

    move-object v0, p1

    move-object v1, p3

    move v4, p0

    invoke-static/range {v0 .. v6}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v9

    const-string v0, "readOptionalFieldWithExp\u2026lor, STRING_TO_COLOR_INT)"

    invoke-static {v9, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/yandex/div2/DivSeparatorDelimiterStyleJsonParser;->d:Lzbb;

    if-eqz p2, :cond_1

    iget-object p2, p2, Lcom/yandex/div2/DivSeparatorTemplate$DelimiterStyleTemplate;->b:Ltp3;

    move-object v5, p2

    goto :goto_1

    :cond_1
    move-object v5, v8

    :goto_1
    sget-object v6, Lcom/yandex/div2/DivSeparator$DelimiterStyle$Orientation;->FROM_STRING:Le74;

    const-string v2, "orientation"

    move-object v0, p1

    move-object v1, p3

    move v4, p0

    invoke-static/range {v0 .. v6}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object p0

    const-string p1, "readOptionalFieldWithExp\u2026.Orientation.FROM_STRING)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v9, p0}, Lcom/yandex/div2/DivSeparatorTemplate$DelimiterStyleTemplate;-><init>(Ltp3;Ltp3;)V

    return-object v7
.end method

.method public e(Lex7;Lcom/yandex/div2/DivSeparatorTemplate$DelimiterStyleTemplate;)Lorg/json/JSONObject;
    .locals 3

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p2, Lcom/yandex/div2/DivSeparatorTemplate$DelimiterStyleTemplate;->a:Ltp3;

    sget-object v1, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->a:Le74;

    const-string v2, "color"

    invoke-static {p1, p0, v2, v0, v1}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    iget-object p2, p2, Lcom/yandex/div2/DivSeparatorTemplate$DelimiterStyleTemplate;->b:Ltp3;

    sget-object v0, Lcom/yandex/div2/DivSeparator$DelimiterStyle$Orientation;->TO_STRING:Le74;

    const-string v1, "orientation"

    invoke-static {p1, p0, v1, p2, v0}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    return-object p0
.end method
