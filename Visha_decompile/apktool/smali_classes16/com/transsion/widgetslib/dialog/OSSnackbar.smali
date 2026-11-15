.class public final Lcom/transsion/widgetslib/dialog/OSSnackbar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/dialog/OSSnackbar$a;,
        Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;
    }
.end annotation


# static fields
.field public static final b:Lcom/transsion/widgetslib/dialog/OSSnackbar$a;

.field public static c:Lcom/transsion/widgetslib/dialog/OSSnackbar;


# instance fields
.field public a:Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/widgetslib/dialog/OSSnackbar$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/OSSnackbar$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/widgetslib/dialog/OSSnackbar;->b:Lcom/transsion/widgetslib/dialog/OSSnackbar$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lcom/transsion/widgetslib/dialog/OSSnackbar;
    .locals 1

    sget-object v0, Lcom/transsion/widgetslib/dialog/OSSnackbar;->c:Lcom/transsion/widgetslib/dialog/OSSnackbar;

    return-object v0
.end method

.method public static final synthetic b(Lcom/transsion/widgetslib/dialog/OSSnackbar;)V
    .locals 0

    sput-object p0, Lcom/transsion/widgetslib/dialog/OSSnackbar;->c:Lcom/transsion/widgetslib/dialog/OSSnackbar;

    return-void
.end method

.method public static declared-synchronized d(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/transsion/widgetslib/dialog/OSSnackbar;
    .locals 2

    const-class v0, Lcom/transsion/widgetslib/dialog/OSSnackbar;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/widgetslib/dialog/OSSnackbar;->b:Lcom/transsion/widgetslib/dialog/OSSnackbar$a;

    invoke-virtual {v1, p0, p1, p2}, Lcom/transsion/widgetslib/dialog/OSSnackbar$a;->b(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/transsion/widgetslib/dialog/OSSnackbar;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public c()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar;->a:Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/transsion/widgetslib/dialog/OSSnackbar;
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar;->a:Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->q(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object p0
.end method

.method public f()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar;->a:Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->show()V

    :cond_0
    return-void
.end method

.method public final getMDialog()Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar;->a:Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;

    return-object p0
.end method

.method public final setMDialog(Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar;->a:Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;

    return-void
.end method
