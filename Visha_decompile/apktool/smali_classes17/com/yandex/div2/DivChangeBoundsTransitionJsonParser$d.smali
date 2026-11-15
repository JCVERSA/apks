.class public final Lcom/yandex/div2/DivChangeBoundsTransitionJsonParser$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivChangeBoundsTransitionJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivChangeBoundsTransitionJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivChangeBoundsTransitionTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivChangeBoundsTransitionJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivChangeBoundsTransitionTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivChangeBoundsTransition;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivChangeBoundsTransitionTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivChangeBoundsTransition;
    .locals 11

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "template"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/div2/DivChangeBoundsTransition;

    iget-object v1, p2, Lcom/yandex/div2/DivChangeBoundsTransitionTemplate;->a:Ltp3;

    sget-object v8, Lacb;->b:Lzbb;

    sget-object v9, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v6, Lcom/yandex/div2/DivChangeBoundsTransitionJsonParser;->f:Lpnb;

    sget-object v10, Lcom/yandex/div2/DivChangeBoundsTransitionJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "duration"

    move-object v0, p1

    move-object v2, p3

    move-object v4, v8

    move-object v5, v9

    move-object v7, v10

    invoke-static/range {v0 .. v7}, Lsa5;->u(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v10, v0

    :goto_0
    iget-object v1, p2, Lcom/yandex/div2/DivChangeBoundsTransitionTemplate;->b:Ltp3;

    sget-object v4, Lcom/yandex/div2/DivChangeBoundsTransitionJsonParser;->e:Lzbb;

    sget-object v5, Lcom/yandex/div2/DivAnimationInterpolator;->FROM_STRING:Le74;

    sget-object v7, Lcom/yandex/div2/DivChangeBoundsTransitionJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "interpolator"

    move-object v0, p1

    move-object v2, p3

    move-object v6, v7

    invoke-static/range {v0 .. v6}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v7

    :cond_1
    iget-object v3, p2, Lcom/yandex/div2/DivChangeBoundsTransitionTemplate;->c:Ltp3;

    sget-object p2, Lcom/yandex/div2/DivChangeBoundsTransitionJsonParser;->g:Lpnb;

    sget-object v1, Lcom/yandex/div2/DivChangeBoundsTransitionJsonParser;->d:Lcom/yandex/div/json/expressions/Expression;

    const-string v5, "start_delay"

    move-object v2, p1

    move-object v4, p3

    move-object v6, v8

    move-object v7, v9

    move-object v8, p2

    move-object v9, v1

    invoke-static/range {v2 .. v9}, Lsa5;->u(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, p1

    :goto_1
    invoke-direct {p0, v10, v0, v1}, Lcom/yandex/div2/DivChangeBoundsTransition;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    return-object p0
.end method
