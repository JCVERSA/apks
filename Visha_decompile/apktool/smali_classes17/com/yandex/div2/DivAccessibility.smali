.class public final Lcom/yandex/div2/DivAccessibility;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lko4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivAccessibility$a;,
        Lcom/yandex/div2/DivAccessibility$Mode;,
        Lcom/yandex/div2/DivAccessibility$Type;
    }
.end annotation


# static fields
.field public static final i:Lcom/yandex/div2/DivAccessibility$a;

.field public static final j:Lcom/yandex/div/json/expressions/Expression;

.field public static final k:Lcom/yandex/div/json/expressions/Expression;

.field public static final l:Lcom/yandex/div2/DivAccessibility$Type;

.field public static final m:Ls74;


# instance fields
.field public final a:Lcom/yandex/div/json/expressions/Expression;

.field public final b:Lcom/yandex/div/json/expressions/Expression;

.field public final c:Lcom/yandex/div/json/expressions/Expression;

.field public final d:Lcom/yandex/div/json/expressions/Expression;

.field public final e:Lcom/yandex/div/json/expressions/Expression;

.field public final f:Lcom/yandex/div/json/expressions/Expression;

.field public final g:Lcom/yandex/div2/DivAccessibility$Type;

.field public h:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/DivAccessibility$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivAccessibility$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivAccessibility;->i:Lcom/yandex/div2/DivAccessibility$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    sget-object v1, Lcom/yandex/div2/DivAccessibility$Mode;->DEFAULT:Lcom/yandex/div2/DivAccessibility$Mode;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivAccessibility;->j:Lcom/yandex/div/json/expressions/Expression;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivAccessibility;->k:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lcom/yandex/div2/DivAccessibility$Type;->AUTO:Lcom/yandex/div2/DivAccessibility$Type;

    sput-object v0, Lcom/yandex/div2/DivAccessibility;->l:Lcom/yandex/div2/DivAccessibility$Type;

    sget-object v0, Lcom/yandex/div2/DivAccessibility$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivAccessibility$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivAccessibility;->m:Ls74;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivAccessibility$Type;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "muteAfterAction"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/DivAccessibility;->a:Lcom/yandex/div/json/expressions/Expression;

    iput-object p2, p0, Lcom/yandex/div2/DivAccessibility;->b:Lcom/yandex/div/json/expressions/Expression;

    iput-object p3, p0, Lcom/yandex/div2/DivAccessibility;->c:Lcom/yandex/div/json/expressions/Expression;

    iput-object p4, p0, Lcom/yandex/div2/DivAccessibility;->d:Lcom/yandex/div/json/expressions/Expression;

    iput-object p5, p0, Lcom/yandex/div2/DivAccessibility;->e:Lcom/yandex/div/json/expressions/Expression;

    iput-object p6, p0, Lcom/yandex/div2/DivAccessibility;->f:Lcom/yandex/div/json/expressions/Expression;

    iput-object p7, p0, Lcom/yandex/div2/DivAccessibility;->g:Lcom/yandex/div2/DivAccessibility$Type;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/div2/DivAccessibility;Loj3;Loj3;)Z
    .locals 4

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/yandex/div2/DivAccessibility;->a:Lcom/yandex/div/json/expressions/Expression;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    iget-object v3, p1, Lcom/yandex/div2/DivAccessibility;->a:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_2

    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/yandex/div2/DivAccessibility;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    iget-object v3, p1, Lcom/yandex/div2/DivAccessibility;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_4

    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object v3, v2

    :goto_3
    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/yandex/div2/DivAccessibility;->c:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_5

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    goto :goto_4

    :cond_5
    move-object v1, v2

    :goto_4
    iget-object v3, p1, Lcom/yandex/div2/DivAccessibility;->c:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_6

    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    goto :goto_5

    :cond_6
    move-object v3, v2

    :goto_5
    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/yandex/div2/DivAccessibility;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p1, Lcom/yandex/div2/DivAccessibility;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_9

    iget-object v1, p0, Lcom/yandex/div2/DivAccessibility;->e:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v3, p1, Lcom/yandex/div2/DivAccessibility;->e:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v1, v3, :cond_9

    iget-object v1, p0, Lcom/yandex/div2/DivAccessibility;->f:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_7

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_6

    :cond_7
    move-object p2, v2

    :goto_6
    iget-object v1, p1, Lcom/yandex/div2/DivAccessibility;->f:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_8

    invoke-virtual {v1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    :cond_8
    invoke-static {p2, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p0, p0, Lcom/yandex/div2/DivAccessibility;->g:Lcom/yandex/div2/DivAccessibility$Type;

    iget-object p1, p1, Lcom/yandex/div2/DivAccessibility;->g:Lcom/yandex/div2/DivAccessibility$Type;

    if-ne p0, p1, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method public hash()I
    .locals 3

    iget-object v0, p0, Lcom/yandex/div2/DivAccessibility;->h:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-class v0, Lcom/yandex/div2/DivAccessibility;

    invoke-static {v0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/yandex/div2/DivAccessibility;->a:Lcom/yandex/div/json/expressions/Expression;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivAccessibility;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivAccessibility;->c:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivAccessibility;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivAccessibility;->e:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivAccessibility;->f:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v2

    :cond_4
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/yandex/div2/DivAccessibility;->g:Lcom/yandex/div2/DivAccessibility$Type;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div2/DivAccessibility;->h:Ljava/lang/Integer;

    return v0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->H()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivAccessibilityJsonParser$b;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/DivAccessibilityJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivAccessibility;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
