.class public final Lcom/yandex/div2/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/b1;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivDrawableTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/b1;->b(Lex7;Lcom/yandex/div2/DivDrawableTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivDrawable;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivDrawableTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivDrawable;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/yandex/div2/DivDrawableTemplate$b;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/yandex/div2/DivDrawable$b;

    iget-object p0, p0, Lcom/yandex/div2/b1;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->R6()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvp2;

    check-cast p2, Lcom/yandex/div2/DivDrawableTemplate$b;

    invoke-virtual {p2}, Lcom/yandex/div2/DivDrawableTemplate$b;->c()Lcom/yandex/div2/DivShapeDrawableTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lvp2;->b(Lex7;Lcom/yandex/div2/DivShapeDrawableTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivShapeDrawable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivDrawable$b;-><init>(Lcom/yandex/div2/DivShapeDrawable;)V

    return-object v0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
