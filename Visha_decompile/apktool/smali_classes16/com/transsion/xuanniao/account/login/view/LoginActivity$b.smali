.class public Lcom/transsion/xuanniao/account/login/view/LoginActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ler7$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/xuanniao/account/login/view/LoginActivity;->C0(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$b;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$b;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    const-class v1, Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$b;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
