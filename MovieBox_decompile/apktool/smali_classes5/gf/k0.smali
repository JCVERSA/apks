.class public final synthetic Lgf/k0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lgf/o0;

.field public final synthetic b:Lcom/permissionx/guolindev/dialog/RationaleDialog;

.field public final synthetic c:Z

.field public final synthetic d:Lgf/e;


# direct methods
.method public synthetic constructor <init>(Lgf/o0;Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLgf/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgf/k0;->a:Lgf/o0;

    .line 5
    .line 6
    iput-object p2, p0, Lgf/k0;->b:Lcom/permissionx/guolindev/dialog/RationaleDialog;

    .line 7
    .line 8
    iput-boolean p3, p0, Lgf/k0;->c:Z

    .line 9
    .line 10
    iput-object p4, p0, Lgf/k0;->d:Lgf/e;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lgf/k0;->a:Lgf/o0;

    .line 2
    .line 3
    iget-object v1, p0, Lgf/k0;->b:Lcom/permissionx/guolindev/dialog/RationaleDialog;

    .line 4
    .line 5
    iget-boolean v2, p0, Lgf/k0;->c:Z

    .line 6
    .line 7
    iget-object v3, p0, Lgf/k0;->d:Lgf/e;

    .line 8
    .line 9
    check-cast p1, Landroid/view/View;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, p1}, Lgf/o0;->f(Lgf/o0;Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLgf/e;Landroid/view/View;)Lkotlin/Unit;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
