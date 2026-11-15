.class public final Lio/appmetrica/analytics/impl/o1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/o1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    sget-object v0, Lio/appmetrica/analytics/impl/ej;->a:Lio/appmetrica/analytics/impl/Fj;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/o1;->a:Landroid/content/Context;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lio/appmetrica/analytics/impl/Fj;->b:Lio/appmetrica/analytics/impl/Yh;

    if-nez v1, :cond_1

    sget-object v1, Lio/appmetrica/analytics/impl/fi;->a:Lio/appmetrica/analytics/impl/gi;

    const-string v2, "20799a27-fa80-4b36-b2db-0f8141f24180"

    invoke-virtual {v1, p0, v2}, Lio/appmetrica/analytics/impl/gi;->a(Landroid/content/Context;Ljava/lang/String;)Lio/appmetrica/analytics/impl/Yh;

    move-result-object p0

    iput-object p0, v0, Lio/appmetrica/analytics/impl/Fj;->b:Lio/appmetrica/analytics/impl/Yh;

    iget-object p0, v0, Lio/appmetrica/analytics/impl/Fj;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/impl/Xa;

    iget-object v2, v0, Lio/appmetrica/analytics/impl/Fj;->b:Lio/appmetrica/analytics/impl/Yh;

    invoke-interface {v1, v2}, Lio/appmetrica/analytics/impl/Xa;->a(Lio/appmetrica/analytics/impl/Ya;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, v0, Lio/appmetrica/analytics/impl/Fj;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method
