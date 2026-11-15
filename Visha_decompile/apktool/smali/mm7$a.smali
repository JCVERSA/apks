.class public Lmm7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmm7;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lmm7;


# direct methods
.method public constructor <init>(Lmm7;)V
    .locals 0

    iput-object p1, p0, Lmm7$a;->b:Lmm7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lmm7$a;->b:Lmm7;

    iget-object p1, p1, Lmm7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    iget-object p2, p0, Lmm7$a;->b:Lmm7;

    iget-object p2, p2, Lmm7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-static {p2}, Ltl7;->c(Landroid/content/Context;)Ltl7;

    move-result-object p2

    invoke-virtual {p2}, Ltl7;->i()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lmm7$a;->b:Lmm7;

    iget-object v0, v0, Lmm7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-static {v0}, Ltl7;->c(Landroid/content/Context;)Ltl7;

    move-result-object v0

    invoke-virtual {v0}, Ltl7;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deny"

    invoke-virtual {p1, v1, p2, v0}, Lxj;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lmm7$a;->b:Lmm7;

    iget-object p0, p0, Lmm7;->c:Lmm7$d;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity$c;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity$c;->a:Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    sget p1, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->r:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lgo7$a;->a:Lgo7;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/xuanniao/account/R$bool;->sdk_logout_is_force:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->k:LOppOOO0/OppOp0;

    invoke-virtual {p0, p1}, LOppOOO0/OppOp0;->d(Z)V

    :cond_0
    return-void
.end method
