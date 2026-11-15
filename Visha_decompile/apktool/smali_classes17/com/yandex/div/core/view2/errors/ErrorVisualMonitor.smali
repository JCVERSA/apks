.class public final Lcom/yandex/div/core/view2/errors/ErrorVisualMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Lvbc;

.field public d:Z

.field public final e:Lcom/yandex/div/core/view2/errors/ErrorModel;

.field public f:Landroid/view/ViewGroup;

.field public g:Lcom/yandex/div/core/view2/errors/ErrorView;


# direct methods
.method public constructor <init>(Lxc3;Lcom/yandex/div/core/view2/Div2View;ZZLvbc;)V
    .locals 1

    const-string v0, "errorCollectors"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divView"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bindingProvider"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/yandex/div/core/view2/errors/ErrorVisualMonitor;->a:Z

    iput-boolean p4, p0, Lcom/yandex/div/core/view2/errors/ErrorVisualMonitor;->b:Z

    iput-object p5, p0, Lcom/yandex/div/core/view2/errors/ErrorVisualMonitor;->c:Lvbc;

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p4, 0x1

    :goto_1
    iput-boolean p4, p0, Lcom/yandex/div/core/view2/errors/ErrorVisualMonitor;->d:Z

    new-instance p4, Lcom/yandex/div/core/view2/errors/ErrorModel;

    invoke-direct {p4, p1, p2, p3}, Lcom/yandex/div/core/view2/errors/ErrorModel;-><init>(Lxc3;Lcom/yandex/div/core/view2/Div2View;Z)V

    iput-object p4, p0, Lcom/yandex/div/core/view2/errors/ErrorVisualMonitor;->e:Lcom/yandex/div/core/view2/errors/ErrorModel;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/errors/ErrorVisualMonitor;->c()V

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/div/core/view2/errors/ErrorVisualMonitor;)Lcom/yandex/div/core/view2/errors/ErrorModel;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/errors/ErrorVisualMonitor;->e:Lcom/yandex/div/core/view2/errors/ErrorModel;

    return-object p0
.end method


# virtual methods
.method public final b(Landroid/view/ViewGroup;)V
    .locals 3

    const-string v0, "root"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/errors/ErrorVisualMonitor;->f:Landroid/view/ViewGroup;

    iget-boolean v0, p0, Lcom/yandex/div/core/view2/errors/ErrorVisualMonitor;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/core/view2/errors/ErrorVisualMonitor;->g:Lcom/yandex/div/core/view2/errors/ErrorView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/errors/ErrorView;->close()V

    :cond_1
    new-instance v0, Lcom/yandex/div/core/view2/errors/ErrorView;

    iget-object v1, p0, Lcom/yandex/div/core/view2/errors/ErrorVisualMonitor;->e:Lcom/yandex/div/core/view2/errors/ErrorModel;

    iget-boolean v2, p0, Lcom/yandex/div/core/view2/errors/ErrorVisualMonitor;->b:Z

    invoke-direct {v0, p1, v1, v2}, Lcom/yandex/div/core/view2/errors/ErrorView;-><init>(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/errors/ErrorModel;Z)V

    iput-object v0, p0, Lcom/yandex/div/core/view2/errors/ErrorVisualMonitor;->g:Lcom/yandex/div/core/view2/errors/ErrorView;

    return-void
.end method

.method public final c()V
    .locals 2

    iget-boolean v0, p0, Lcom/yandex/div/core/view2/errors/ErrorVisualMonitor;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/div/core/view2/errors/ErrorVisualMonitor;->c:Lvbc;

    new-instance v1, Lcom/yandex/div/core/view2/errors/ErrorVisualMonitor$connectOrDisconnect$1;

    invoke-direct {v1, p0}, Lcom/yandex/div/core/view2/errors/ErrorVisualMonitor$connectOrDisconnect$1;-><init>(Lcom/yandex/div/core/view2/errors/ErrorVisualMonitor;)V

    invoke-virtual {v0, v1}, Lvbc;->a(Le74;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/errors/ErrorVisualMonitor;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/view2/errors/ErrorVisualMonitor;->b(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/core/view2/errors/ErrorVisualMonitor;->g:Lcom/yandex/div/core/view2/errors/ErrorView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/errors/ErrorView;->close()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/div/core/view2/errors/ErrorVisualMonitor;->g:Lcom/yandex/div/core/view2/errors/ErrorView;

    :cond_2
    :goto_0
    return-void
.end method

.method public final d()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/div/core/view2/errors/ErrorVisualMonitor;->d:Z

    return p0
.end method

.method public final e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yandex/div/core/view2/errors/ErrorVisualMonitor;->d:Z

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/errors/ErrorVisualMonitor;->c()V

    return-void
.end method
