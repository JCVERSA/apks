.class public Lol7$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lol7;->c(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lol7;


# direct methods
.method public constructor <init>(Lol7;)V
    .locals 0

    iput-object p1, p0, Lol7$b;->a:Lol7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lol7$b;->a:Lol7;

    iget-object p1, p1, Lol7;->d:Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lvl7;->c(Landroid/app/Activity;Z)V

    iget-object p0, p0, Lol7$b;->a:Lol7;

    iget-object p0, p0, Lol7;->c:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->getEdit()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
