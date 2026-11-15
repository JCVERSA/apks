.class public Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvz6;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity$a;->a:Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity$a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity$a;->c()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity$a;->d()V

    return-void
.end method

.method private synthetic d()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity$a;->a:Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;

    invoke-static {v0}, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->t0(Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity$a;->a:Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->u0(Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final synthetic c()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity$a;->a:Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;

    invoke-static {v0}, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->t0(Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity$a;->a:Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->u0(Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;I)V

    :cond_0
    return-void
.end method

.method public onConnect(I)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity$a;->a:Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;

    new-instance v0, Lqfc;

    invoke-direct {v0, p0}, Lqfc;-><init>(Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity$a;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDisconnect()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity$a;->a:Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;

    new-instance v1, Lpfc;

    invoke-direct {v1, p0}, Lpfc;-><init>(Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
