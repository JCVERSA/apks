.class public Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvz6;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement$a;->a:Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement$a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement$a;->c(I)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement$a;->d()V

    return-void
.end method

.method private synthetic c(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement$a;->a:Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;

    invoke-static {v0}, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->R(Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement$a;->a:Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->S(Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;I)V

    :cond_0
    return-void
.end method

.method private synthetic d()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement$a;->a:Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;

    invoke-static {v0}, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->R(Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement$a;->a:Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->S(Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onConnect(I)V
    .locals 1

    new-instance v0, Lgna;

    invoke-direct {v0, p0, p1}, Lgna;-><init>(Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement$a;I)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDisconnect()V
    .locals 1

    new-instance v0, Lhna;

    invoke-direct {v0, p0}, Lhna;-><init>(Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement$a;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    return-void
.end method
