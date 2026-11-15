.class public final Lcom/yandex/div2/b0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/b0;
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

    iput-object p1, p0, Lcom/yandex/div2/b0$b;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/b0$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivAspect;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivAspect;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/b0$b;->e(Lex7;Lcom/yandex/div2/DivAspect;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivAspect;
    .locals 6

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/div2/DivAspect;

    sget-object v3, Lacb;->d:Lzbb;

    sget-object v4, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->g:Le74;

    sget-object v5, Lcom/yandex/div2/b0;->b:Lpnb;

    const-string v2, "ratio"

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lpa5;->f(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p1

    const-string p2, "readExpression(context, \u2026_DOUBLE, RATIO_VALIDATOR)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/yandex/div2/DivAspect;-><init>(Lcom/yandex/div/json/expressions/Expression;)V

    return-object p0
.end method

.method public e(Lex7;Lcom/yandex/div2/DivAspect;)Lorg/json/JSONObject;
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "ratio"

    iget-object p2, p2, Lcom/yandex/div2/DivAspect;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, p0, v0, p2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    return-object p0
.end method
