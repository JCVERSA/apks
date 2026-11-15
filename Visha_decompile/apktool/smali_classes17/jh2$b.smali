.class public Ljh2$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljh2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:F

.field public final a:Lwk2;

.field public b:Lcf2;

.field public c:Lgd2;

.field public d:Lbi2;

.field public e:Lmq2;

.field public f:Llq2;

.field public g:Lfd2;

.field public final h:Ljava/util/List;

.field public i:Lcom/yandex/div/core/player/DivPlayerFactory;

.field public j:Lmo2;

.field public k:Lcom/yandex/div/core/a;

.field public l:Lrt2;

.field public final m:Ljava/util/List;

.field public n:Loi2;

.field public o:Lbu2;

.field public p:Ljava/util/Map;

.field public q:Lddc;

.field public r:Lcom/yandex/div/internal/viewpool/ViewPoolProfiler$a;

.field public s:Lcom/yandex/div/core/expression/variables/DivVariableController;

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Lwk2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljh2$b;->h:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljh2$b;->m:Ljava/util/List;

    sget-object v0, Lcom/yandex/div/core/experiments/Experiment;->TAP_BEACONS_ENABLED:Lcom/yandex/div/core/experiments/Experiment;

    invoke-virtual {v0}, Lcom/yandex/div/core/experiments/Experiment;->getDefaultValue()Z

    move-result v0

    iput-boolean v0, p0, Ljh2$b;->t:Z

    sget-object v0, Lcom/yandex/div/core/experiments/Experiment;->VISIBILITY_BEACONS_ENABLED:Lcom/yandex/div/core/experiments/Experiment;

    invoke-virtual {v0}, Lcom/yandex/div/core/experiments/Experiment;->getDefaultValue()Z

    move-result v0

    iput-boolean v0, p0, Ljh2$b;->u:Z

    sget-object v0, Lcom/yandex/div/core/experiments/Experiment;->SWIPE_OUT_BEACONS_ENABLED:Lcom/yandex/div/core/experiments/Experiment;

    invoke-virtual {v0}, Lcom/yandex/div/core/experiments/Experiment;->getDefaultValue()Z

    move-result v0

    iput-boolean v0, p0, Ljh2$b;->v:Z

    sget-object v0, Lcom/yandex/div/core/experiments/Experiment;->LONGTAP_ACTIONS_PASS_TO_CHILD_ENABLED:Lcom/yandex/div/core/experiments/Experiment;

    invoke-virtual {v0}, Lcom/yandex/div/core/experiments/Experiment;->getDefaultValue()Z

    move-result v0

    iput-boolean v0, p0, Ljh2$b;->w:Z

    sget-object v0, Lcom/yandex/div/core/experiments/Experiment;->IGNORE_ACTION_MENU_ITEMS_ENABLED:Lcom/yandex/div/core/experiments/Experiment;

    invoke-virtual {v0}, Lcom/yandex/div/core/experiments/Experiment;->getDefaultValue()Z

    move-result v0

    iput-boolean v0, p0, Ljh2$b;->x:Z

    sget-object v0, Lcom/yandex/div/core/experiments/Experiment;->HYPHENATION_SUPPORT_ENABLED:Lcom/yandex/div/core/experiments/Experiment;

    invoke-virtual {v0}, Lcom/yandex/div/core/experiments/Experiment;->getDefaultValue()Z

    move-result v0

    iput-boolean v0, p0, Ljh2$b;->y:Z

    sget-object v0, Lcom/yandex/div/core/experiments/Experiment;->VISUAL_ERRORS_ENABLED:Lcom/yandex/div/core/experiments/Experiment;

    invoke-virtual {v0}, Lcom/yandex/div/core/experiments/Experiment;->getDefaultValue()Z

    move-result v0

    iput-boolean v0, p0, Ljh2$b;->z:Z

    sget-object v0, Lcom/yandex/div/core/experiments/Experiment;->ACCESSIBILITY_ENABLED:Lcom/yandex/div/core/experiments/Experiment;

    invoke-virtual {v0}, Lcom/yandex/div/core/experiments/Experiment;->getDefaultValue()Z

    move-result v0

    iput-boolean v0, p0, Ljh2$b;->A:Z

    sget-object v0, Lcom/yandex/div/core/experiments/Experiment;->VIEW_POOL_ENABLED:Lcom/yandex/div/core/experiments/Experiment;

    invoke-virtual {v0}, Lcom/yandex/div/core/experiments/Experiment;->getDefaultValue()Z

    move-result v0

    iput-boolean v0, p0, Ljh2$b;->B:Z

    sget-object v0, Lcom/yandex/div/core/experiments/Experiment;->VIEW_POOL_PROFILING_ENABLED:Lcom/yandex/div/core/experiments/Experiment;

    invoke-virtual {v0}, Lcom/yandex/div/core/experiments/Experiment;->getDefaultValue()Z

    move-result v0

    iput-boolean v0, p0, Ljh2$b;->C:Z

    sget-object v0, Lcom/yandex/div/core/experiments/Experiment;->VIEW_POOL_OPTIMIZATION_DEBUG:Lcom/yandex/div/core/experiments/Experiment;

    invoke-virtual {v0}, Lcom/yandex/div/core/experiments/Experiment;->getDefaultValue()Z

    move-result v0

    iput-boolean v0, p0, Ljh2$b;->D:Z

    sget-object v0, Lcom/yandex/div/core/experiments/Experiment;->RESOURCE_CACHE_ENABLED:Lcom/yandex/div/core/experiments/Experiment;

    invoke-virtual {v0}, Lcom/yandex/div/core/experiments/Experiment;->getDefaultValue()Z

    move-result v0

    iput-boolean v0, p0, Ljh2$b;->E:Z

    sget-object v0, Lcom/yandex/div/core/experiments/Experiment;->MULTIPLE_STATE_CHANGE_ENABLED:Lcom/yandex/div/core/experiments/Experiment;

    invoke-virtual {v0}, Lcom/yandex/div/core/experiments/Experiment;->getDefaultValue()Z

    move-result v0

    iput-boolean v0, p0, Ljh2$b;->F:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljh2$b;->G:Z

    sget-object v0, Lcom/yandex/div/core/experiments/Experiment;->COMPLEX_REBIND_ENABLED:Lcom/yandex/div/core/experiments/Experiment;

    invoke-virtual {v0}, Lcom/yandex/div/core/experiments/Experiment;->getDefaultValue()Z

    move-result v0

    iput-boolean v0, p0, Ljh2$b;->H:Z

    sget-object v0, Lcom/yandex/div/core/experiments/Experiment;->PAGER_PAGE_CLIP_ENABLED:Lcom/yandex/div/core/experiments/Experiment;

    invoke-virtual {v0}, Lcom/yandex/div/core/experiments/Experiment;->getDefaultValue()Z

    move-result v0

    iput-boolean v0, p0, Ljh2$b;->I:Z

    sget-object v0, Lcom/yandex/div/core/experiments/Experiment;->PERMANENT_DEBUG_PANEL_ENABLED:Lcom/yandex/div/core/experiments/Experiment;

    invoke-virtual {v0}, Lcom/yandex/div/core/experiments/Experiment;->getDefaultValue()Z

    move-result v0

    iput-boolean v0, p0, Ljh2$b;->J:Z

    const/4 v0, 0x0

    iput v0, p0, Ljh2$b;->K:F

    iput-object p1, p0, Ljh2$b;->a:Lwk2;

    return-void
