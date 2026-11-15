.class public final Lcom/yandex/div2/h1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lgfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/h1;
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

    iput-object p1, p0, Lcom/yandex/div2/h1$c;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/h1$c;->e(Lex7;Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/h1$c;->d(Lex7;Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate;
    .locals 11

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lex7;->c()Z

    move-result p0

    invoke-static {p1}, Lfx7;->c(Lex7;)Lex7;

    move-result-object p1

    new-instance v7, Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate;

    sget-object v8, Lacb;->c:Lzbb;

    const/4 v9, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate;->a:Ltp3;

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v9

    :goto_0
    sget-object v6, Lcom/yandex/div2/h1;->c:Lpnb;

    const-string v2, "key"

    move-object v0, p1

    move-object v1, p3

    move-object v3, v8

    move v4, p0

    invoke-static/range {v0 .. v6}, Lra5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Lpnb;)Ltp3;

    move-result-object v10

    const-string v0, "readFieldWithExpression(\u2026rent?.key, KEY_VALIDATOR)"

    invoke-static {v10, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate;->b:Ltp3;

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, v9

    :goto_1
    sget-object v6, Lcom/yandex/div2/h1;->d:Lpnb;

    const-string v2, "placeholder"

    move-object v0, p1

    move-object v1, p3

    move-object v3, v8

    move v4, p0

    invoke-static/range {v0 .. v6}, Lra5;->w(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Lpnb;)Ltp3;

    move-result-object v6

    const-string v0, "readOptionalFieldWithExp\u2026r, PLACEHOLDER_VALIDATOR)"

    invoke-static {v6, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    iget-object p2, p2, Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate;->c:Ltp3;

    move-object v5, p2

    goto :goto_2

    :cond_2
    move-object v5, v9

    :goto_2
    const-string v2, "regex"

    move-object v0, p1

    move-object v1, p3

    move-object v3, v8

    move v4, p0

    invoke-static/range {v0 .. v5}, Lra5;->t(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;)Ltp3;

    move-result-object p0

    const-string p1, "readOptionalFieldWithExp\u2026wOverride, parent?.regex)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v10, v6, p0}, Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate;-><init>(Ltp3;Ltp3;Ltp3;)V

    return-object v7
.end method

.method public e(Lex7;Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate;)Lorg/json/JSONObject;
    .locals 2

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p2, Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate;->a:Ltp3;

    const-string v1, "key"

    invoke-static {p1, p0, v1, v0}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v0, "placeholder"

    iget-object v1, p2, Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate;->b:Ltp3;

    invoke-static {p1, p0, v0, v1}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v0, "regex"

    iget-object p2, p2, Lcom/yandex/div2/DivFixedLengthInputMaskTemplate$PatternElementTemplate;->c:Ltp3;

    invoke-static {p1, p0, v0, p2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    return-object p0
.end method
