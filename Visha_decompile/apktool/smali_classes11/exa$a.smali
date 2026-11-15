.class public final Lexa$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;

.field public final b:Landroid/os/Handler;

.field public c:Laec;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lexa$a;->b:Landroid/os/Handler;

    iput-object p1, p0, Lexa$a;->a:Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;

    :try_start_0
    invoke-virtual {p1, p2}, Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;->registerDragStateListener(Z)V
    :try_end_0
    .catch Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "TranDragDropBackend"

    const-string p2, "registerDragStateListener failed"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static synthetic b(Lexa$a;Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lexa$a;->e(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic c(Lexa$a;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lexa$a;->d(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Laec;)V
    .locals 1

    iput-object p1, p0, Lexa$a;->c:Laec;

    if-nez p1, :cond_0

    :try_start_0
    iget-object p0, p0, Lexa$a;->a:Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;->setDragStateListener(Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager$DrawShadowCallback;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lexa$a;->a:Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;

    new-instance v0, Lcxa;

    invoke-direct {v0, p0}, Lcxa;-><init>(Lexa$a;)V

    invoke-virtual {p1, v0}, Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;->setDragStateListener(Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager$DrawShadowCallback;)V
    :try_end_0
    .catch Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string p1, "TranDragDropBackend"

    const-string v0, "setDragStateListener failed"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public final synthetic d(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallback: state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranDragDropBackend"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lexa$a;->c:Laec;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2, p1}, Laec;->onUpdateDrawShadow(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final synthetic e(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lexa$a;->b:Landroid/os/Handler;

    new-instance v1, Ldxa;

    invoke-direct {v1, p0, p2, p1}, Ldxa;-><init>(Lexa$a;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lexa$a;->c:Laec;

    :try_start_0
    iget-object p0, p0, Lexa$a;->a:Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager;->setDragStateListener(Lcom/transsion/hubsdk/api/dragdrop/TranDragDropManager$DrawShadowCallback;)V
    :try_end_0
    .catch Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "TranDragDropBackend"

    const-string v1, "release setDragStateListener failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
