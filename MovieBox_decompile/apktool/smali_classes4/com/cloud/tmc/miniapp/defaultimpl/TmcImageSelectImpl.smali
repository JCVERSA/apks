.class public final Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/proxy/ImageSelectProxy;


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
.method public imagePreview(Landroid/content/Context;Ljava/util/ArrayList;ZILcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;ZI",
            "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "urls"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "STORAGE_READ"

    .line 12
    .line 13
    filled-new-array {v0}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->permissionGroup([Ljava/lang/String;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v7, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO00o;

    .line 22
    .line 23
    move-object v1, v7

    .line 24
    move-object v2, p1

    .line 25
    move-object v3, p2

    .line 26
    move v4, p3

    .line 27
    move v5, p4

    .line 28
    move-object v6, p5

    .line 29
    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO00o;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ZILcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v7}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->callback(Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->request()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public imageSelect(Landroid/content/Context;ILcom/cloud/tmc/integration/callback/OnPhotoSelectListener;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "listener"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "MEDIA_IMAGES"

    .line 12
    .line 13
    filled-new-array {v0}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->permissionGroup([Ljava/lang/String;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0;

    .line 22
    .line 23
    invoke-direct {v1, p3, p1, p2}, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0;-><init>(Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;Landroid/content/Context;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->callback(Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->request()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final isDestroy(Landroid/content/Context;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroid/app/Activity;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    check-cast p1, Landroid/app/Activity;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v0, v2

    .line 26
    :cond_2
    :goto_0
    return v0

    .line 27
    :cond_3
    instance-of v1, p1, Landroidx/fragment/app/FragmentActivity;

    .line 28
    .line 29
    if-eqz v1, :cond_6

    .line 30
    .line 31
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_5

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_4

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_4
    move v0, v2

    .line 47
    :cond_5
    :goto_1
    return v0

    .line 48
    :cond_6
    return v2
.end method
