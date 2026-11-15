.class public Lnl7$a;
.super LOppOOp0/OppO0O0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl7;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:Lnl7;


# direct methods
.method public constructor <init>(Lnl7;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnl7$a;->l:Lnl7;

    iput-object p5, p0, Lnl7$a;->k:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4}, LOppOOp0/OppO0O0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    check-cast p2, Lcom/transsion/xuanniao/account/model/data/PolicyRes;

    iget-object p1, p0, Lnl7$a;->l:Lnl7;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnl7$a;->l:Lnl7;

    invoke-virtual {p1}, Lnl7;->c()Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    iget-object p0, p0, Lnl7$a;->l:Lnl7;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lsk7;

    invoke-interface {p0, p2, p3}, Lsk7;->E(Lcom/transsion/xuanniao/account/model/data/PolicyRes;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lnl7$a;->l:Lnl7;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnl7$a;->l:Lnl7;

    iget-object p0, p0, Lnl7$a;->k:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lnl7;->b(Ljava/lang/String;)V

    return-void
.end method
