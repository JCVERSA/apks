.class public final Lcom/yandex/div2/DivTooltip;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lko4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivTooltip$a;,
        Lcom/yandex/div2/DivTooltip$Position;
    }
.end annotation


# static fields
.field public static final m:Lcom/yandex/div2/DivTooltip$a;

.field public static final n:Lcom/yandex/div/json/expressions/Expression;

.field public static final o:Lcom/yandex/div/json/expressions/Expression;

.field public static final p:Lcom/yandex/div2/DivTooltipMode$b;

.field public static final q:Ls74;


# instance fields
.field public final a:Lcom/yandex/div2/DivAnimation;

.field public final b:Lcom/yandex/div2/DivAnimation;

.field public final c:Lcom/yandex/div/json/expressions/Expression;

.field public final d:Lcom/yandex/div/json/expressions/Expression;

.field public final e:Lcom/yandex/div2/Div;

.field public final f:Lcom/yandex/div/json/expressions/Expression;

.field public final g:Ljava/lang/String;

.field public final h:Lcom/yandex/div2/DivTooltipMode;

.field public final i:Lcom/yandex/div2/DivPoint;

.field public final j:Lcom/yandex/div/json/expressions/Expression;

.field public final k:Ljava/util/List;

.field public l:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/yandex/div2/DivTooltip$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivTooltip$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivTooltip;->m:Lcom/yandex/div2/DivTooltip$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivTooltip;->n:Lcom/yandex/div/json/expressions/Expression;

    const-wide/16 v1, 0x1388

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivTooltip;->o:Lcom/yandex/div/json/expressions/Expression;

    new-instance v0, Lcom/yandex/div2/DivTooltipMode$b;

    new-instance v1, Lcom/yandex/div2/DivTooltipModeModal;

    invoke-direct {v1}, Lcom/yandex/div2/DivTooltipModeModal;-><init>()V

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivTooltipMode$b;-><init>(Lcom/yandex/div2/DivTooltipModeModal;)V

    sput-object v0, Lcom/yandex/div2/DivTooltip;->p:Lcom/yandex/div2/DivTooltipMode$b;

    sget-object v0, Lcom/yandex/div2/DivTooltip$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivTooltip$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivTooltip;->q:Ls74;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div2/DivAnimation;Lcom/yandex/div2/DivAnimation;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/Div;Lcom/yandex/div/json/expressions/Expression;Ljava/lang/String;Lcom/yandex/div2/DivTooltipMode;Lcom/yandex/div2/DivPoint;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;)V
    .locals 1

    const-string v0, "closeByTapOutside"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "duration"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p10, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/DivTooltip;->a:Lcom/yandex/div2/DivAnimation;

    iput-object p2, p0, Lcom/yandex/div2/DivTooltip;->b:Lcom/yandex/div2/DivAnimation;

    iput-object p3, p0, Lcom/yandex/div2/DivTooltip;->c:Lcom/yandex/div/json/expressions/Expression;

    iput-object p4, p0, Lcom/yandex/div2/DivTooltip;->d:Lcom/yandex/div/json/expressions/Expression;

    iput-object p5, p0, Lcom/yandex/div2/DivTooltip;->e:Lcom/yandex/div2/Div;

    iput-object p6, p0, Lcom/yandex/div2/DivTooltip;->f:Lcom/yandex/div/json/expressions/Expression;

    iput-object p7, p0, Lcom/yandex/div2/DivTooltip;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/yandex/div2/DivTooltip;->h:Lcom/yandex/div2/DivTooltipMode;

    iput-object p9, p0, Lcom/yandex/div2/DivTooltip;->i:Lcom/yandex/div2/DivPoint;

    iput-object p10, p0, Lcom/yandex/div2/DivTooltip;->j:Lcom/yandex/div/json/expressions/Expression;

    iput-object p11, p0, Lcom/yandex/div2/DivTooltip;->k:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/div2/DivTooltip;Loj3;Loj3;)Z
    .locals 7

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/yandex/div2/DivTooltip;->a:Lcom/yandex/div2/DivAnimation;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v3, p1, Lcom/yandex/div2/DivTooltip;->a:Lcom/yandex/div2/DivAnimation;

    invoke-virtual {v1, v3, p2, p3}, Lcom/yandex/div2/DivAnimation;->a(Lcom/yandex/div2/DivAnimation;Loj3;Loj3;)Z

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/yandex/div2/DivTooltip;->a:Lcom/yandex/div2/DivAnimation;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/yandex/div2/DivTooltip;->b:Lcom/yandex/div2/DivAnimation;

    if-eqz v1, :cond_3

    iget-object v3, p1, Lcom/yandex/div2/DivTooltip;->b:Lcom/yandex/div2/DivAnimation;

    invoke-virtual {v1, v3, p2, p3}, Lcom/yandex/div2/DivAnimation;->a(Lcom/yandex/div2/DivAnimation;Loj3;Loj3;)Z

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v1, p1, Lcom/yandex/div2/DivTooltip;->b:Lcom/yandex/div2/DivAnimation;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/yandex/div2/DivTooltip;->c:Lcom/yandex/div/json/expressions/Expression;

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_2

    :cond_5
    move-object v1, v3

    :goto_2
    iget-object v4, p1, Lcom/yandex/div2/DivTooltip;->c:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v4, :cond_6

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :cond_6
    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/yandex/div2/DivTooltip;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v3, p1, Lcom/yandex/div2/DivTooltip;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v1, v3, :cond_10

    iget-object v1, p0, Lcom/yandex/div2/DivTooltip;->e:Lcom/yandex/div2/Div;

    iget-object v3, p1, Lcom/yandex/div2/DivTooltip;->e:Lcom/yandex/div2/Div;

    invoke-virtual {v1, v3, p2, p3}, Lcom/yandex/div2/Div;->a(Lcom/yandex/div2/Div;Loj3;Loj3;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/yandex/div2/DivTooltip;->f:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    iget-object v1, p1, Lcom/yandex/div2/DivTooltip;->f:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/yandex/div2/DivTooltip;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/div2/DivTooltip;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/yandex/div2/DivTooltip;->h:Lcom/yandex/div2/DivTooltipMode;

    iget-object v3, p1, Lcom/yandex/div2/DivTooltip;->h:Lcom/yandex/div2/DivTooltipMode;

    invoke-virtual {v1, v3, p2, p3}, Lcom/yandex/div2/DivTooltipMode;->a(Lcom/yandex/div2/DivTooltipMode;Loj3;Loj3;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/yandex/div2/DivTooltip;->i:Lcom/yandex/div2/DivPoint;

    if-eqz v1, :cond_7

    iget-object v3, p1, Lcom/yandex/div2/DivTooltip;->i:Lcom/yandex/div2/DivPoint;

    invoke-virtual {v1, v3, p2, p3}, Lcom/yandex/div2/DivPoint;->a(Lcom/yandex/div2/DivPoint;Loj3;Loj3;)Z

    move-result v1

    goto :goto_3

    :cond_7
    iget-object v1, p1, Lcom/yandex/div2/DivTooltip;->i:Lcom/yandex/div2/DivPoint;

    if-nez v1, :cond_8

    move v1, v2

    goto :goto_3

    :cond_8
    move v1, v0

    :goto_3
    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/yandex/div2/DivTooltip;->j:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p1, Lcom/yandex/div2/DivTooltip;->j:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_10

    iget-object p0, p0, Lcom/yandex/div2/DivTooltip;->k:Ljava/util/List;

    if-eqz p0, :cond_d

    iget-object p1, p1, Lcom/yandex/div2/DivTooltip;->k:Ljava/util/List;

    if-nez p1, :cond_9

    return v0

    :cond_9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_a

    goto :goto_5

    :cond_a
    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v1, v0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    if-gez v1, :cond_b

    invoke-static {}, Ly71;->u()V

    :cond_b
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivAction;

    check-cast v3, Lcom/yandex/div2/DivAction;

    invoke-virtual {v3, v1, p2, p3}, Lcom/yandex/div2/DivAction;->a(Lcom/yandex/div2/DivAction;Loj3;Loj3;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_5

    :cond_c
    move v1, v4

    goto :goto_4

    :cond_d
    iget-object p0, p1, Lcom/yandex/div2/DivTooltip;->k:Ljava/util/List;

    if-nez p0, :cond_f

    :cond_e
    move p0, v2

    goto :goto_6

    :cond_f
    :goto_5
    move p0, v0

    :goto_6
    if-eqz p0, :cond_10

    move v0, v2

    :cond_10
    return v0
.end method

.method public hash()I
    .locals 4

    iget-object v0, p0, Lcom/yandex/div2/DivTooltip;->l:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-class v0, Lcom/yandex/div2/DivTooltip;

    invoke-static {v0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/yandex/div2/DivTooltip;->a:Lcom/yandex/div2/DivAnimation;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/yandex/div2/DivAnimation;->hash()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivTooltip;->b:Lcom/yandex/div2/DivAnimation;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/yandex/div2/DivAnimation;->hash()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivTooltip;->c:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivTooltip;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivTooltip;->e:Lcom/yandex/div2/Div;

    invoke-virtual {v1}, Lcom/yandex/div2/Div;->hash()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivTooltip;->f:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivTooltip;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivTooltip;->h:Lcom/yandex/div2/DivTooltipMode;

    invoke-virtual {v1}, Lcom/yandex/div2/DivTooltipMode;->hash()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivTooltip;->i:Lcom/yandex/div2/DivPoint;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/yandex/div2/DivPoint;->hash()I

    move-result v1

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivTooltip;->j:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivTooltip;->k:Ljava/util/List;

    if-eqz v1, :cond_5

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/div2/DivAction;

    invoke-virtual {v3}, Lcom/yandex/div2/DivAction;->hash()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_4

    :cond_5
    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div2/DivTooltip;->l:Ljava/lang/Integer;

    return v0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->J8()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivTooltipJsonParser$b;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/DivTooltipJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivTooltip;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
