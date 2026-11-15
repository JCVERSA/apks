.class public Lqr7$b;
.super LOppOOp0/OppO0O0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqr7;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:Lqr7;


# direct methods
.method public constructor <init>(Lqr7;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lqr7$b;->l:Lqr7;

    iput-object p4, p0, Lqr7$b;->k:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, LOppOOp0/OppO0O0;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    check-cast p2, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;

    iget-object p1, p0, Lqr7$b;->l:Lqr7;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lqr7$b;->l:Lqr7;

    invoke-virtual {p1}, Lqr7;->d()Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lqr7$b;->l:Lqr7;

    iget-object p2, p2, Lqr7;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_2

    iget-object p2, p0, Lqr7$b;->l:Lqr7;

    iget-object p2, p2, Lqr7;->c:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;

    iget-object p2, p2, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->id:Ljava/lang/String;

    iget-object p3, p0, Lqr7$b;->k:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lqr7$b;->l:Lqr7;

    iget-object p2, p2, Lqr7;->c:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p0, p0, Lqr7$b;->l:Lqr7;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p1, Lvp7;

    iget-object p0, p0, Lqr7;->c:Ljava/util/ArrayList;

    invoke-interface {p1, p0}, Lvp7;->y(Ljava/util/ArrayList;)V

    :goto_2
    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lqr7$b;->l:Lqr7;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lqr7$b;->l:Lqr7;

    iget-object p0, p0, Lqr7$b;->k:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lqr7;->b(Ljava/lang/String;)V

    return-void
.end method
