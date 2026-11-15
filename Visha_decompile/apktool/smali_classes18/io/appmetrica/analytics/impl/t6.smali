.class public abstract Lio/appmetrica/analytics/impl/t6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Ma;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/s6;

.field public final b:Lio/appmetrica/analytics/ICrashTransformer;

.field public final c:Lio/appmetrica/analytics/impl/T9;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/s6;Lio/appmetrica/analytics/ICrashTransformer;Lio/appmetrica/analytics/impl/T9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/t6;->a:Lio/appmetrica/analytics/impl/s6;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/t6;->b:Lio/appmetrica/analytics/ICrashTransformer;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/t6;->c:Lio/appmetrica/analytics/impl/T9;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/ICrashTransformer;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 16
    iget-object p0, p0, Lio/appmetrica/analytics/impl/t6;->b:Lio/appmetrica/analytics/ICrashTransformer;

    return-object p0
.end method

.method public final a(Ljava/lang/Throwable;Lio/appmetrica/analytics/impl/S;)V
    .locals 3
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/impl/S;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/t6;->a:Lio/appmetrica/analytics/impl/s6;

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/s6;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/t6;->b:Lio/appmetrica/analytics/ICrashTransformer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lio/appmetrica/analytics/ICrashTransformer;->process(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/t6;->c:Lio/appmetrica/analytics/impl/T9;

    .line 5
    iget-object v0, v0, Lio/appmetrica/analytics/impl/T9;->b:Lio/appmetrica/analytics/impl/xm;

    .line 6
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/si;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lio/appmetrica/analytics/impl/t6;->c:Lio/appmetrica/analytics/impl/T9;

    .line 8
    iget-object v1, v1, Lio/appmetrica/analytics/impl/T9;->c:Lio/appmetrica/analytics/impl/q3;

    .line 9
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/si;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    const/4 v2, 0x0

    .line 10
    invoke-static {p1, p2, v2, v0, v1}, Lio/appmetrica/analytics/impl/qn;->a(Ljava/lang/Throwable;Lio/appmetrica/analytics/impl/S;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;)Lio/appmetrica/analytics/impl/nn;

    move-result-object p1

    .line 11
    check-cast p0, Lio/appmetrica/analytics/impl/th;

    .line 12
    iget-object p0, p0, Lio/appmetrica/analytics/impl/th;->d:Lio/appmetrica/analytics/impl/tn;

    check-cast p0, Lio/appmetrica/analytics/impl/kc;

    .line 13
    iget-object p2, p0, Lio/appmetrica/analytics/impl/tn;->a:Lio/appmetrica/analytics/impl/ab;

    .line 14
    invoke-interface {p2}, Lio/appmetrica/analytics/impl/ab;->a()Lio/appmetrica/analytics/impl/Za;

    move-result-object p2

    iget-object p0, p0, Lio/appmetrica/analytics/impl/kc;->b:Lio/appmetrica/analytics/AppMetricaConfig;

    invoke-interface {p2, p0}, Lio/appmetrica/analytics/impl/Za;->b(Lio/appmetrica/analytics/AppMetricaConfig;)Lio/appmetrica/analytics/impl/bb;

    move-result-object p0

    .line 15
    invoke-interface {p0, p1}, Lio/appmetrica/analytics/impl/bb;->a(Lio/appmetrica/analytics/impl/nn;)V

    :cond_1
    return-void
.end method

.method public final b()Lio/appmetrica/analytics/impl/s6;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/t6;->a:Lio/appmetrica/analytics/impl/s6;

    return-object p0
.end method
