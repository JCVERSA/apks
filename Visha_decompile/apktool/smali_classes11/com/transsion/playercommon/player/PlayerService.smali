.class public Lcom/transsion/playercommon/player/PlayerService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/player/b$a;
.implements Lcom/transsion/playercommon/receiver/HeadsetsControllerReceiver$a;
.implements Lsq3$a;
.implements Lcom/transsion/playercommon/player/a$a;
.implements Lil6$c;


# static fields
.field public static c:I

.field public static d:I

.field public static e:I


# instance fields
.field public b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public i(ILandroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$dimen;->notification_image_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Lcom/transsion/playercommon/player/PlayerService;->c:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$dimen;->notification_cover_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Lcom/transsion/playercommon/player/PlayerService;->d:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$dimen;->notification_cover_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Lcom/transsion/playercommon/player/PlayerService;->e:I

    invoke-static {}, Lcom/transsion/playercommon/player/a;->a()Lcom/transsion/playercommon/player/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/player/a;->c(Lcom/transsion/playercommon/player/a$a;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-static {}, Lcom/transsion/playercommon/player/a;->a()Lcom/transsion/playercommon/player/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/player/a;->f(Lcom/transsion/playercommon/player/a$a;)V

    return-void
.end method

.method public onPlayerStateUpdate(I)V
    .locals 0

    return-void
.end method

.method public t(Z)V
    .locals 0

    return-void
.end method
