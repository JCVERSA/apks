.class public final Lcom/yandex/div2/DivFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lko4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivFunction$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/yandex/div2/DivFunction$a;

.field public static final g:Ls74;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/yandex/div2/DivEvaluableType;

.field public e:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/DivFunction$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivFunction$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivFunction;->f:Lcom/yandex/div2/DivFunction$a;

    sget-object v0, Lcom/yandex/div2/DivFunction$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivFunction$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivFunction;->g:Ls74;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/div2/DivEvaluableType;)V
    .locals 1

    const-string v0, "arguments"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "returnType"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/DivFunction;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/yandex/div2/DivFunction;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/yandex/div2/DivFunction;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/yandex/div2/DivFunction;->d:Lcom/yandex/div2/DivEvaluableType;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/div2/DivFunction;Loj3;Loj3;)Z
    .locals 6

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/yandex/div2/DivFunction;->a:Ljava/util/List;

    iget-object v2, p1, Lcom/yandex/div2/DivFunction;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_2

    invoke-static {}, Ly71;->u()V

    :cond_2
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/div2/DivFunctionArgument;

    check-cast v4, Lcom/yandex/div2/DivFunctionArgument;

    invoke-virtual {v4, v3, p2, p3}, Lcom/yandex/div2/DivFunctionArgument;->a(Lcom/yandex/div2/DivFunctionArgument;Loj3;Loj3;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move v3, v5

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lcom/yandex/div2/DivFunction;->b:Ljava/lang/String;

    iget-object p3, p1, Lcom/yandex/div2/DivFunction;->b:Ljava/lang/String;

    invoke-static {p2, p3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/yandex/div2/DivFunction;->c:Ljava/lang/String;

    iget-object p3, p1, Lcom/yandex/div2/DivFunction;->c:Ljava/lang/String;

    invoke-static {p2, p3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p0, p0, Lcom/yandex/div2/DivFunction;->d:Lcom/yandex/div2/DivEvaluableType;

    iget-object p1, p1, Lcom/yandex/div2/DivFunction;->d:Lcom/yandex/div2/DivEvaluableType;

    if-ne p0, p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    :goto_1
    return v0
.end method

.method public hash()I
    .locals 4

    iget-object v0, p0, Lcom/yandex/div2/DivFunction;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-class v0, Lcom/yandex/div2/DivFunction;

    invoke-static {v0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/yandex/div2/DivFunction;->a:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/div2/DivFunctionArgument;

    invoke-virtual {v3}, Lcom/yandex/div2/DivFunctionArgument;->hash()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/yandex/div2/DivFunction;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivFunction;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivFunction;->d:Lcom/yandex/div2/DivEvaluableType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div2/DivFunction;->e:Ljava/lang/Integer;

    return v0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->F3()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/n1$b;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/n1$b;->e(Lex7;Lcom/yandex/div2/DivFunction;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
