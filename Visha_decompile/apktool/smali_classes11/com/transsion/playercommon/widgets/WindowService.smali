.class public Lcom/transsion/playercommon/widgets/WindowService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/widgets/WindowService$a;
    }
.end annotation


# instance fields
.field public b:Lcom/transsion/playercommon/widgets/WindowService$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/transsion/playercommon/widgets/WindowService$a;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/widgets/WindowService$a;-><init>(Lcom/transsion/playercommon/widgets/WindowService;)V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/WindowService;->b:Lcom/transsion/playercommon/widgets/WindowService$a;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/WindowService;->b:Lcom/transsion/playercommon/widgets/WindowService$a;

    return-object p0
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0

    return p0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
