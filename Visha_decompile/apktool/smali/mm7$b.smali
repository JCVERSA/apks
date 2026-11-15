.class public Lmm7$b;
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

    iput-object p1, p0, Lmm7$b;->b:Lmm7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lmm7$b;->b:Lmm7;

    iget-object p1, p1, Lmm7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    iget-object p2, p0, Lmm7$b;->b:Lmm7;

    iget-object p2, p2, Lmm7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-static {p2}, Ltl7;->c(Landroid/content/Context;)Ltl7;

    move-result-object p2

    invoke-virtual {p2}, Ltl7;->i()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lmm7$b;->b:Lmm7;

    iget-object v0, v0, Lmm7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-static {v0}, Ltl7;->c(Landroid/content/Context;)Ltl7;

    move-result-object v0

    invoke-virtual {v0}, Ltl7;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "accept"

    invoke-virtual {p1, v1, p2, v0}, Lxj;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lmm7$b;->b:Lmm7;

    iget-object p0, p0, Lmm7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-static {p0}, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;->privacyAgree(Landroid/content/Context;)V

    return-void
.end method
