.class public final Lcom/yandex/div2/m4$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/m4;
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

    iput-object p1, p0, Lcom/yandex/div2/m4$b;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/m4$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivText$Image$Accessibility;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivText$Image$Accessibility;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/m4$b;->e(Lex7;Lcom/yandex/div2/DivText$Image$Accessibility;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivText$Image$Accessibility;
    .locals 3

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/div2/DivText$Image$Accessibility;

    const-string v0, "description"

    sget-object v1, Lacb;->c:Lzbb;

    invoke-static {p1, p2, v0, v1}, Lpa5;->h(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    const-string v1, "type"

    sget-object v2, Lcom/yandex/div2/DivText$Image$Accessibility$Type;->FROM_STRING:Le74;

    invoke-static {p1, p2, v1, v2}, Ltb5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Le74;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/div2/DivText$Image$Accessibility$Type;

    if-nez p1, :cond_0

    sget-object p1, Lcom/yandex/div2/m4;->b:Lcom/yandex/div2/DivText$Image$Accessibility$Type;

    :cond_0
    const-string p2, "JsonPropertyParser.readO\u2026NG) ?: TYPE_DEFAULT_VALUE"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/yandex/div2/DivText$Image$Accessibility;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivText$Image$Accessibility$Type;)V

    return-object p0
.end method

.method public e(Lex7;Lcom/yandex/div2/DivText$Image$Accessibility;)Lorg/json/JSONObject;
    .locals 2

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p2, Lcom/yandex/div2/DivText$Image$Accessibility;->a:Lcom/yandex/div/json/expressions/Expression;

    const-string v1, "description"

    invoke-static {p1, p0, v1, v0}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    iget-object p2, p2, Lcom/yandex/div2/DivText$Image$Accessibility;->b:Lcom/yandex/div2/DivText$Image$Accessibility$Type;

    sget-object v0, Lcom/yandex/div2/DivText$Image$Accessibility$Type;->TO_STRING:Le74;

    const-string v1, "type"

    invoke-static {p1, p0, v1, p2, v0}, Ltb5;->w(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Le74;)V

    return-object p0
.end method
