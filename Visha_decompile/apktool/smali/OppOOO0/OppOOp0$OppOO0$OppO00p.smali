.class public LOppOOO0/OppOOp0$OppOO0$OppO00p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOppOOO0/OppOOp0$OppOO0;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OppO00p:LOppOOO0/OppOOp0$OppOO0;


# direct methods
.method public constructor <init>(LOppOOO0/OppOOp0$OppOO0;)V
    .locals 0

    iput-object p1, p0, LOppOOO0/OppOOp0$OppOO0$OppO00p;->OppO00p:LOppOOO0/OppOOp0$OppOO0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LOppOOO0/OppOOp0$OppOO0$OppO00p;->OppO00p:LOppOOO0/OppOOp0$OppOO0;

    iget-object v0, v0, LOppOOO0/OppOOp0$OppOO0;->b:LOppOOO0/OppOOp0;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LOppOOO0/OppOOp0$OppOO0$OppO00p;->OppO00p:LOppOOO0/OppOOp0$OppOO0;

    iget-object v0, v0, LOppOOO0/OppOOp0$OppOO0;->b:LOppOOO0/OppOOp0;

    invoke-virtual {v0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v0

    iget-object v1, p0, LOppOOO0/OppOOp0$OppOO0$OppO00p;->OppO00p:LOppOOO0/OppOOp0$OppOO0;

    iget-object v1, v1, LOppOOO0/OppOOp0$OppOO0;->b:LOppOOO0/OppOOp0;

    invoke-virtual {v1}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v1

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_upload_img_failed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    iget-object v0, p0, LOppOOO0/OppOOp0$OppOO0$OppO00p;->OppO00p:LOppOOO0/OppOOp0$OppOO0;

    iget-object v0, v0, LOppOOO0/OppOOp0$OppOO0;->b:LOppOOO0/OppOOp0;

    invoke-virtual {v0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    iget-object p0, p0, LOppOOO0/OppOOp0$OppOO0$OppO00p;->OppO00p:LOppOOO0/OppOOp0$OppOO0;

    iget-object p0, p0, LOppOOO0/OppOOp0$OppOO0;->b:LOppOOO0/OppOOp0;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Ljq7;

    invoke-interface {p0}, Ljq7;->u()V

    :cond_0
    return-void
.end method
