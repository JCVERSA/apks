.class public Lcom/transsion/xuanniao/account/center/view/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Ljava/lang/ref/WeakReference;

.field public final synthetic c:Lcom/transsion/xuanniao/account/center/view/d;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/center/view/d;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/c;->c:Lcom/transsion/xuanniao/account/center/view/d;

    iput-object p2, p0, Lcom/transsion/xuanniao/account/center/view/c;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    const-string p2, "confirm"

    invoke-virtual {p1, p2}, Lxj;->v0(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/c;->c:Lcom/transsion/xuanniao/account/center/view/d;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/d;->c:Lcom/transsion/xuanniao/account/center/view/d$a;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/d;->b:Ljava/lang/String;

    check-cast p1, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c$d;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c$d;->a:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->f:LOppOOO0/OppOOp0;

    invoke-virtual {p1, p0}, LOppOOO0/OppOOp0;->g(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
