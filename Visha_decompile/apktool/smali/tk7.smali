.class public Ltk7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/transsion/xuanniao/account/help/view/b;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/help/view/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltk7;->c:Lcom/transsion/xuanniao/account/help/view/b;

    iput-object p2, p0, Ltk7;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    :try_start_0
    iget-object p1, p0, Ltk7;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p0, p0, Ltk7;->c:Lcom/transsion/xuanniao/account/help/view/b;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/help/view/b;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
