.class public Lcom/transsion/xuanniao/account/center/view/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/transsion/xuanniao/account/center/view/h;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/center/view/h;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/g;->c:Lcom/transsion/xuanniao/account/center/view/h;

    iput p2, p0, Lcom/transsion/xuanniao/account/center/view/g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/g;->c:Lcom/transsion/xuanniao/account/center/view/h;

    add-int/lit8 p2, p2, 0x1

    rem-int/lit8 p2, p2, 0x3

    iput p2, p1, Lcom/transsion/xuanniao/account/center/view/h;->d:I

    iget-object p1, p1, Lcom/transsion/xuanniao/account/center/view/h;->b:Landroid/content/Context;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    const-string p2, "confirm"

    invoke-virtual {p1, p2}, Lxj;->I0(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/g;->c:Lcom/transsion/xuanniao/account/center/view/h;

    iget p2, p1, Lcom/transsion/xuanniao/account/center/view/h;->d:I

    iget p0, p0, Lcom/transsion/xuanniao/account/center/view/g;->b:I

    if-eq p2, p0, :cond_0

    iget-object p0, p1, Lcom/transsion/xuanniao/account/center/view/h;->c:Lcom/transsion/xuanniao/account/center/view/h$a;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c$c;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c$c;->a:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->f:LOppOOO0/OppOOp0;

    invoke-virtual {p0, p2}, LOppOOO0/OppOOp0;->b(I)V

    :cond_0
    return-void
.end method
