.class public Lel7;
.super LOppOOp0/OppO0O0;
.source "SourceFile"


# instance fields
.field public final synthetic k:Lvn7;


# direct methods
.method public constructor <init>(Lvn7;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lel7;->k:Lvn7;

    invoke-direct {p0, p2, p3}, LOppOOp0/OppO0O0;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    check-cast p2, Lcom/transsion/xuanniao/account/model/data/CountryData;

    iget-object p1, p0, Lel7;->k:Lvn7;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lel7;->k:Lvn7;

    iput-object p2, p0, Lvn7;->f:Lcom/transsion/xuanniao/account/model/data/CountryData;

    if-eqz p2, :cond_1

    iget-object p1, p2, Lcom/transsion/xuanniao/account/model/data/CountryData;->countries:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lqo7;

    invoke-interface {p0}, Lqo7;->W()V

    :cond_1
    :goto_0
    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method
