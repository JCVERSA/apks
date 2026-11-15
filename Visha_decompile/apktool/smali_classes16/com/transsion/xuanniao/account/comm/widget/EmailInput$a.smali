.class public Lcom/transsion/xuanniao/account/comm/widget/EmailInput$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO0Op()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/comm/widget/EmailInput;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput$a;->b:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput$a;->b:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO0p0:Lcom/transsion/xuanniao/account/comm/widget/EmailInput$b;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/transsion/xuanniao/account/comm/widget/EmailInput$b;->q(Z)V

    :cond_0
    return-void
.end method
