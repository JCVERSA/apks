.class public final Lcom/transsion/playercommon/utils/FileToXHideUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/utils/FileToXHideUtils$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/transsion/playercommon/utils/FileToXHideUtils$a;

.field public static volatile h:Lcom/transsion/playercommon/utils/FileToXHideUtils;


# instance fields
.field public a:Lcom/xui/xhide/IXHideWriteAidlInterface;

.field public b:Z

.field public c:[I

.field public d:[I

.field public final e:Lcom/xui/xhide/IRemoteCallBackListener$Stub;

.field public final f:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/playercommon/utils/FileToXHideUtils$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/playercommon/utils/FileToXHideUtils$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/playercommon/utils/FileToXHideUtils;->g:Lcom/transsion/playercommon/utils/FileToXHideUtils$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/transsion/playercommon/utils/FileToXHideUtils$mRemoteCallBackListener$1;

    invoke-direct {v0}, Lcom/transsion/playercommon/utils/FileToXHideUtils$mRemoteCallBackListener$1;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/utils/FileToXHideUtils;->e:Lcom/xui/xhide/IRemoteCallBackListener$Stub;

    .line 4
    new-instance v0, Lcom/transsion/playercommon/utils/FileToXHideUtils$b;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/utils/FileToXHideUtils$b;-><init>(Lcom/transsion/playercommon/utils/FileToXHideUtils;)V

    iput-object v0, p0, Lcom/transsion/playercommon/utils/FileToXHideUtils;->f:Landroid/content/ServiceConnection;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/playercommon/utils/FileToXHideUtils;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lcom/transsion/playercommon/utils/FileToXHideUtils;
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/utils/FileToXHideUtils;->h:Lcom/transsion/playercommon/utils/FileToXHideUtils;

    return-object v0
.end method

.method public static final synthetic b(Lcom/transsion/playercommon/utils/FileToXHideUtils;)[I
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/FileToXHideUtils;->c:[I

    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/playercommon/utils/FileToXHideUtils;)Lcom/xui/xhide/IRemoteCallBackListener$Stub;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/FileToXHideUtils;->e:Lcom/xui/xhide/IRemoteCallBackListener$Stub;

    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/playercommon/utils/FileToXHideUtils;)Lcom/xui/xhide/IXHideWriteAidlInterface;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/FileToXHideUtils;->a:Lcom/xui/xhide/IXHideWriteAidlInterface;

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/playercommon/utils/FileToXHideUtils;)Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/FileToXHideUtils;->f:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/playercommon/utils/FileToXHideUtils;)[I
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/FileToXHideUtils;->d:[I

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/playercommon/utils/FileToXHideUtils;)V
    .locals 0

    sput-object p0, Lcom/transsion/playercommon/utils/FileToXHideUtils;->h:Lcom/transsion/playercommon/utils/FileToXHideUtils;

    return-void
.end method

.method public static final synthetic h(Lcom/transsion/playercommon/utils/FileToXHideUtils;Lcom/xui/xhide/IXHideWriteAidlInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/utils/FileToXHideUtils;->a:Lcom/xui/xhide/IXHideWriteAidlInterface;

    return-void
.end method


# virtual methods
.method public final i()Z
    .locals 6

    const-string v0, "FileToXHideUtils"

    new-instance v1, Landroid/content/Intent;

    const-string v2, "transsion.xhide.action.XHIDE_WRITE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.xui.xhide"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/playercommon/utils/FileToXHideUtils;->f:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v5, p0, Lcom/transsion/playercommon/utils/FileToXHideUtils;->b:Z

    const-string p0, "Service bound successfully"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    return v1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindService error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecurityException during service binding: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final j([I[I)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "FileToXHideUtils"

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_0

    goto :goto_2

    :cond_0
    iput-object p1, p0, Lcom/transsion/playercommon/utils/FileToXHideUtils;->c:[I

    iput-object p2, p0, Lcom/transsion/playercommon/utils/FileToXHideUtils;->d:[I

    iget-boolean v2, p0, Lcom/transsion/playercommon/utils/FileToXHideUtils;->b:Z

    if-nez v2, :cond_1

    const-string v2, "Service not bound, attempting to bind"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/FileToXHideUtils;->i()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p0, "Failed to bind service"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    iget-object p0, p0, Lcom/transsion/playercommon/utils/FileToXHideUtils;->a:Lcom/xui/xhide/IXHideWriteAidlInterface;

    if-eqz p0, :cond_3

    if-eqz p0, :cond_2

    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/xui/xhide/IXHideWriteAidlInterface;->hideFileByIds([I[I)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    array-length p0, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "hideFileByIds called successfully with "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " files"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to call hideFileByIds: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    const-string p0, "Service is null, cannot call hideFileByIds"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    :goto_2
    const-string p0, "Invalid parameters for hideFilesByIds"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
