.class public final Lcom/cloud/tmc/miniapp/dialog/o00oO0o$OooO00o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/dialog/o00oO0o;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/dialog/o00oO0o;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/dialog/o00oO0o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/o00oO0o;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDismiss(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/o00oO0o;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO00o:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO0oo:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "MiniDevUserAgreementDialog.onDismiss->"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/o00oO0o;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput-object v0, p1, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO0oo:Ljava/lang/String;

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-lez p1, :cond_0

    .line 39
    .line 40
    sget-object p1, Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge;->Companion:Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge$OooO00o;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/cloud/tmc/miniapp/bridge/PermissionScopeBridge;->access$getDauDialogMap$cp()Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/o00oO0o;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/dialog/o00oO0o;->OooO0oo:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    :cond_0
    return-void
.end method
