.class public final Lcom/google/firebase/perf/v1/NetworkRequestMetric$b;
.super Lcom/google/protobuf/GeneratedMessageLite$b;
.source "source.java"

# interfaces
.implements Lcom/google/protobuf/t0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/v1/NetworkRequestMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->d()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$b;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/perf/v1/NetworkRequestMetric$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$b;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Iterable;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->q(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Ljava/lang/Iterable;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public j()Lcom/google/firebase/perf/v1/NetworkRequestMetric$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->l(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public k()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->H()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->J()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->L()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->P()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public o(J)Lcom/google/firebase/perf/v1/NetworkRequestMetric$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 7
    .line 8
    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->m(Lcom/google/firebase/perf/v1/NetworkRequestMetric;J)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public p(Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->r(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public q(I)Lcom/google/firebase/perf/v1/NetworkRequestMetric$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->j(Lcom/google/firebase/perf/v1/NetworkRequestMetric;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public r(Lcom/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->h(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Lcom/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public s(J)Lcom/google/firebase/perf/v1/NetworkRequestMetric$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 7
    .line 8
    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->s(Lcom/google/firebase/perf/v1/NetworkRequestMetric;J)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public t(Ljava/lang/String;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->k(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public u(J)Lcom/google/firebase/perf/v1/NetworkRequestMetric$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 7
    .line 8
    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->t(Lcom/google/firebase/perf/v1/NetworkRequestMetric;J)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public v(J)Lcom/google/firebase/perf/v1/NetworkRequestMetric$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 7
    .line 8
    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->n(Lcom/google/firebase/perf/v1/NetworkRequestMetric;J)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public w(J)Lcom/google/firebase/perf/v1/NetworkRequestMetric$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 7
    .line 8
    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->p(Lcom/google/firebase/perf/v1/NetworkRequestMetric;J)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public x(J)Lcom/google/firebase/perf/v1/NetworkRequestMetric$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 7
    .line 8
    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->o(Lcom/google/firebase/perf/v1/NetworkRequestMetric;J)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public y(Ljava/lang/String;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->f(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
