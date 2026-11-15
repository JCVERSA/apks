.class public Lfr7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:Lcom/transsion/xuanniao/account/login/view/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lfr7;->d:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    iput-object p2, p0, Lfr7;->b:Ljava/lang/String;

    iput p3, p0, Lfr7;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lfr7;->d:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    iget-object p2, p0, Lfr7;->b:Ljava/lang/String;

    const-string v0, "open"

    invoke-virtual {p1, v0, p2}, Lxj;->h0(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lfr7;->d:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    iget p0, p0, Lfr7;->c:I

    invoke-virtual {p1, p0}, Ldo7;->c(I)V

    return-void
.end method
