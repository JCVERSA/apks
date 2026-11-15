.class public final Lcom/transsion/widgetslib/dialog/OSSnackbar$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/dialog/OSSnackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/OSSnackbar;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x7d0

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$a;->b(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/transsion/widgetslib/dialog/OSSnackbar;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized b(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/transsion/widgetslib/dialog/OSSnackbar;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$a;->getMOSSnackbar()Lcom/transsion/widgetslib/dialog/OSSnackbar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/OSSnackbar;->c()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v0, Lcom/transsion/widgetslib/dialog/OSSnackbar;

    invoke-direct {v0}, Lcom/transsion/widgetslib/dialog/OSSnackbar;-><init>()V

    new-instance v1, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;

    sget v2, Lcom/transsion/widgetslib/R$style;->OSSnackBarStyle:I

    invoke-direct {v1, p1, v2, p3}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v1, p2}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/OSSnackbar;->setMDialog(Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;)V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$a;->setMOSSnackbar(Lcom/transsion/widgetslib/dialog/OSSnackbar;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$a;->getMOSSnackbar()Lcom/transsion/widgetslib/dialog/OSSnackbar;

    move-result-object p1

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final getMOSSnackbar()Lcom/transsion/widgetslib/dialog/OSSnackbar;
    .locals 0

    invoke-static {}, Lcom/transsion/widgetslib/dialog/OSSnackbar;->a()Lcom/transsion/widgetslib/dialog/OSSnackbar;

    move-result-object p0

    return-object p0
.end method

.method public final setMOSSnackbar(Lcom/transsion/widgetslib/dialog/OSSnackbar;)V
    .locals 0

    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/OSSnackbar;->b(Lcom/transsion/widgetslib/dialog/OSSnackbar;)V

    return-void
.end method
