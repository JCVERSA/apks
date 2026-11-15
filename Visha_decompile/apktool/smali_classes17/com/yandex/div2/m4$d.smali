.class public final Lcom/yandex/div2/m4$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/m4;
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

    iput-object p1, p0, Lcom/yandex/div2/m4$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTextTemplate$ImageTemplate$AccessibilityTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/m4$d;->b(Lex7;Lcom/yandex/div2/DivTextTemplate$ImageTemplate$AccessibilityTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivText$Image$Accessibility;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivTextTemplate$ImageTemplate$AccessibilityTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivText$Image$Accessibility;
    .locals 3

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "template"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/div2/DivText$Image$Accessibility;

    iget-object v0, p2, Lcom/yandex/div2/DivTextTemplate$ImageTemplate$AccessibilityTemplate;->a:Ltp3;

    const-string v1, "description"

    sget-object v2, Lacb;->c:Lzbb;

    invoke-static {p1, v0, p3, v1, v2}, Lsa5;->r(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    iget-object p2, p2, Lcom/yandex/div2/DivTextTemplate$ImageTemplate$AccessibilityTemplate;->b:Ltp3;

    const-string v1, "type"

    sget-object v2, Lcom/yandex/div2/DivText$Image$Accessibility$Type;->FROM_STRING:Le74;

    invoke-static {p1, p2, p3, v1, v2}, Lsa5;->n(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Le74;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/div2/DivText$Image$Accessibility$Type;

    if-nez p1, :cond_0

    sget-object p1, Lcom/yandex/div2/m4;->b:Lcom/yandex/div2/DivText$Image$Accessibility$Type;

    :cond_0
    const-string p2, "JsonFieldResolver.resolv\u2026NG) ?: TYPE_DEFAULT_VALUE"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/yandex/div2/DivText$Image$Accessibility;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivText$Image$Accessibility$Type;)V

    return-object p0
.end method
