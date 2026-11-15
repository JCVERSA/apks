.class public Lvr7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/center/view/j;Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;)V
    .locals 0

    iput-object p2, p0, Lvr7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lvr7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p0

    const-string p1, "cancel"

    invoke-virtual {p0, p1}, Lxj;->t0(Ljava/lang/String;)V

    return-void
.end method
