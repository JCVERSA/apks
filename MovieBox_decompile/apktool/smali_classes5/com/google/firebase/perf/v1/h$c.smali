.class public final Lcom/google/firebase/perf/v1/h$c;
.super Lcom/google/protobuf/GeneratedMessageLite$b;
.source "source.java"

# interfaces
.implements Lcom/google/protobuf/t0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/v1/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/google/firebase/perf/v1/h;->d()Lcom/google/firebase/perf/v1/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$b;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/perf/v1/h$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/h$c;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/google/firebase/perf/v1/SessionVerbosity;)Lcom/google/firebase/perf/v1/h$c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/google/firebase/perf/v1/h;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/h;->h(Lcom/google/firebase/perf/v1/h;Lcom/google/firebase/perf/v1/SessionVerbosity;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/google/firebase/perf/v1/h$c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/google/firebase/perf/v1/h;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/h;->f(Lcom/google/firebase/perf/v1/h;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
