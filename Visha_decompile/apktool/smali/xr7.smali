.class public Lxr7;
.super LOppOOp0/OppO0O0;
.source "SourceFile"


# instance fields
.field public final synthetic k:LOppOOO0/OppOOp0;


# direct methods
.method public constructor <init>(LOppOOO0/OppOOp0;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lxr7;->k:LOppOOO0/OppOOp0;

    invoke-direct {p0, p2, p3}, LOppOOp0/OppO0O0;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    check-cast p2, Lcom/transsion/xuanniao/account/model/data/CountryData;

    iget-object p1, p0, Lxr7;->k:LOppOOO0/OppOOp0;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lxr7;->k:LOppOOO0/OppOOp0;

    iput-object p2, p0, LOppOOO0/OppOOp0;->k:Lcom/transsion/xuanniao/account/model/data/CountryData;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Ljq7;

    invoke-interface {p0}, Ljq7;->p0()V

    :goto_0
    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method
