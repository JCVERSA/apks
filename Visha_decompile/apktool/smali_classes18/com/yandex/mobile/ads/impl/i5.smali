.class public final Lcom/yandex/mobile/ads/impl/i5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;

.field private final b:Lcom/yandex/mobile/ads/impl/sp1;

.field private final c:Lcom/yandex/mobile/ads/impl/ch1;

.field private final d:Lcom/yandex/mobile/ads/impl/id;

.field private e:Lcom/yandex/mobile/ads/impl/kq1;

.field private f:Lcom/yandex/mobile/ads/impl/jr1;

.field private g:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/bv1;->f()V

    sget-object v0, Lcom/yandex/mobile/ads/impl/jn2;->a:Lcom/yandex/mobile/ads/impl/jn2;

    .line 2
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/bv1;->b()Lcom/yandex/mobile/ads/impl/ol2;

    move-result-object v1

    .line 3
    invoke-static {p1, v0, v1}, Lcom/yandex/mobile/ads/impl/nd;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/t92;Lcom/yandex/mobile/ads/impl/ie;)Lcom/yandex/mobile/ads/impl/s01;

    move-result-object v6

    .line 4
    new-instance v7, Lcom/yandex/mobile/ads/impl/h5;

    invoke-direct {v7, p3}, Lcom/yandex/mobile/ads/impl/h5;-><init>(Lcom/yandex/mobile/ads/impl/g5;)V

    .line 5
    new-instance v8, Lcom/yandex/mobile/ads/impl/id;

    invoke-direct {v8, p1}, Lcom/yandex/mobile/ads/impl/id;-><init>(Landroid/content/Context;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 6
    invoke-direct/range {v2 .. v8}, Lcom/yandex/mobile/ads/impl/i5;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/ch1;Lcom/yandex/mobile/ads/impl/id;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/ch1;Lcom/yandex/mobile/ads/impl/id;)V
    .locals 1

    .line 7
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adConfiguration"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adLoadingPhasesManager"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "metricaReporter"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "phasesParametersProvider"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "metricaLibraryEventReporter"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/i5;->a:Lcom/yandex/mobile/ads/impl/o3;

    .line 10
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/i5;->b:Lcom/yandex/mobile/ads/impl/sp1;

    .line 11
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/i5;->c:Lcom/yandex/mobile/ads/impl/ch1;

    .line 12
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/i5;->d:Lcom/yandex/mobile/ads/impl/id;

    return-void
.end method

.method private final a(Ljava/util/HashMap;)V
    .locals 6

    .line 11
    new-instance v0, Lcom/yandex/mobile/ads/impl/pp1;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/yandex/mobile/ads/impl/pp1;-><init>(Ljava/util/Map;I)V

    .line 12
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/i5;->e:Lcom/yandex/mobile/ads/impl/kq1;

    if-eqz v1, :cond_0

    .line 13
    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/kq1;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/pp1;->a(Ljava/util/Map;)V

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/i5;->f:Lcom/yandex/mobile/ads/impl/jr1;

    if-eqz v1, :cond_1

    .line 15
    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/jr1;->a()Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/qp1;->a(Lcom/yandex/mobile/ads/impl/pp1;Lcom/yandex/mobile/ads/impl/pp1;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object v0

    .line 16
    :cond_1
    new-instance v1, Lcom/yandex/mobile/ads/impl/op1;

    .line 17
    sget-object v2, Lcom/yandex/mobile/ads/impl/op1$b;->c:Lcom/yandex/mobile/ads/impl/op1$b;

    .line 18
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/pp1;->b()Ljava/util/Map;

    move-result-object v3

    .line 19
    const-string v4, "reportType"

    const-string v5, "reportData"

    invoke-static {v0, v2, v4, v3, v5}, Lcom/yandex/mobile/ads/impl/df1;->a(Lcom/yandex/mobile/ads/impl/pp1;Lcom/yandex/mobile/ads/impl/op1$b;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/f;

    move-result-object v0

    .line 20
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/op1$b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lkotlin/collections/a;->C(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, v4, v3, v0}, Lcom/yandex/mobile/ads/impl/op1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/f;)V

    .line 21
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i5;->b:Lcom/yandex/mobile/ads/impl/sp1;

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/sp1;->a(Lcom/yandex/mobile/ads/impl/op1;)V

    .line 22
    const-string v0, "status"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "success"

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 23
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/i5;->d:Lcom/yandex/mobile/ads/impl/id;

    .line 24
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/op1;->b()Ljava/util/Map;

    move-result-object v0

    .line 25
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i5;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/o3;->j()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/yandex/mobile/ads/impl/op1$a;->a:Ljava/lang/String;

    :cond_2
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p1, v2, v0, p0, v1}, Lcom/yandex/mobile/ads/impl/id;->a(Lcom/yandex/mobile/ads/impl/op1$b;Ljava/util/Map;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/t4;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    const-string v1, "status"

    const-string v2, "success"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/i5;->c:Lcom/yandex/mobile/ads/impl/ch1;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/ch1;->a()Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "durations"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-boolean v1, p0, Lcom/yandex/mobile/ads/impl/i5;->g:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "load_listener_available"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/i5;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/jr1;)V
    .locals 1

    .line 34
    const-string v0, "reportParameterManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/i5;->f:Lcom/yandex/mobile/ads/impl/jr1;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/kq1;)V
    .locals 1

    .line 32
    const-string v0, "reportParameterManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/i5;->e:Lcom/yandex/mobile/ads/impl/kq1;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 4
    const-string v0, "failureReason"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    const-string v1, "status"

    const-string v2, "error"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-string v1, "failure_reason"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/i5;->c:Lcom/yandex/mobile/ads/impl/ch1;

    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/ch1;->a()Ljava/util/LinkedHashMap;

    move-result-object p1

    const-string v1, "durations"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-boolean p1, p0, Lcom/yandex/mobile/ads/impl/i5;->g:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "load_listener_available"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/i5;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method public final varargs a([Ljava/lang/Object;)V
    .locals 4

    .line 1
    const-string v0, "listeners"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    :goto_1
    iput-boolean v1, p0, Lcom/yandex/mobile/ads/impl/i5;->g:Z

    return-void
.end method
