.class public Lcom/transsion/xuanniao/account/comm/widget/AccountInput$OppO00p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0OO()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OppO00p:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/comm/widget/AccountInput;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput$OppO00p;->OppO00p:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput$OppO00p;->OppO00p:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    iget-boolean v1, v0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppOO0p:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput$OppO00p;->OppO00p:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    iget-object v1, v0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0pp:Lln7;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lln7;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput$OppO00p;->OppO00p:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0pO:Landroid/widget/PopupWindow;

    sget v1, Lcom/transsion/xuanniao/account/R$id;->line:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v1}, Lc39;->a(F)I

    move-result v1

    const v2, 0x800003

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3, v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
