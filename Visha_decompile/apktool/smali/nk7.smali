.class public Lnk7;
.super LOppOOp0/OppO0O0;
.source "SourceFile"


# instance fields
.field public final synthetic k:Lll7;


# direct methods
.method public constructor <init>(Lll7;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lnk7;->k:Lll7;

    invoke-direct {p0, p2, p3}, LOppOOp0/OppO0O0;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 2

    check-cast p2, Lcom/transsion/xuanniao/account/model/data/CountryData;

    iget-object p1, p0, Lnk7;->k:Lll7;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnk7;->k:Lll7;

    iput-object p2, p1, Lll7;->b:Lcom/transsion/xuanniao/account/model/data/CountryData;

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lll7;->d()V

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p1, Lqm7;

    iget-object p2, p2, Lcom/transsion/xuanniao/account/model/data/CountryData;->countries:Ljava/util/ArrayList;

    invoke-interface {p1, p2}, Lqm7;->y(Ljava/util/ArrayList;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object p3, p0, Lnk7;->k:Lll7;

    iget-object p3, p3, Lll7;->b:Lcom/transsion/xuanniao/account/model/data/CountryData;

    iget-wide v0, p3, Lcom/transsion/xuanniao/account/model/data/CountryData;->baseTime:J

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    iget-object p0, p0, Lnk7;->k:Lll7;

    iget-object p3, p0, Lll7;->b:Lcom/transsion/xuanniao/account/model/data/CountryData;

    iget-wide v0, p3, Lcom/transsion/xuanniao/account/model/data/CountryData;->validity:J

    cmp-long p1, p1, v0

    if-lez p1, :cond_2

    invoke-virtual {p0}, Lll7;->d()V

    :cond_2
    :goto_0
    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method
