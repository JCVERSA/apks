.class public final Lio/appmetrica/analytics/impl/Jk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Pn;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/q0;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/q0;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/q0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Jk;->a:Lio/appmetrica/analytics/impl/q0;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/Nn;
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Jk;->a(Ljava/lang/Void;)Lio/appmetrica/analytics/impl/Nn;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Nn;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Jk;->a(Ljava/lang/Void;)Lio/appmetrica/analytics/impl/Nn;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/lang/Void;)Lio/appmetrica/analytics/impl/Nn;
    .locals 2
    .param p1    # Ljava/lang/Void;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Jk;->a:Lio/appmetrica/analytics/impl/q0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    const-class p1, Lio/appmetrica/analytics/impl/p0;

    monitor-enter p1

    .line 4
    :try_start_0
    sget-boolean v0, Lio/appmetrica/analytics/impl/p0;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    if-eqz v0, :cond_0

    .line 5
    new-instance p1, Lio/appmetrica/analytics/impl/Nn;

    const/4 v0, 0x1

    const-string v1, ""

    invoke-direct {p1, p0, v0, v1}, Lio/appmetrica/analytics/impl/Nn;-><init>(Lio/appmetrica/analytics/impl/Pn;ZLjava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    const-string p1, "AppMetrica isn\'t initialized. Use AppMetrica#activate(android.content.Context, String) method to activate."

    .line 7
    new-instance v0, Lio/appmetrica/analytics/impl/Nn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lio/appmetrica/analytics/impl/Nn;-><init>(Lio/appmetrica/analytics/impl/Pn;ZLjava/lang/String;)V

    move-object p1, v0

    :goto_0
    return-object p1

    :catchall_0
    move-exception p0

    .line 8
    monitor-exit p1

    throw p0
.end method
