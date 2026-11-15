.class public Lcom/transsion/al/ka/AccountSyncService;
.super Landroid/app/Service;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/al/ka/AccountSyncService$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountSyncService"


# instance fields
.field private mThreadSyncAdapter:Lcom/transsion/al/ka/AccountSyncService$a;


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
    iget-object p1, p0, Lcom/transsion/al/ka/AccountSyncService;->mThreadSyncAdapter:Lcom/transsion/al/ka/AccountSyncService$a;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/AbstractThreadedSyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/al/ka/AccountSyncService$a;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v0, p0, v1, v2}, Lcom/transsion/al/ka/AccountSyncService$a;-><init>(Lcom/transsion/al/ka/AccountSyncService;Landroid/content/Context;Z)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/transsion/al/ka/AccountSyncService;->mThreadSyncAdapter:Lcom/transsion/al/ka/AccountSyncService$a;

    .line 15
    .line 16
    return-void
.end method
