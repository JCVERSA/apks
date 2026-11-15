.class public Lcom/cloud/tmc/integration/invoke/DefaultExtensionInvokerFactory;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/invoke/ExtensionInvokerFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public createPermissionExtensionInvoker(Lcom/cloud/tmc/kernel/security/AccessController;Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker;-><init>(Lcom/cloud/tmc/kernel/security/AccessController;Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public createScheduleExtensionInvoker(Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/invoke/ScheduleExtensionInvoker;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/cloud/tmc/integration/invoke/ScheduleExtensionInvoker;-><init>(Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
