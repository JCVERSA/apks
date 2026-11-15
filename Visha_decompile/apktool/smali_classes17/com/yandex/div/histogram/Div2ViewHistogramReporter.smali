.class public final Lcom/yandex/div/histogram/Div2ViewHistogramReporter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lc74;

.field public final b:Lc74;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Ljava/lang/Long;

.field public f:Ljava/lang/Long;

.field public g:Ljava/lang/Long;

.field public h:Ljava/lang/Long;

.field public i:Ljava/lang/Long;

.field public j:Ljava/lang/Long;

.field public k:Ljava/lang/Long;

.field public final l:Lyi5;


# direct methods
.method public constructor <init>(Lc74;Lc74;)V
    .locals 1

    const-string v0, "histogramReporter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderConfig"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->a:Lc74;

    iput-object p2, p0, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->b:Lc74;

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object p2, Lcom/yandex/div/histogram/Div2ViewHistogramReporter$renderMetrics$2;->INSTANCE:Lcom/yandex/div/histogram/Div2ViewHistogramReporter$renderMetrics$2;

    invoke-static {p1, p2}, Lkotlin/b;->b(Lkotlin/LazyThreadSafetyMode;Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->l:Lyi5;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/div/histogram/Div2ViewHistogramReporter;)J
    .locals 2

    invoke-virtual {p0}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic b(Lcom/yandex/div/histogram/Div2ViewHistogramReporter;)Lc74;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->a:Lc74;

    return-object p0
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final d()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()Lis8;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->l:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lis8;

    return-object p0
.end method

.method public final f()V
    .locals 13

    iget-object v0, p0, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->e:Ljava/lang/Long;

    iget-object v1, p0, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->f:Ljava/lang/Long;

    iget-object v2, p0, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->g:Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->e()Lis8;

    move-result-object v3

    const-string v5, "Div.Binding"

    if-nez v0, :cond_0

    sget-object v0, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start time of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lxi;->i(Ljava/lang/String;)V

    goto :goto_3

    :cond_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->a(Lcom/yandex/div/histogram/Div2ViewHistogramReporter;)J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    add-long/2addr v6, v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v6, v0

    goto :goto_1

    :cond_1
    if-nez v1, :cond_3

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p0}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->a(Lcom/yandex/div/histogram/Div2ViewHistogramReporter;)J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v1, v6

    move-wide v6, v1

    :goto_1
    invoke-virtual {v3, v6, v7}, Lis8;->d(J)V

    invoke-static {p0}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->b(Lcom/yandex/div/histogram/Div2ViewHistogramReporter;)Lc74;

    move-result-object v0

    invoke-interface {v0}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lrq4;

    invoke-virtual {p0}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->c()Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0x18

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v12}, Lrq4;->b(Lrq4;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lmq4;ILjava/lang/Object;)V

    goto :goto_3

    :cond_3
    :goto_2
    sget-object v0, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "when "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has paused time it should have resumed time and otherwise"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->e:Ljava/lang/Long;

    iput-object v0, p0, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->f:Ljava/lang/Long;

    iput-object v0, p0, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->g:Ljava/lang/Long;

    return-void
.end method

.method public final g()V
    .locals 2

    invoke-virtual {p0}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->f:Ljava/lang/Long;

    return-void
.end method

.method public final h()V
    .locals 2

    invoke-virtual {p0}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->g:Ljava/lang/Long;

    return-void
.end method

.method public final i()V
    .locals 2

    invoke-virtual {p0}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->e:Ljava/lang/Long;

    return-void
.end method

.method public final j()V
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->k:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->v(J)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->e()Lis8;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lis8;->a(J)V

    :cond_0
    iget-boolean v0, p0, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->e()Lis8;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->s(Lis8;)V

    :cond_1
    invoke-virtual {p0}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->t()V

    return-void
.end method

.method public final k()V
    .locals 2

    invoke-virtual {p0}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->k:Ljava/lang/Long;

    return-void
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->j:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->v(J)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->e()Lis8;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lis8;->b(J)V

    :cond_0
    return-void
