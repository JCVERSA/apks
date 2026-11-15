.class public final Lcom/yandex/div2/DivAction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lko4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivAction$a;,
        Lcom/yandex/div2/DivAction$MenuItem;,
        Lcom/yandex/div2/DivAction$Target;
    }
.end annotation


# static fields
.field public static final m:Lcom/yandex/div2/DivAction$a;

.field public static final n:Lcom/yandex/div/json/expressions/Expression;

.field public static final o:Ls74;


# instance fields
.field public final a:Lcom/yandex/div2/DivDownloadCallbacks;

.field public final b:Lcom/yandex/div/json/expressions/Expression;

.field public final c:Lcom/yandex/div/json/expressions/Expression;

.field public final d:Lcom/yandex/div/json/expressions/Expression;

.field public final e:Ljava/util/List;

.field public final f:Lorg/json/JSONObject;

.field public final g:Lcom/yandex/div/json/expressions/Expression;

.field public final h:Ljava/lang/String;

.field public final i:Lcom/yandex/div/json/expressions/Expression;

.field public final j:Lcom/yandex/div2/DivActionTyped;

.field public final k:Lcom/yandex/div/json/expressions/Expression;

.field public l:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/DivAction$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivAction$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivAction;->m:Lcom/yandex/div2/DivAction$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivAction;->n:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lcom/yandex/div2/DivAction$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivAction$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivAction;->o:Ls74;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div2/DivDownloadCallbacks;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lorg/json/JSONObject;Lcom/yandex/div/json/expressions/Expression;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivActionTyped;Lcom/yandex/div/json/expressions/Expression;)V
    .locals 1

    const-string v0, "isEnabled"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logId"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/DivAction;->a:Lcom/yandex/div2/DivDownloadCallbacks;

    iput-object p2, p0, Lcom/yandex/div2/DivAction;->b:Lcom/yandex/div/json/expressions/Expression;

    iput-object p3, p0, Lcom/yandex/div2/DivAction;->c:Lcom/yandex/div/json/expressions/Expression;

    iput-object p4, p0, Lcom/yandex/div2/DivAction;->d:Lcom/yandex/div/json/expressions/Expression;

    iput-object p5, p0, Lcom/yandex/div2/DivAction;->e:Ljava/util/List;

    iput-object p6, p0, Lcom/yandex/div2/DivAction;->f:Lorg/json/JSONObject;

    iput-object p7, p0, Lcom/yandex/div2/DivAction;->g:Lcom/yandex/div/json/expressions/Expression;

    iput-object p8, p0, Lcom/yandex/div2/DivAction;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/yandex/div2/DivAction;->i:Lcom/yandex/div/json/expressions/Expression;

    iput-object p10, p0, Lcom/yandex/div2/DivAction;->j:Lcom/yandex/div2/DivActionTyped;

    iput-object p11, p0, Lcom/yandex/div2/DivAction;->k:Lcom/yandex/div/json/expressions/Expression;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/div2/DivAction;Loj3;Loj3;)Z
    .locals 8

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/yandex/div2/DivAction;->a:Lcom/yandex/div2/DivDownloadCallbacks;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v3, p1, Lcom/yandex/div2/DivAction;->a:Lcom/yandex/div2/DivDownloadCallbacks;

    invoke-virtual {v1, v3, p2, p3}, Lcom/yandex/div2/DivDownloadCallbacks;->a(Lcom/yandex/div2/DivDownloadCallbacks;Loj3;Loj3;)Z

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/yandex/div2/DivAction;->a:Lcom/yandex/div2/DivDownloadCallbacks;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/yandex/div2/DivAction;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v3, p1, Lcom/yandex/div2/DivAction;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v1, v3, :cond_14

    iget-object v1, p0, Lcom/yandex/div2/DivAction;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p1, Lcom/yandex/div2/DivAction;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/yandex/div2/DivAction;->d:Lcom/yandex/div/json/expressions/Expression;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    goto :goto_1

    :cond_3
    move-object v1, v3

    :goto_1
    iget-object v4, p1, Lcom/yandex/div2/DivAction;->d:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v4, :cond_4

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    goto :goto_2

    :cond_4
    move-object v4, v3

    :goto_2
    invoke-static {v1, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/yandex/div2/DivAction;->e:Ljava/util/List;

    if-eqz v1, :cond_9

    iget-object v4, p1, Lcom/yandex/div2/DivAction;->e:Ljava/util/List;

    if-nez v4, :cond_5

    return v0

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_6

    goto :goto_4

    :cond_6
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v0

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_7

    invoke-static {}, Ly71;->u()V

    :cond_7
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/div2/DivAction$MenuItem;

    check-cast v6, Lcom/yandex/div2/DivAction$MenuItem;

    invoke-virtual {v6, v5, p2, p3}, Lcom/yandex/div2/DivAction$MenuItem;->a(Lcom/yandex/div2/DivAction$MenuItem;Loj3;Loj3;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_4

    :cond_8
    move v5, v7

    goto :goto_3

    :cond_9
    iget-object v1, p1, Lcom/yandex/div2/DivAction;->e:Ljava/util/List;

    if-nez v1, :cond_b

    :cond_a
    move v1, v2

    goto :goto_5

    :cond_b
    :goto_4
    move v1, v0

    :goto_5
    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/yandex/div2/DivAction;->f:Lorg/json/JSONObject;

    iget-object v4, p1, Lcom/yandex/div2/DivAction;->f:Lorg/json/JSONObject;

    invoke-static {v1, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/yandex/div2/DivAction;->g:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_c

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    goto :goto_6

    :cond_c
    move-object v1, v3

    :goto_6
    iget-object v4, p1, Lcom/yandex/div2/DivAction;->g:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v4, :cond_d

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    goto :goto_7

    :cond_d
    move-object v4, v3

    :goto_7
    invoke-static {v1, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/yandex/div2/DivAction;->h:Ljava/lang/String;

    iget-object v4, p1, Lcom/yandex/div2/DivAction;->h:Ljava/lang/String;

    invoke-static {v1, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/yandex/div2/DivAction;->i:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_e

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivAction$Target;

    goto :goto_8

    :cond_e
    move-object v1, v3

    :goto_8
    iget-object v4, p1, Lcom/yandex/div2/DivAction;->i:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v4, :cond_f

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivAction$Target;

    goto :goto_9

    :cond_f
    move-object v4, v3

    :goto_9
    if-ne v1, v4, :cond_14

    iget-object v1, p0, Lcom/yandex/div2/DivAction;->j:Lcom/yandex/div2/DivActionTyped;

    if-eqz v1, :cond_10

    iget-object v4, p1, Lcom/yandex/div2/DivAction;->j:Lcom/yandex/div2/DivActionTyped;

    invoke-virtual {v1, v4, p2, p3}, Lcom/yandex/div2/DivActionTyped;->a(Lcom/yandex/div2/DivActionTyped;Loj3;Loj3;)Z

    move-result v1

    goto :goto_a

    :cond_10
    iget-object v1, p1, Lcom/yandex/div2/DivAction;->j:Lcom/yandex/div2/DivActionTyped;

    if-nez v1, :cond_11

    move v1, v2

    goto :goto_a

    :cond_11
    move v1, v0

    :goto_a
    if-eqz v1, :cond_14

    iget-object p0, p0, Lcom/yandex/div2/DivAction;->k:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_12

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    goto :goto_b

    :cond_12
    move-object p0, v3

    :goto_b
    iget-object p1, p1, Lcom/yandex/div2/DivAction;->k:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p1, :cond_13

    invoke-virtual {p1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/net/Uri;

    :cond_13
    invoke-static {p0, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    move v0, v2

    :cond_14
    return v0
.end method

.method public hash()I
    .locals 5

    iget-object v0, p0, Lcom/yandex/div2/DivAction;->l:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-class v0, Lcom/yandex/div2/DivAction;

    invoke-static {v0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/yandex/div2/DivAction;->a:Lcom/yandex/div2/DivDownloadCallbacks;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/yandex/div2/DivDownloadCallbacks;->hash()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivAction;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivAction;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivAction;->d:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivAction;->e:Ljava/util/List;

    if-eqz v1, :cond_3

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivAction$MenuItem;

    invoke-virtual {v4}, Lcom/yandex/div2/DivAction$MenuItem;->hash()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_2

    :cond_3
    move v3, v2

    :cond_4
    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/yandex/div2/DivAction;->f:Lorg/json/JSONObject;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivAction;->g:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivAction;->h:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_7
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivAction;->i:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_8
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivAction;->j:Lcom/yandex/div2/DivActionTyped;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionTyped;->hash()I

    move-result v1

    goto :goto_7

    :cond_9
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivAction;->k:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v2

    :cond_a
    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div2/DivAction;->l:Ljava/lang/Integer;

    return v0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivActionJsonParser$b;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/DivActionJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivAction;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
