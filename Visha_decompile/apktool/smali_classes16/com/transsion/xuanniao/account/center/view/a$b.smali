.class public Lcom/transsion/xuanniao/account/center/view/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/xuanniao/account/center/view/a;->a(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/xuanniao/account/center/view/a;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/center/view/a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/a$b;->a:Lcom/transsion/xuanniao/account/center/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/a$b;->a:Lcom/transsion/xuanniao/account/center/view/a;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/a;->b:Lcom/transsion/xuanniao/account/comm/widget/AccountIdInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/AccountIdInput;->getEdit()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