.end method


# virtual methods
.method public a(Lcf2;)Ljh2$b;
    .locals 0

    iput-object p1, p0, Ljh2$b;->b:Lcf2;

    return-object p0
.end method

.method public b()Ljh2;
    .locals 41

    move-object/from16 v0, p0

    iget-object v1, v0, Ljh2$b;->o:Lbu2;

    if-nez v1, :cond_0

    sget-object v1, Lbu2;->b:Lbu2;

    :cond_0
    move-object/from16 v17, v1

    iget-object v1, v0, Ljh2$b;->i:Lcom/yandex/div/core/player/DivPlayerFactory;

    if-nez v1, :cond_1

    sget-object v1, Lcom/yandex/div/core/player/DivPlayerFactory;->b:Lcom/yandex/div/core/player/DivPlayerFactory;

    :cond_1
    move-object v12, v1

    iget-object v1, v0, Ljh2$b;->j:Lmo2;

    if-nez v1, :cond_2

    invoke-interface {v12}, Lcom/yandex/div/core/player/DivPlayerFactory;->a()Lmo2;

    move-result-object v1

    :cond_2
    move-object v13, v1

    new-instance v1, Ljh2;

    new-instance v3, Lxk2;

    iget-object v2, v0, Ljh2$b;->a:Lwk2;

    invoke-direct {v3, v2}, Lxk2;-><init>(Lwk2;)V

    iget-object v2, v0, Ljh2$b;->b:Lcf2;

    if-nez v2, :cond_3

    new-instance v2, Lcf2;

    invoke-direct {v2}, Lcf2;-><init>()V

    :cond_3
    move-object v4, v2

    iget-object v2, v0, Ljh2$b;->c:Lgd2;

    if-nez v2, :cond_4

    sget-object v2, Lgd2;->a:Lgd2;

    :cond_4
    move-object v5, v2

    iget-object v2, v0, Ljh2$b;->d:Lbi2;

    if-nez v2, :cond_5

    sget-object v2, Lbi2;->b:Lbi2;

    :cond_5
    move-object v6, v2

    iget-object v2, v0, Ljh2$b;->e:Lmq2;

    if-nez v2, :cond_6

    sget-object v2, Lmq2;->b:Lmq2;

    :cond_6
    move-object v7, v2

    iget-object v2, v0, Ljh2$b;->f:Llq2;

    if-nez v2, :cond_7

    new-instance v2, Lcom/yandex/div/state/InMemoryDivStateCache;

    invoke-direct {v2}, Lcom/yandex/div/state/InMemoryDivStateCache;-><init>()V

    :cond_7
    move-object v8, v2

    iget-object v2, v0, Ljh2$b;->g:Lfd2;

    if-nez v2, :cond_8

    sget-object v2, Lfd2;->a:Lfd2;

    :cond_8
    move-object v9, v2

    iget-object v10, v0, Ljh2$b;->h:Ljava/util/List;

    iget-object v2, v0, Ljh2$b;->k:Lcom/yandex/div/core/a;

    if-nez v2, :cond_9

    sget-object v2, Lcom/yandex/div/core/a;->c:Lcom/yandex/div/core/a;

    :cond_9
    move-object v11, v2

    iget-object v2, v0, Ljh2$b;->l:Lrt2;

    if-nez v2, :cond_a

    sget-object v2, Lrt2;->a:Lrt2;

    :cond_a
    move-object v14, v2

    iget-object v15, v0, Ljh2$b;->m:Ljava/util/List;

    iget-object v2, v0, Ljh2$b;->n:Loi2;

    if-nez v2, :cond_b

    sget-object v2, Loi2;->a:Loi2;

    :cond_b
    move-object/from16 v16, v2

    iget-object v2, v0, Ljh2$b;->p:Ljava/util/Map;

    if-nez v2, :cond_c

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :cond_c
    move-object/from16 v18, v2

    iget-object v2, v0, Ljh2$b;->q:Lddc;

    if-nez v2, :cond_d

    new-instance v2, Lddc;

    invoke-direct {v2}, Lddc;-><init>()V

    :cond_d
    move-object/from16 v19, v2

    iget-object v2, v0, Ljh2$b;->r:Lcom/yandex/div/internal/viewpool/ViewPoolProfiler$a;

    if-nez v2, :cond_e

    sget-object v2, Lcom/yandex/div/internal/viewpool/ViewPoolProfiler$a;->b:Lcom/yandex/div/internal/viewpool/ViewPoolProfiler$a;

    :cond_e
    move-object/from16 v20, v2

    iget-object v2, v0, Ljh2$b;->s:Lcom/yandex/div/core/expression/variables/DivVariableController;

    if-nez v2, :cond_f

    new-instance v2, Lcom/yandex/div/core/expression/variables/DivVariableController;

    invoke-direct {v2}, Lcom/yandex/div/core/expression/variables/DivVariableController;-><init>()V

    :cond_f
    move-object/from16 v21, v2

    iget-boolean v2, v0, Ljh2$b;->t:Z

    move/from16 v22, v2

    iget-boolean v2, v0, Ljh2$b;->u:Z

    move/from16 v23, v2

    iget-boolean v2, v0, Ljh2$b;->v:Z

    move/from16 v24, v2

    iget-boolean v2, v0, Ljh2$b;->w:Z

    move/from16 v25, v2

    iget-boolean v2, v0, Ljh2$b;->x:Z

    move/from16 v26, v2

    iget-boolean v2, v0, Ljh2$b;->z:Z

    move/from16 v27, v2

    iget-boolean v2, v0, Ljh2$b;->y:Z

    move/from16 v28, v2

    iget-boolean v2, v0, Ljh2$b;->A:Z

    move/from16 v29, v2

    iget-boolean v2, v0, Ljh2$b;->B:Z

    move/from16 v30, v2

    iget-boolean v2, v0, Ljh2$b;->C:Z

    move/from16 v31, v2

    iget-boolean v2, v0, Ljh2$b;->D:Z

    move/from16 v32, v2

    iget-boolean v2, v0, Ljh2$b;->E:Z

    move/from16 v33, v2

    iget-boolean v2, v0, Ljh2$b;->F:Z

    move/from16 v34, v2

    iget-boolean v2, v0, Ljh2$b;->G:Z

    move/from16 v35, v2

    iget-boolean v2, v0, Ljh2$b;->H:Z

    move/from16 v36, v2

    iget-boolean v2, v0, Ljh2$b;->I:Z

    move/from16 v37, v2

    iget-boolean v2, v0, Ljh2$b;->J:Z

    move/from16 v38, v2

    iget v0, v0, Ljh2$b;->K:F

    move/from16 v39, v0

    const/16 v40, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v40}, Ljh2;-><init>(Lwk2;Lcf2;Lgd2;Lbi2;Lmq2;Llq2;Lfd2;Ljava/util/List;Lcom/yandex/div/core/a;Lcom/yandex/div/core/player/DivPlayerFactory;Lmo2;Lrt2;Ljava/util/List;Loi2;Lbu2;Ljava/util/Map;Lddc;Lcom/yandex/div/internal/viewpool/ViewPoolProfiler$a;Lcom/yandex/div/core/expression/variables/DivVariableController;ZZZZZZZZZZZZZZZZZFLjh2$a;)V

    return-object v1
.end method

.method public c(Lcom/yandex/div/core/a;)Ljh2$b;
    .locals 0

    iput-object p1, p0, Ljh2$b;->k:Lcom/yandex/div/core/a;

    return-object p0
.end method

.method public d(Lwi2;)Ljh2$b;
    .locals 1

    iget-object v0, p0, Ljh2$b;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public e(Lbu2;)Ljh2$b;
    .locals 0

    iput-object p1, p0, Ljh2$b;->o:Lbu2;

    return-object p0
.end method
