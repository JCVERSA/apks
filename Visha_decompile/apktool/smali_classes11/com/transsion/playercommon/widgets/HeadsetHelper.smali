.class public Lcom/transsion/playercommon/widgets/HeadsetHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/widgets/HeadsetHelper$Status;
    }
.end annotation


# instance fields
.field public final b:Landroid/content/BroadcastReceiver;

.field public c:Lcom/transsion/playercommon/widgets/HeadsetHelper$Status;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/HeadsetHelper$Status;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/playercommon/widgets/HeadsetHelper$a;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/widgets/HeadsetHelper$a;-><init>(Lcom/transsion/playercommon/widgets/HeadsetHelper;)V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/HeadsetHelper;->b:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/HeadsetHelper;->c:Lcom/transsion/playercommon/widgets/HeadsetHelper$Status;

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/playercommon/widgets/HeadsetHelper;)Lcom/transsion/playercommon/widgets/HeadsetHelper$Status;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/HeadsetHelper;->c:Lcom/transsion/playercommon/widgets/HeadsetHelper$Status;

    return-object p0
.end method


# virtual methods
.method public final b(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/HeadsetHelper;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final c(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/HeadsetHelper;->c:Lcom/transsion/playercommon/widgets/HeadsetHelper$Status;

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/HeadsetHelper;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/widgets/HeadsetHelper$b;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of p2, p1, Landroid/content/Context;

    if-eqz p2, :cond_2

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/HeadsetHelper;->c(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    instance-of p2, p1, Landroid/content/Context;

    if-eqz p2, :cond_2

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/HeadsetHelper;->b(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method
