.class public Lll7$a;
.super LOppOOp0/OppO0O0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lll7;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic k:Lll7;


# direct methods
.method public constructor <init>(Lll7;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lll7$a;->k:Lll7;

    invoke-direct {p0, p2, p3}, LOppOOp0/OppO0O0;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 2

    check-cast p2, Lcom/transsion/xuanniao/account/model/data/CountryData;

    iget-object p1, p0, Lll7$a;->k:Lll7;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p2, Lcom/transsion/xuanniao/account/model/data/CountryData;->countries:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lll7$a;->k:Lll7;

    iput-object p2, p1, Lll7;->b:Lcom/transsion/xuanniao/account/model/data/CountryData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/transsion/xuanniao/account/model/data/CountryData;->baseTime:J

    iget-object p1, p0, Lll7$a;->k:Lll7;

    iget-object p2, p1, Lll7;->c:Luk7;

    invoke-virtual {p1}, Lll7;->b()Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;

    move-result-object p1

    iget-object p3, p0, Lll7$a;->k:Lll7;

    iget-object p3, p3, Lll7;->b:Lcom/transsion/xuanniao/account/model/data/CountryData;

    check-cast p2, Lon7;

    invoke-virtual {p2, p1, p3}, Lon7;->b(Landroid/content/Context;Lcom/transsion/xuanniao/account/model/data/CountryData;)V

    iget-object p0, p0, Lll7$a;->k:Lll7;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p1, Lqm7;

    iget-object p0, p0, Lll7;->b:Lcom/transsion/xuanniao/account/model/data/CountryData;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/CountryData;->countries:Ljava/util/ArrayList;

    invoke-interface {p1, p0}, Lqm7;->y(Ljava/util/ArrayList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method
