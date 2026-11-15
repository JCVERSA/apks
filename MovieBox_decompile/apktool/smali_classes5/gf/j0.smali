.class public final synthetic Lgf/j0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lgf/o0;

.field public final synthetic b:Lcom/permissionx/guolindev/dialog/RationaleDialog;

.field public final synthetic c:Z

.field public final synthetic d:Lgf/e;

.field public final synthetic e:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lgf/o0;Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLgf/e;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgf/j0;->a:Lgf/o0;

    .line 5
    .line 6
    iput-object p2, p0, Lgf/j0;->b:Lcom/permissionx/guolindev/dialog/RationaleDialog;

    .line 7
    .line 8
    iput-boolean p3, p0, Lgf/j0;->c:Z

    .line 9
    .line 10
    iput-object p4, p0, Lgf/j0;->d:Lgf/e;

    .line 11
    .line 12
    iput-object p5, p0, Lgf/j0;->e:Ljava/util/List;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lgf/j0;->a:Lgf/o0;

    .line 2
    .line 3
    iget-object v1, p0, Lgf/j0;->b:Lcom/permissionx/guolindev/dialog/RationaleDialog;

    .line 4
    .line 5
    iget-boolean v2, p0, Lgf/j0;->c:Z

    .line 6
    .line 7
    iget-object v3, p0, Lgf/j0;->d:Lgf/e;

    .line 8
    .line 9
    iget-object v4, p0, Lgf/j0;->e:Ljava/util/List;

    .line 10
    .line 11
    move-object v5, p1

    .line 12
    check-cast v5, Landroid/view/View;

    .line 13
    .line 14
    invoke-static/range {v0 .. v5}, Lgf/o0;->h(Lgf/o0;Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLgf/e;Ljava/util/List;Landroid/view/View;)Lkotlin/Unit;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method
