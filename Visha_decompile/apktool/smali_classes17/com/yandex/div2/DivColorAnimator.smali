.class public final Lcom/yandex/div2/DivColorAnimator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lko4;
.implements Ljg2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivColorAnimator$a;
    }
.end annotation


# static fields
.field public static final m:Lcom/yandex/div2/DivColorAnimator$a;

.field public static final n:Lcom/yandex/div/json/expressions/Expression;

.field public static final o:Lcom/yandex/div/json/expressions/Expression;

.field public static final p:Lcom/yandex/div2/DivCount$b;

.field public static final q:Lcom/yandex/div/json/expressions/Expression;

.field public static final r:Ls74;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lcom/yandex/div/json/expressions/Expression;

.field public final c:Lcom/yandex/div/json/expressions/Expression;

.field public final d:Ljava/util/List;

.field public final e:Lcom/yandex/div/json/expressions/Expression;

.field public final f:Ljava/lang/String;

.field public final g:Lcom/yandex/div/json/expressions/Expression;

.field public final h:Lcom/yandex/div2/DivCount;

.field public final i:Lcom/yandex/div/json/expressions/Expression;

.field public final j:Lcom/yandex/div/json/expressions/Expression;

.field public final k:Ljava/lang/String;

.field public l:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/yandex/div2/DivColorAnimator$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivColorAnimator$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivColorAnimator;->m:Lcom/yandex/div2/DivColorAnimator$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    sget-object v1, Lcom/yandex/div2/DivAnimationDirection;->NORMAL:Lcom/yandex/div2/DivAnimationDirection;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivColorAnimator;->n:Lcom/yandex/div/json/expressions/Expression;

    sget-object v1, Lcom/yandex/div2/DivAnimationInterpolator;->LINEAR:Lcom/yandex/div2/DivAnimationInterpolator;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivColorAnimator;->o:Lcom/yandex/div/json/expressions/Expression;

    new-instance v1, Lcom/yandex/div2/DivCount$b;

    new-instance v2, Lcom/yandex/div2/DivFixedCount;

    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/yandex/div2/DivFixedCount;-><init>(Lcom/yandex/div/json/expressions/Expression;)V

    invoke-direct {v1, v2}, Lcom/yandex/div2/DivCount$b;-><init>(Lcom/yandex/div2/DivFixedCount;)V

    sput-object v1, Lcom/yandex/div2/DivColorAnimator;->p:Lcom/yandex/div2/DivCount$b;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivColorAnimator;->q:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lcom/yandex/div2/DivColorAnimator$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivColorAnimator$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivColorAnimator;->r:Ls74;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivCount;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/lang/String;)V
    .locals 1

    const-string v0, "direction"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "duration"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endValue"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interpolator"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repeatCount"

    invoke-static {p8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startDelay"

    invoke-static {p9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "variableName"

    invoke-static {p11, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/DivColorAnimator;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/yandex/div2/DivColorAnimator;->b:Lcom/yandex/div/json/expressions/Expression;

    iput-object p3, p0, Lcom/yandex/div2/DivColorAnimator;->c:Lcom/yandex/div/json/expressions/Expression;

    iput-object p4, p0, Lcom/yandex/div2/DivColorAnimator;->d:Ljava/util/List;

    iput-object p5, p0, Lcom/yandex/div2/DivColorAnimator;->e:Lcom/yandex/div/json/expressions/Expression;

    iput-object p6, p0, Lcom/yandex/div2/DivColorAnimator;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/yandex/div2/DivColorAnimator;->g:Lcom/yandex/div/json/expressions/Expression;

    iput-object p8, p0, Lcom/yandex/div2/DivColorAnimator;->h:Lcom/yandex/div2/DivCount;

    iput-object p9, p0, Lcom/yandex/div2/DivColorAnimator;->i:Lcom/yandex/div/json/expressions/Expression;

    iput-object p10, p0, Lcom/yandex/div2/DivColorAnimator;->j:Lcom/yandex/div/json/expressions/Expression;

    iput-object p11, p0, Lcom/yandex/div2/DivColorAnimator;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/div/json/expressions/Expression;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivColorAnimator;->b:Lcom/yandex/div/json/expressions/Expression;

    return-object p0
.end method

.method public b()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivColorAnimator;->a:Ljava/util/List;

    return-object p0
.end method

.method public c()Lcom/yandex/div2/DivCount;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivColorAnimator;->h:Lcom/yandex/div2/DivCount;

    return-object p0
.end method

.method public d()Lcom/yandex/div/json/expressions/Expression;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivColorAnimator;->g:Lcom/yandex/div/json/expressions/Expression;

    return-object p0
.end method

.method public e()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivColorAnimator;->d:Ljava/util/List;

    return-object p0
.end method

.method public f()Lcom/yandex/div/json/expressions/Expression;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivColorAnimator;->i:Lcom/yandex/div/json/expressions/Expression;

    return-object p0
.end method

.method public final g(Lcom/yandex/div2/DivColorAnimator;Loj3;Loj3;)Z
    .locals 6

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/div2/DivColorAnimator;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/yandex/div2/DivColorAnimator;->b()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    goto/16 :goto_3

    :cond_2
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_3

    invoke-static {}, Ly71;->u()V

    :cond_3
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/div2/DivAction;

    check-cast v4, Lcom/yandex/div2/DivAction;

    invoke-virtual {v4, v3, p2, p3}, Lcom/yandex/div2/DivAction;->a(Lcom/yandex/div2/DivAction;Loj3;Loj3;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_3

    :cond_4
    move v3, v5

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/yandex/div2/DivColorAnimator;->b()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_f

    :cond_6
    invoke-virtual {p0}, Lcom/yandex/div2/DivColorAnimator;->a()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yandex/div2/DivColorAnimator;->a()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_f

    invoke-virtual {p0}, Lcom/yandex/div2/DivColorAnimator;->getDuration()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/yandex/div2/DivColorAnimator;->getDuration()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_f

    invoke-virtual {p0}, Lcom/yandex/div2/DivColorAnimator;->e()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Lcom/yandex/div2/DivColorAnimator;->e()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_7

    return v0

    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_8

    goto/16 :goto_3

    :cond_8
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_9

    invoke-static {}, Ly71;->u()V

    :cond_9
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/div2/DivAction;

    check-cast v4, Lcom/yandex/div2/DivAction;

    invoke-virtual {v4, v3, p2, p3}, Lcom/yandex/div2/DivAction;->a(Lcom/yandex/div2/DivAction;Loj3;Loj3;)Z

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_3

    :cond_a
    move v3, v5

    goto :goto_1

    :cond_b
    invoke-virtual {p1}, Lcom/yandex/div2/DivColorAnimator;->e()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_f

    :cond_c
    iget-object v1, p0, Lcom/yandex/div2/DivColorAnimator;->e:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v2, p1, Lcom/yandex/div2/DivColorAnimator;->e:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_f

    invoke-virtual {p0}, Lcom/yandex/div2/DivColorAnimator;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yandex/div2/DivColorAnimator;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/yandex/div2/DivColorAnimator;->d()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yandex/div2/DivColorAnimator;->d()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_f

    invoke-virtual {p0}, Lcom/yandex/div2/DivColorAnimator;->c()Lcom/yandex/div2/DivCount;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yandex/div2/DivColorAnimator;->c()Lcom/yandex/div2/DivCount;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Lcom/yandex/div2/DivCount;->a(Lcom/yandex/div2/DivCount;Loj3;Loj3;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/yandex/div2/DivColorAnimator;->f()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/yandex/div2/DivColorAnimator;->f()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/yandex/div2/DivColorAnimator;->j:Lcom/yandex/div/json/expressions/Expression;

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    goto :goto_2

    :cond_d
    move-object p2, v2

    :goto_2
    iget-object v1, p1, Lcom/yandex/div2/DivColorAnimator;->j:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_e

    invoke-virtual {v1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Ljava/lang/Integer;

    :cond_e
    invoke-static {p2, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-virtual {p0}, Lcom/yandex/div2/DivColorAnimator;->h()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div2/DivColorAnimator;->h()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    :cond_f
    :goto_3
    return v0
.end method

.method public getDuration()Lcom/yandex/div/json/expressions/Expression;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivColorAnimator;->c:Lcom/yandex/div/json/expressions/Expression;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivColorAnimator;->f:Ljava/lang/String;

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivColorAnimator;->k:Ljava/lang/String;

    return-object p0
.end method

.method public hash()I
    .locals 5

    iget-object v0, p0, Lcom/yandex/div2/DivColorAnimator;->l:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-class v0, Lcom/yandex/div2/DivColorAnimator;

    invoke-static {v0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/yandex/div2/DivColorAnimator;->b()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivAction;

    invoke-virtual {v4}, Lcom/yandex/div2/DivAction;->hash()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    :cond_1
    move v3, v2

    :cond_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/yandex/div2/DivColorAnimator;->a()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivColorAnimator;->getDuration()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivColorAnimator;->e()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivAction;

    invoke-virtual {v4}, Lcom/yandex/div2/DivAction;->hash()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_1

    :cond_3
    move v3, v2

    :cond_4
    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/yandex/div2/DivColorAnimator;->e:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivColorAnimator;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivColorAnimator;->d()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivColorAnimator;->c()Lcom/yandex/div2/DivCount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/DivCount;->hash()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivColorAnimator;->f()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivColorAnimator;->j:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v2

    :cond_5
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/yandex/div2/DivColorAnimator;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div2/DivColorAnimator;->l:Ljava/lang/Integer;

    return v0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->g2()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivColorAnimatorJsonParser$b;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/DivColorAnimatorJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivColorAnimator;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
