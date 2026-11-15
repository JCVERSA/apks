.class Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->onActivityStopped(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback$2;->this$0:Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback$2;->this$0:Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->a(Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;Z)V

    const-string p0, ""

    invoke-static {p0}, Lvv7;->c(Ljava/lang/String;)V

    return-void
.end method
