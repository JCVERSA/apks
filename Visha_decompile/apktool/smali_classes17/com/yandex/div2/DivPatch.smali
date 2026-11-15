.class public final Lcom/yandex/div2/DivPatch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lko4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivPatch$Change;,
        Lcom/yandex/div2/DivPatch$a;,
        Lcom/yandex/div2/DivPatch$Mode;
    }
.end annotation


# static fields
.field public static final f:Lcom/yandex/div2/DivPatch$a;

.field public static final g:Lcom/yandex/div/json/expressions/Expression;

.field public static final h:Ls74;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lcom/yandex/div/json/expressions/Expression;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;

.field public e:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/DivPatch$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivPatch$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivPatch;->f:Lcom/yandex/div2/DivPatch$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    sget-object v1, Lcom/yandex/div2/DivPatch$Mode;->PARTIAL:Lcom/yandex/div2/DivPatch$Mode;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivPatch;->g:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lcom/yandex/div2/DivPatch$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivPatch$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivPatch;->h:Ls74;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    const-string v0, "changes"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/DivPatch;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/yandex/div2/DivPatch;->b:Lcom/yandex/div/json/expressions/Expression;

    iput-object p3, p0, Lcom/yandex/div2/DivPatch;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/yandex/div2/DivPatch;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public hash()I
    .locals 5

    iget-object v0, p0, Lcom/yandex/div2/DivPatch;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-class v0, Lcom/yandex/div2/DivPatch;

    invoke-static {v0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/yandex/div2/DivPatch;->a:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivPatch$Change;

    invoke-virtual {v4}, Lcom/yandex/div2/DivPatch$Change;->hash()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    :cond_1
    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/yandex/div2/DivPatch;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivPatch;->c:Ljava/util/List;

    if-eqz v1, :cond_2

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivAction;

    invoke-virtual {v4}, Lcom/yandex/div2/DivAction;->hash()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_1

    :cond_2
    move v3, v2

    :cond_3
    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/yandex/div2/DivPatch;->d:Ljava/util/List;

    if-eqz v1, :cond_4

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/div2/DivAction;

    invoke-virtual {v3}, Lcom/yandex/div2/DivAction;->hash()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_2

    :cond_4
    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div2/DivPatch;->e:Ljava/lang/Integer;

    return v0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->F5()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivPatchJsonParser$b;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/DivPatchJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivPatch;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
