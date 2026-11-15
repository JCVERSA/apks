.class public Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$OppO0OO$OppO00p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OppO00p:I

.field public final synthetic OppO0O0:Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$c;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$c;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$OppO0OO$OppO00p;->OppO0O0:Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$c;

    iput p2, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$OppO0OO$OppO00p;->OppO00p:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$OppO0OO$OppO00p;->OppO0O0:Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$c;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$c;->a:Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSyncState state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$OppO0OO$OppO00p;->OppO00p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.palm.id.log"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$OppO0OO$OppO00p;->OppO00p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$OppO0OO$OppO00p;->OppO0O0:Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$c;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$c;->a:Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/xuanniao/account/R$style;->dialog_soft_input:I

    invoke-direct {v0, p0, v1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_sync_title:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->B(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_sync_note:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_go_logout:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lrl7;

    invoke-direct {v2, p0}, Lrl7;-><init>(Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_not_logout_now:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lgk7;

    invoke-direct {v2, p0}, Lgk7;-><init>(Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$OppO0OO$OppO00p;->OppO0O0:Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$c;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$c;->a:Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;

    invoke-static {p0}, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;->B0(Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;)V

    :goto_0
    return-void
.end method
