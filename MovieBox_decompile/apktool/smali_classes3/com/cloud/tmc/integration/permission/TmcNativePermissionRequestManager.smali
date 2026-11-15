.class public Lcom/cloud/tmc/integration/permission/TmcNativePermissionRequestManager;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/permission/TmcNativePermissionRequestProxy;


# instance fields
.field private callbackArray:Landroidx/collection/y0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/y0;"
        }
    .end annotation
.end field

.field private lastRequestCode:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/collection/y0;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/collection/y0;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/cloud/tmc/integration/permission/TmcNativePermissionRequestManager;->callbackArray:Landroidx/collection/y0;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/cloud/tmc/integration/permission/TmcNativePermissionRequestManager;->lastRequestCode:Ljava/lang/Integer;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public addPermRequestCallback(ILcom/cloud/tmc/integration/permission/IPermissionRequestCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/permission/TmcNativePermissionRequestManager;->callbackArray:Landroidx/collection/y0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/collection/y0;->l(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public getRequestCode()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/permission/TmcNativePermissionRequestManager;->lastRequestCode:Ljava/lang/Integer;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    add-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/cloud/tmc/integration/permission/TmcNativePermissionRequestManager;->lastRequestCode:Ljava/lang/Integer;

    .line 15
    .line 16
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw v0
.end method

.method public onRequestPermissionResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/permission/TmcNativePermissionRequestManager;->callbackArray:Landroidx/collection/y0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/collection/y0;->g(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/cloud/tmc/integration/permission/IPermissionRequestCallback;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0, p1, p2, p3}, Lcom/cloud/tmc/integration/permission/IPermissionRequestCallback;->onRequestPermissionResult(I[Ljava/lang/String;[I)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/cloud/tmc/integration/permission/TmcNativePermissionRequestManager;->callbackArray:Landroidx/collection/y0;

    .line 17
    .line 18
    invoke-virtual {p2, p1}, Landroidx/collection/y0;->m(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
