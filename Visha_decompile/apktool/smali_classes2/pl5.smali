.class public final Lpl5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls30;


# instance fields
.field public final a:Lcom/google/common/collect/ImmutableList;

.field public final b:I


# direct methods
.method public constructor <init>(ILcom/google/common/collect/ImmutableList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lpl5;->b:I

    iput-object p2, p0, Lpl5;->a:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public static a(IILqw7;)Ls30;
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :sswitch_0
    invoke-static {p2}, Lry9;->a(Lqw7;)Lry9;

    move-result-object p0

    return-object p0

    :sswitch_1
    invoke-static {p2}, Lv30;->c(Lqw7;)Lv30;

    move-result-object p0

    return-object p0

    :sswitch_2
    invoke-static {p2}, Lu30;->b(Lqw7;)Lu30;

    move-result-object p0

    return-object p0

    :sswitch_3
    invoke-static {p1, p2}, Loy9;->d(ILqw7;)Ls30;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x66727473 -> :sswitch_3
        0x68697661 -> :sswitch_2
        0x68727473 -> :sswitch_1
        0x6e727473 -> :sswitch_0
    .end sparse-switch
.end method

.method public static c(ILqw7;)Lpl5;
    .locals 7

    new-instance v0, Lcom/google/common/collect/ImmutableList$a;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$a;-><init>()V

    invoke-virtual {p1}, Lqw7;->f()I

    move-result v1

    const/4 v2, -0x2

    :goto_0
    invoke-virtual {p1}, Lqw7;->a()I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_3

    invoke-virtual {p1}, Lqw7;->p()I

    move-result v3

    invoke-virtual {p1}, Lqw7;->p()I

    move-result v4

    invoke-virtual {p1}, Lqw7;->e()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p1, v5}, Lqw7;->N(I)V

    const v4, 0x5453494c

    if-ne v3, v4, :cond_0

    invoke-virtual {p1}, Lqw7;->p()I

    move-result v3

    invoke-static {v3, p1}, Lpl5;->c(ILqw7;)Lpl5;

    move-result-object v3

    goto :goto_1

    :cond_0
    invoke-static {v3, v2, p1}, Lpl5;->a(IILqw7;)Ls30;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ls30;->getType()I

    move-result v4

    const v6, 0x68727473

    if-ne v4, v6, :cond_1

    move-object v2, v3

    check-cast v2, Lv30;

    invoke-virtual {v2}, Lv30;->b()I

    move-result v2

    :cond_1
    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    :cond_2
    invoke-virtual {p1, v5}, Lqw7;->O(I)V

    invoke-virtual {p1, v1}, Lqw7;->N(I)V

    goto :goto_0

    :cond_3
    new-instance p1, Lpl5;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lpl5;-><init>(ILcom/google/common/collect/ImmutableList;)V

    return-object p1
.end method


# virtual methods
.method public b(Ljava/lang/Class;)Ls30;
    .locals 2

    iget-object p0, p0, Lpl5;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->iterator()Ldgb;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls30;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lpl5;->b:I

    return p0
.end method
