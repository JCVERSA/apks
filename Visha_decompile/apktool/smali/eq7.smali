.class public Leq7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Ljava/lang/ref/WeakReference;

.field public final synthetic c:Lrq7;


# direct methods
.method public constructor <init>(Lrq7;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Leq7;->c:Lrq7;

    iput-object p2, p0, Leq7;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Leq7;->c:Lrq7;

    iget-object p1, p1, Lrq7;->a:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Leq7;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Leq7;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    const-string v0, "confirm"

    invoke-virtual {p1, v0}, Lxj;->D0(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Leq7;->c:Lrq7;

    iget-object p1, p0, Lrq7;->b:Lrq7$a;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lrq7;->c:Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;->getText()Ljava/lang/String;

    move-result-object p0

    check-cast p1, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c$a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "nickname"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c$a;->a:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->f:LOppOOO0/OppOOp0;

    iput-object p0, p1, LOppOOO0/OppOOp0;->h:Ljava/lang/String;

    const/4 p0, 0x1

    invoke-virtual {p1, v0, v1, p0}, LOppOOO0/OppOOp0;->e(Ljava/util/HashMap;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method