.end method

.method public final m()V
    .locals 2

    invoke-virtual {p0}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->j:Ljava/lang/Long;

    return-void
.end method

.method public final n()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->i:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->v(J)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->e()Lis8;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lis8;->c(J)V

    :cond_0
    return-void
.end method

.method public final o()V
    .locals 2

    invoke-virtual {p0}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->i:Ljava/lang/Long;

    return-void
.end method

.method public final p()V
    .locals 11

    iget-object v0, p0, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->h:Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->e()Lis8;

    move-result-object v1

    const-string v3, "Div.Rebinding"

    if-nez v0, :cond_0

    sget-object v0, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start time of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lxi;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->a(Lcom/yandex/div/histogram/Div2ViewHistogramReporter;)J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Lis8;->i(J)V

    invoke-static {p0}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->b(Lcom/yandex/div/histogram/Div2ViewHistogramReporter;)Lc74;

    move-result-object v0

    invoke-interface {v0}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lrq4;

    invoke-virtual {p0}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->c()Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x18

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lrq4;->b(Lrq4;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lmq4;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->h:Ljava/lang/Long;

    return-void
.end method

.method public final q()V
    .locals 2

    invoke-virtual {p0}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->h:Ljava/lang/Long;

    return-void
.end method

.method public final r()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->d:Z

    return-void
.end method

.method public final s(Lis8;)V
    .locals 11

    iget-object v0, p0, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->a:Lc74;

    invoke-interface {v0}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrq4;

    iget-object v1, p0, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->b:Lc74;

    invoke-interface {v1}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lfs8;

    invoke-virtual {p1}, Lis8;->h()J

    move-result-wide v3

    iget-object v5, p0, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->c:Ljava/lang/String;

    invoke-virtual {v10}, Lfs8;->d()Lmq4;

    move-result-object v7

    const/16 v8, 0x8

    const/4 v9, 0x0

    const-string v2, "Div.Render.Total"

    const/4 v6, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v9}, Lrq4;->b(Lrq4;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lmq4;ILjava/lang/Object;)V

    invoke-virtual {p1}, Lis8;->g()J

    move-result-wide v3

    iget-object v5, p0, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->c:Ljava/lang/String;

    invoke-virtual {v10}, Lfs8;->c()Lmq4;

    move-result-object v7

    const-string v2, "Div.Render.Measure"

    invoke-static/range {v1 .. v9}, Lrq4;->b(Lrq4;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lmq4;ILjava/lang/Object;)V

    invoke-virtual {p1}, Lis8;->f()J

    move-result-wide v3

    iget-object v5, p0, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->c:Ljava/lang/String;

    invoke-virtual {v10}, Lfs8;->b()Lmq4;

    move-result-object v7

    const-string v2, "Div.Render.Layout"

    invoke-static/range {v1 .. v9}, Lrq4;->b(Lrq4;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lmq4;ILjava/lang/Object;)V

    invoke-virtual {p1}, Lis8;->e()J

    move-result-wide v3

    iget-object v5, p0, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->c:Ljava/lang/String;

    invoke-virtual {v10}, Lfs8;->a()Lmq4;

    move-result-object v7

    const-string v2, "Div.Render.Draw"

    invoke-static/range {v1 .. v9}, Lrq4;->b(Lrq4;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lmq4;ILjava/lang/Object;)V

    return-void
.end method

.method public final t()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->j:Ljava/lang/Long;

    iput-object v0, p0, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->i:Ljava/lang/Long;

    iput-object v0, p0, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->k:Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->e()Lis8;

    move-result-object p0

    invoke-virtual {p0}, Lis8;->j()V

    return-void
.end method

.method public final u(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->c:Ljava/lang/String;

    return-void
.end method

.method public final v(J)J
    .locals 2

    invoke-virtual {p0}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;->d()J

    move-result-wide v0

    sub-long/2addr v0, p1

    return-wide v0
.end method
