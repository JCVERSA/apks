.class public Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher$a;


# instance fields
.field public final a:Lgd2;

.field public final b:Ljava/util/List;

.field public final c:Lcf2;

.field public final d:Lce2;

.field public final e:Ljava/util/Map;

.field public final f:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;->g:Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher$a;

    return-void
.end method

.method public constructor <init>(Lgd2;Ljava/util/List;Lcf2;Lce2;)V
    .locals 1

    const-string v0, "logger"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibilityListeners"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divActionHandler"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divActionBeaconSender"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;->a:Lgd2;

    iput-object p2, p0, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;->c:Lcf2;

    iput-object p4, p0, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;->d:Lce2;

    invoke-static {}, Lw71;->b()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;->e:Ljava/util/Map;

    invoke-static {}, Lw71;->b()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lwp2;)Ljava/util/Map;
    .locals 0

    instance-of p1, p1, Lcom/yandex/div2/DivVisibilityAction;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;->e:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;->f:Ljava/util/Map;

    :goto_0
    return-object p0
.end method

.method public b(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lwp2;)V
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v7, p4

    const-string v0, "scope"

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {v2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    move-object/from16 v3, p3

    invoke-static {v3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {v7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p4 .. p4}, Lwp2;->b()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Ljd1;->a(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;)Lcom/yandex/div/core/view2/CompositeLogId;

    move-result-object v8

    invoke-virtual {v6, v7}, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;->a(Lwp2;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v9

    sget-object v10, Lne5;->a:Lne5;

    sget-object v11, Lcom/yandex/div/logging/Severity;->INFO:Lcom/yandex/div/logging/Severity;

    invoke-virtual {v10, v11}, Lne5;->a(Lcom/yandex/div/logging/Severity;)Z

    move-result v0

    const/4 v12, 0x4

    const-string v13, "DivVisibilityActionDispatcher"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "visibility action dispatched: id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", counter="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v12, v13, v0}, Lne5;->b(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-interface/range {p4 .. p4}, Lwp2;->c()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v0, v14, v16

    move-object/from16 v17, v13

    if-eqz v0, :cond_2

    int-to-long v12, v9

    cmp-long v0, v12, v14

    if-gez v0, :cond_7

    :cond_2
    iget-object v0, v6, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;->c:Lcf2;

    invoke-virtual {v0}, Lcf2;->getUseActionUid()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v0, "randomUUID().toString()"

    invoke-static {v12, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/div/core/view2/Div2View;->getActionHandler()Lcf2;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v7, v1, v2, v12}, Lcf2;->handleAction(Lwp2;Lsv2;Loj3;Ljava/lang/String;)Z

    move-result v5

    :cond_3
    if-nez v5, :cond_6

    iget-object v0, v6, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;->c:Lcf2;

    invoke-virtual {v0, v7, v1, v2, v12}, Lcf2;->handleAction(Lwp2;Lsv2;Loj3;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;->f(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lwp2;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/div/core/view2/Div2View;->getActionHandler()Lcf2;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v7, v1, v2}, Lcf2;->handleAction(Lwp2;Lsv2;Loj3;)Z

    move-result v5

    :cond_5
    if-nez v5, :cond_6

    iget-object v0, v6, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;->c:Lcf2;

    invoke-virtual {v0, v7, v1, v2}, Lcf2;->handleAction(Lwp2;Lsv2;Loj3;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual/range {p0 .. p4}, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;->e(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lwp2;)V

    :cond_6
    :goto_0
    invoke-virtual {v6, v7}, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;->a(Lwp2;)Ljava/util/Map;

    move-result-object v0

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v11}, Lne5;->a(Lcom/yandex/div/logging/Severity;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visibility action logged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v17

    const/4 v1, 0x4

    invoke-virtual {v10, v1, v2, v0}, Lne5;->b(ILjava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public c(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;[Lwp2;)V
    .locals 7

    const-string v0, "scope"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actions"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher$dispatchActions$1;

    move-object v1, v0

    move-object v2, p4

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher$dispatchActions$1;-><init>([Lwp2;Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Lcom/yandex/div/core/view2/Div2View;->bulkActions$div_release(Lc74;)V

    return-void
.end method

.method public d(Ljava/util/Map;)V
    .locals 1

    const-string v0, "visibleViews"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;->b:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final e(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lwp2;)V
    .locals 2

    instance-of v0, p4, Lcom/yandex/div2/DivVisibilityAction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;->a:Lgd2;

    move-object v1, p4

    check-cast v1, Lcom/yandex/div2/DivVisibilityAction;

    invoke-interface {v0, p1, p2, p3, v1}, Lgd2;->m(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/DivVisibilityAction;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;->a:Lgd2;

    const-string v1, "null cannot be cast to non-null type com.yandex.div2.DivDisappearAction"

    invoke-static {p4, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p4

    check-cast v1, Lcom/yandex/div2/DivDisappearAction;

    invoke-interface {v0, p1, p2, p3, v1}, Lgd2;->n(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/DivDisappearAction;)V

    :goto_0
    iget-object p0, p0, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;->d:Lce2;

    invoke-virtual {p0, p4, p2}, Lce2;->d(Lwp2;Loj3;)V

    return-void
.end method

.method public final f(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lwp2;Ljava/lang/String;)V
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p4

    instance-of v2, v1, Lcom/yandex/div2/DivVisibilityAction;

    if-eqz v2, :cond_0

    iget-object v3, v0, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;->a:Lgd2;

    move-object v7, v1

    check-cast v7, Lcom/yandex/div2/DivVisibilityAction;

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p5

    invoke-interface/range {v3 .. v8}, Lgd2;->g(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/DivVisibilityAction;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v8, v0, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;->a:Lgd2;

    const-string v2, "null cannot be cast to non-null type com.yandex.div2.DivDisappearAction"

    invoke-static {v1, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v1

    check-cast v12, Lcom/yandex/div2/DivDisappearAction;

    move-object v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v13, p5

    invoke-interface/range {v8 .. v13}, Lgd2;->f(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/DivDisappearAction;Ljava/lang/String;)V

    :goto_0
    iget-object v0, v0, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;->d:Lce2;

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lce2;->d(Lwp2;Loj3;)V

    return-void
.end method

.method public g(Ljava/util/List;)V
    .locals 3

    const-string v0, "tags"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;->e:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p0, p0, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;->f:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    goto :goto_1

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lei2;

    iget-object v1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher$reset$1$1;

    invoke-direct {v2, v0}, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher$reset$1$1;-><init>(Lei2;)V

    invoke-static {v1, v2}, Ld81;->H(Ljava/lang/Iterable;Le74;)Z

    iget-object v1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher$reset$1$2;

    invoke-direct {v2, v0}, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher$reset$1$2;-><init>(Lei2;)V

    invoke-static {v1, v2}, Ld81;->H(Ljava/lang/Iterable;Le74;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
