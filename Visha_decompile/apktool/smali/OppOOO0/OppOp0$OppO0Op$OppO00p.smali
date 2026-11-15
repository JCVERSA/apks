.class public LOppOOO0/OppOp0$OppO0Op$OppO00p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOppOOO0/OppOp0$OppO0Op;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OppO00p:LOppOOO0/OppOp0$OppO0Op;


# direct methods
.method public constructor <init>(LOppOOO0/OppOp0$OppO0Op;)V
    .locals 0

    iput-object p1, p0, LOppOOO0/OppOp0$OppO0Op$OppO00p;->OppO00p:LOppOOO0/OppOp0$OppO0Op;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LOppOOO0/OppOp0$OppO0Op$OppO00p;->OppO00p:LOppOOO0/OppOp0$OppO0Op;

    iget-object v0, v0, LOppOOO0/OppOp0$OppO0Op;->b:LOppOOO0/OppOp0;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LOppOOO0/OppOp0$OppO0Op$OppO00p;->OppO00p:LOppOOO0/OppOp0$OppO0Op;

    iget-object v0, v0, LOppOOO0/OppOp0$OppO0Op;->b:LOppOOO0/OppOp0;

    invoke-virtual {v0}, LOppOOO0/OppOp0;->e()Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    move-result-object v0

    iget-object v1, p0, LOppOOO0/OppOp0$OppO0Op$OppO00p;->OppO00p:LOppOOO0/OppOp0$OppO0Op;

    iget-object v1, v1, LOppOOO0/OppOp0$OppO0Op;->b:LOppOOO0/OppOp0;

    invoke-virtual {v1}, LOppOOO0/OppOp0;->e()Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    move-result-object v1

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_upload_img_failed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    iget-object v0, p0, LOppOOO0/OppOp0$OppO0Op$OppO00p;->OppO00p:LOppOOO0/OppOp0$OppO0Op;

    iget-object v0, v0, LOppOOO0/OppOp0$OppO0Op;->b:LOppOOO0/OppOp0;

    invoke-virtual {v0}, LOppOOO0/OppOp0;->e()Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    iget-object p0, p0, LOppOOO0/OppOp0$OppO0Op$OppO00p;->OppO00p:LOppOOO0/OppOp0$OppO0Op;

    iget-object p0, p0, LOppOOO0/OppOp0$OppO0Op;->b:LOppOOO0/OppOp0;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lqq7;

    invoke-interface {p0}, Lqq7;->u()V

    :cond_0
    return-void
.end method
