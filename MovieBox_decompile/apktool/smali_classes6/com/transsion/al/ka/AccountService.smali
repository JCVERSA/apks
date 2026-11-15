.class public Lcom/transsion/al/ka/AccountService;
.super Landroid/app/Service;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/al/ka/AccountService$a;
    }
.end annotation


# instance fields
.field mAccountAuthenticator:Lcom/transsion/al/ka/AccountService$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/al/ka/AccountService;->mAccountAuthenticator:Lcom/transsion/al/ka/AccountService$a;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/accounts/AbstractAccountAuthenticator;->getIBinder()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/al/ka/AccountService$a;

    .line 5
    .line 6
    invoke-direct {v0, p0, p0}, Lcom/transsion/al/ka/AccountService$a;-><init>(Lcom/transsion/al/ka/AccountService;Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/al/ka/AccountService;->mAccountAuthenticator:Lcom/transsion/al/ka/AccountService$a;

    .line 10
    .line 11
    return-void
.end method
