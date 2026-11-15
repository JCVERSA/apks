.class public final Lio/appmetrica/analytics/impl/yk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String; = "SESSION_SLEEP_START"

.field public static final e:Ljava/lang/String; = "SESSION_LAST_EVENT_OFFSET"

.field public static final f:Ljava/lang/String; = "SESSION_ID"

.field public static final g:Ljava/lang/String; = "SESSION_COUNTER_ID"

.field public static final h:Ljava/lang/String; = "SESSION_INIT_TIME"

.field public static final i:Ljava/lang/String; = "SESSION_IS_ALIVE_REPORT_NEEDED"


# instance fields
.field public final a:Ljava/lang/String;

.field protected final b:Lio/appmetrica/analytics/impl/Le;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public c:Lio/appmetrica/analytics/impl/lb;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Le;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lio/appmetrica/analytics/impl/Le;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/yk;->b:Lio/appmetrica/analytics/impl/Le;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/yk;->a:Ljava/lang/String;

    new-instance v0, Lio/appmetrica/analytics/impl/lb;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/lb;-><init>()V

    :try_start_0
    invoke-virtual {p1, p2}, Lio/appmetrica/analytics/impl/Le;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Lio/appmetrica/analytics/impl/lb;

    invoke-direct {p2, p1}, Lio/appmetrica/analytics/impl/lb;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p2

    :catchall_0
    :cond_0
    iput-object v0, p0, Lio/appmetrica/analytics/impl/yk;->c:Lio/appmetrica/analytics/impl/lb;

    return-void
.end method


# virtual methods
.method public final a(J)Lio/appmetrica/analytics/impl/yk;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "SESSION_INIT_TIME"

    invoke-virtual {p0, p2, p1}, Lio/appmetrica/analytics/impl/yk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final a(Z)Lio/appmetrica/analytics/impl/yk;
    .locals 1

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "SESSION_IS_ALIVE_REPORT_NEEDED"

    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/yk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final a()V
    .locals 1

    .line 4
    new-instance v0, Lio/appmetrica/analytics/impl/lb;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/lb;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/yk;->c:Lio/appmetrica/analytics/impl/lb;

    .line 5
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/yk;->b()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 3
    :try_start_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/yk;->c:Lio/appmetrica/analytics/impl/lb;

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final b(J)Lio/appmetrica/analytics/impl/yk;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "SESSION_LAST_EVENT_OFFSET"

    invoke-virtual {p0, p2, p1}, Lio/appmetrica/analytics/impl/yk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b()V
    .locals 3

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/yk;->b:Lio/appmetrica/analytics/impl/Le;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/yk;->a:Ljava/lang/String;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/yk;->c:Lio/appmetrica/analytics/impl/lb;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/appmetrica/analytics/impl/Le;->e(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/impl/Le;

    .line 3
    iget-object p0, p0, Lio/appmetrica/analytics/impl/yk;->b:Lio/appmetrica/analytics/impl/Le;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Me;->b()V

    return-void
.end method

.method public final c(J)Lio/appmetrica/analytics/impl/yk;
    .locals 0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "SESSION_COUNTER_ID"

    invoke-virtual {p0, p2, p1}, Lio/appmetrica/analytics/impl/yk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final c()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/yk;->c:Lio/appmetrica/analytics/impl/lb;

    const-string v0, "SESSION_INIT_TIME"

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/lb;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final d(J)Lio/appmetrica/analytics/impl/yk;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "SESSION_ID"

    invoke-virtual {p0, p2, p1}, Lio/appmetrica/analytics/impl/yk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final d()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/yk;->c:Lio/appmetrica/analytics/impl/lb;

    const-string v0, "SESSION_LAST_EVENT_OFFSET"

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/lb;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final e(J)Lio/appmetrica/analytics/impl/yk;
    .locals 0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "SESSION_SLEEP_START"

    invoke-virtual {p0, p2, p1}, Lio/appmetrica/analytics/impl/yk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final e()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/yk;->c:Lio/appmetrica/analytics/impl/lb;

    const-string v0, "SESSION_COUNTER_ID"

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/lb;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final f()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/yk;->c:Lio/appmetrica/analytics/impl/lb;

    const-string v0, "SESSION_ID"

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/lb;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final g()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/yk;->c:Lio/appmetrica/analytics/impl/lb;

    const-string v0, "SESSION_SLEEP_START"

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/lb;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final h()Z
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/yk;->c:Lio/appmetrica/analytics/impl/lb;

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final i()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/yk;->c:Lio/appmetrica/analytics/impl/lb;

    const-string v0, "SESSION_IS_ALIVE_REPORT_NEEDED"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
