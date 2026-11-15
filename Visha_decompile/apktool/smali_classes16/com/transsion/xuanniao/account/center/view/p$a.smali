.class public Lcom/transsion/xuanniao/account/center/view/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/xuanniao/account/center/view/p;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/center/view/p;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/center/view/p;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/p$a;->b:Lcom/transsion/xuanniao/account/center/view/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/p$a;->b:Lcom/transsion/xuanniao/account/center/view/p;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/center/view/p;->a:Landroid/app/Activity;

    invoke-static {p1}, Ljr7;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/p$a;->b:Lcom/transsion/xuanniao/account/center/view/p;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/p;->a:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
