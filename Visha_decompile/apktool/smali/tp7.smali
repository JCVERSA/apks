.class public Ltp7;
.super LOppOOp0/OppO0O0;
.source "SourceFile"


# instance fields
.field public final synthetic k:Landroid/content/Context;

.field public final synthetic l:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Ltp7;->l:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;

    iput-object p5, p0, Ltp7;->k:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p4}, LOppOOp0/OppO0O0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    check-cast p2, Lcom/transsion/xuanniao/account/model/data/AccountRes;

    if-eqz p2, :cond_0

    sget-object p1, Lao7$a;->a:Lao7;

    iget-object p3, p0, Ltp7;->k:Landroid/content/Context;

    invoke-virtual {p1, p3, p2}, Lao7;->c(Landroid/content/Context;Lcom/transsion/xuanniao/account/model/data/AccountRes;)V

    iget-object p1, p0, Ltp7;->l:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->e:Ldk7;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Ltp7;->l:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;

    invoke-virtual {p0, p2}, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->D0(Lcom/transsion/xuanniao/account/model/data/AccountRes;)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method
