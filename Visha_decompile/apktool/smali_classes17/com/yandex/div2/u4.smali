.class public final Lcom/yandex/div2/u4;
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

    iput-object p1, p0, Lcom/yandex/div2/u4;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTextRangeMaskTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/u4;->b(Lex7;Lcom/yandex/div2/DivTextRangeMaskTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTextRangeMask;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivTextRangeMaskTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTextRangeMask;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/yandex/div2/DivTextRangeMaskTemplate$b;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/yandex/div2/DivTextRangeMask$b;

    iget-object p0, p0, Lcom/yandex/div2/u4;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->C8()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/v4$d;

    check-cast p2, Lcom/yandex/div2/DivTextRangeMaskTemplate$b;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTextRangeMaskTemplate$b;->c()Lcom/yandex/div2/DivTextRangeMaskParticlesTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/v4$d;->b(Lex7;Lcom/yandex/div2/DivTextRangeMaskParticlesTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTextRangeMaskParticles;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivTextRangeMask$b;-><init>(Lcom/yandex/div2/DivTextRangeMaskParticles;)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/yandex/div2/DivTextRangeMaskTemplate$c;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/yandex/div2/DivTextRangeMask$c;

    iget-object p0, p0, Lcom/yandex/div2/u4;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->F8()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/w4$d;

    check-cast p2, Lcom/yandex/div2/DivTextRangeMaskTemplate$c;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTextRangeMaskTemplate$c;->c()Lcom/yandex/div2/DivTextRangeMaskSolidTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/w4$d;->b(Lex7;Lcom/yandex/div2/DivTextRangeMaskSolidTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTextRangeMaskSolid;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivTextRangeMask$c;-><init>(Lcom/yandex/div2/DivTextRangeMaskSolid;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
