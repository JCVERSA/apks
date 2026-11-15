.class public Lcom/transsion/audio/activities/LockScreenActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gw/swipeback/SwipeBackLayout$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/activities/LockScreenActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/audio/activities/LockScreenActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/activities/LockScreenActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/activities/LockScreenActivity$a;->a:Lcom/transsion/audio/activities/LockScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;FF)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/activities/LockScreenActivity$a;->a:Lcom/transsion/audio/activities/LockScreenActivity;

    iget-object p0, p0, Lcom/transsion/audio/activities/LockScreenActivity;->g0:Lcom/transsion/widgets/CustomSwipeBackLayout;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public b(Landroid/view/View;Z)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onViewSwipeFinished "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LockScreenActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p1

    const-string p2, "keyguard"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iget-object p2, p0, Lcom/transsion/audio/activities/LockScreenActivity$a;->a:Lcom/transsion/audio/activities/LockScreenActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    iget-object p0, p0, Lcom/transsion/audio/activities/LockScreenActivity$a;->a:Lcom/transsion/audio/activities/LockScreenActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
