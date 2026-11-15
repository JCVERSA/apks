.class public Lwl7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/transsion/xuanniao/account/help/view/b;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/help/view/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lwl7;->c:Lcom/transsion/xuanniao/account/help/view/b;

    iput-object p2, p0, Lwl7;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object p1, p0, Lwl7;->c:Lcom/transsion/xuanniao/account/help/view/b;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/help/view/b;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    iget-object v0, p0, Lwl7;->b:Ljava/lang/String;

    const-string v1, "url"

    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    iget-object p1, p0, Lwl7;->c:Lcom/transsion/xuanniao/account/help/view/b;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/help/view/b;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lwl7;->c:Lcom/transsion/xuanniao/account/help/view/b;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/help/view/b;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_link_copy:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    const/16 p1, 0x11

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v0
.end method
