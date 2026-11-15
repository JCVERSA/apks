.class public final Lkvh;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Llvh;


# direct methods
.method public constructor <init>(Llvh;)V
    .locals 0

    iput-object p1, p0, Lkvh;->a:Llvh;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lkvh;->a:Llvh;

    invoke-static {p0}, Llvh;->f(Llvh;)Z

    move-result p1

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Llvh;->d(ZZ)V

    invoke-static {p0, p2}, Llvh;->b(Llvh;Z)V

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lkvh;->a:Llvh;

    invoke-static {p0}, Llvh;->f(Llvh;)Z

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Llvh;->d(ZZ)V

    invoke-static {p0, p2}, Llvh;->b(Llvh;Z)V

    :cond_1
    return-void
.end method
