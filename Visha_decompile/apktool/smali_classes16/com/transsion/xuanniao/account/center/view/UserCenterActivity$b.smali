.class public Lcom/transsion/xuanniao/account/center/view/UserCenterActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->J0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity$b;->b:Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity$b;->b:Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    iget-object p2, p1, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->p:Lho7;

    invoke-virtual {p2, p1}, Lho7;->a(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity$b;->b:Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

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

    return-void
.end method
