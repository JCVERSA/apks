.class public interface abstract Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
.end method

.method public abstract createPackageContextAsUser(Landroid/content/Context;Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
.end method

.method public abstract enableAssetsOverlay()V
.end method

.method public abstract getDisplayId(Landroid/content/Context;)I
.end method

.method public abstract getUser(Landroid/content/Context;)Landroid/os/UserHandle;
.end method

.method public abstract registerReceiverAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
.end method

.method public abstract registerReceiverForAllUsers(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
.end method

.method public abstract sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
.end method

.method public abstract startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
.end method

.method public abstract startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
.end method

.method public abstract startServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
.end method
