.class public final Lcom/yandex/div2/DivActionAnimatorStart;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lko4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivActionAnimatorStart$a;
    }
.end annotation


# static fields
.field public static final j:Lcom/yandex/div2/DivActionAnimatorStart$a;

.field public static final k:Ls74;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/yandex/div/json/expressions/Expression;

.field public final c:Lcom/yandex/div/json/expressions/Expression;

.field public final d:Lcom/yandex/div2/DivTypedValue;

.field public final e:Lcom/yandex/div/json/expressions/Expression;

.field public final f:Lcom/yandex/div2/DivCount;

.field public final g:Lcom/yandex/div/json/expressions/Expression;

.field public final h:Lcom/yandex/div2/DivTypedValue;

.field public i:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/DivActionAnimatorStart$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivActionAnimatorStart$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivActionAnimatorStart;->j:Lcom/yandex/div2/DivActionAnimatorStart$a;

    sget-object v0, Lcom/yandex/div2/DivActionAnimatorStart$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivActionAnimatorStart$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivActionAnimatorStart;->k:Ls74;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivTypedValue;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivCount;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivTypedValue;)V
    .locals 1

    const-string v0, "animatorId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/DivActionAnimatorStart;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/yandex/div2/DivActionAnimatorStart;->b:Lcom/yandex/div/json/expressions/Expression;

    iput-object p3, p0, Lcom/yandex/div2/DivActionAnimatorStart;->c:Lcom/yandex/div/json/expressions/Expression;

    iput-object p4, p0, Lcom/yandex/div2/DivActionAnimatorStart;->d:Lcom/yandex/div2/DivTypedValue;

    iput-object p5, p0, Lcom/yandex/div2/DivActionAnimatorStart;->e:Lcom/yandex/div/json/expressions/Expression;

    iput-object p6, p0, Lcom/yandex/div2/DivActionAnimatorStart;->f:Lcom/yandex/div2/DivCount;

    iput-object p7, p0, Lcom/yandex/div2/DivActionAnimatorStart;->g:Lcom/yandex/div/json/expressions/Expression;

    iput-object p8, p0, Lcom/yandex/div2/DivActionAnimatorStart;->h:Lcom/yandex/div2/DivTypedValue;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/div2/DivActionAnimatorStart;Loj3;Loj3;)Z
    .locals 5

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/yandex/div2/DivActionAnimatorStart;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/yandex/div2/DivActionAnimatorStart;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/yandex/div2/DivActionAnimatorStart;->b:Lcom/yandex/div/json/expressions/Expression;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivAnimationDirection;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    iget-object v3, p1, Lcom/yandex/div2/DivActionAnimatorStart;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_2

    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/div2/DivAnimationDirection;

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    if-ne v1, v3, :cond_f

    iget-object v1, p0, Lcom/yandex/div2/DivActionAnimatorStart;->c:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    iget-object v3, p1, Lcom/yandex/div2/DivActionAnimatorStart;->c:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_4

    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    goto :goto_3

    :cond_4
    move-object v3, v2

    :goto_3
    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/yandex/div2/DivActionAnimatorStart;->d:Lcom/yandex/div2/DivTypedValue;

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    iget-object v4, p1, Lcom/yandex/div2/DivActionAnimatorStart;->d:Lcom/yandex/div2/DivTypedValue;

    invoke-virtual {v1, v4, p2, p3}, Lcom/yandex/div2/DivTypedValue;->a(Lcom/yandex/div2/DivTypedValue;Loj3;Loj3;)Z

    move-result v1

    goto :goto_4

    :cond_5
    iget-object v1, p1, Lcom/yandex/div2/DivActionAnimatorStart;->d:Lcom/yandex/div2/DivTypedValue;

    if-nez v1, :cond_6

    move v1, v3

    goto :goto_4

    :cond_6
    move v1, v0

    :goto_4
    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/yandex/div2/DivActionAnimatorStart;->e:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_7

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivAnimationInterpolator;

    goto :goto_5

    :cond_7
    move-object v1, v2

    :goto_5
    iget-object v4, p1, Lcom/yandex/div2/DivActionAnimatorStart;->e:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v4, :cond_8

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivAnimationInterpolator;

    goto :goto_6

    :cond_8
    move-object v4, v2

    :goto_6
    if-ne v1, v4, :cond_f

    iget-object v1, p0, Lcom/yandex/div2/DivActionAnimatorStart;->f:Lcom/yandex/div2/DivCount;

    if-eqz v1, :cond_9

    iget-object v4, p1, Lcom/yandex/div2/DivActionAnimatorStart;->f:Lcom/yandex/div2/DivCount;

    invoke-virtual {v1, v4, p2, p3}, Lcom/yandex/div2/DivCount;->a(Lcom/yandex/div2/DivCount;Loj3;Loj3;)Z

    move-result v1

    goto :goto_7

    :cond_9
    iget-object v1, p1, Lcom/yandex/div2/DivActionAnimatorStart;->f:Lcom/yandex/div2/DivCount;

    if-nez v1, :cond_a

    move v1, v3

    goto :goto_7

    :cond_a
    move v1, v0

    :goto_7
    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/yandex/div2/DivActionAnimatorStart;->g:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_b

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    goto :goto_8

    :cond_b
    move-object v1, v2

    :goto_8
    iget-object v4, p1, Lcom/yandex/div2/DivActionAnimatorStart;->g:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v4, :cond_c

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    :cond_c
    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object p0, p0, Lcom/yandex/div2/DivActionAnimatorStart;->h:Lcom/yandex/div2/DivTypedValue;

    if-eqz p0, :cond_d

    iget-object p1, p1, Lcom/yandex/div2/DivActionAnimatorStart;->h:Lcom/yandex/div2/DivTypedValue;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivTypedValue;->a(Lcom/yandex/div2/DivTypedValue;Loj3;Loj3;)Z

    move-result p0

    goto :goto_9

    :cond_d
    iget-object p0, p1, Lcom/yandex/div2/DivActionAnimatorStart;->h:Lcom/yandex/div2/DivTypedValue;

    if-nez p0, :cond_e

    move p0, v3

    goto :goto_9

    :cond_e
    move p0, v0

    :goto_9
    if-eqz p0, :cond_f

    move v0, v3

    :cond_f
    return v0
.end method

.method public hash()I
    .locals 3

    iget-object v0, p0, Lcom/yandex/div2/DivActionAnimatorStart;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-class v0, Lcom/yandex/div2/DivActionAnimatorStart;

    invoke-static {v0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/yandex/div2/DivActionAnimatorStart;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivActionAnimatorStart;->b:Lcom/yandex/div/json/expressions/Expression;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivActionAnimatorStart;->c:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivActionAnimatorStart;->d:Lcom/yandex/div2/DivTypedValue;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/yandex/div2/DivTypedValue;->hash()I

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivActionAnimatorStart;->e:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivActionAnimatorStart;->f:Lcom/yandex/div2/DivCount;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/yandex/div2/DivCount;->hash()I

    move-result v1

    goto :goto_4

    :cond_5
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivActionAnimatorStart;->g:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_6
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivActionAnimatorStart;->h:Lcom/yandex/div2/DivTypedValue;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/yandex/div2/DivTypedValue;->hash()I

    move-result v2

    :cond_7
    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div2/DivActionAnimatorStart;->i:Ljava/lang/Integer;

    return v0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->K()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivActionAnimatorStartJsonParser$b;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/DivActionAnimatorStartJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivActionAnimatorStart;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
