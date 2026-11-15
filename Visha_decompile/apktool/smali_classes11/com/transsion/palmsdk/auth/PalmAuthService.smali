.class public Lcom/transsion/palmsdk/auth/PalmAuthService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/palmsdk/auth/PalmAuthService$OooO0OO;,
        Lcom/transsion/palmsdk/auth/PalmAuthService$OooO0O0;
    }
.end annotation


# instance fields
.field public b:Landroid/content/Context;

.field public final c:Lcom/transsion/palmsdk/auth/OooO0O0$OooO00o;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/transsion/palmsdk/auth/PalmAuthService$OooO00o;

    invoke-direct {v0, p0}, Lcom/transsion/palmsdk/auth/PalmAuthService$OooO00o;-><init>(Lcom/transsion/palmsdk/auth/PalmAuthService;)V

    iput-object v0, p0, Lcom/transsion/palmsdk/auth/PalmAuthService;->c:Lcom/transsion/palmsdk/auth/OooO0O0$OooO00o;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/auth/PalmAuthService;->c:Lcom/transsion/palmsdk/auth/OooO0O0$OooO00o;

    return-object p0
.end method

.method public onCreate()V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/palmsdk/auth/PalmAuthService;->b:Landroid/content/Context;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method
