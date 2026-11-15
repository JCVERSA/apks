.class public final synthetic Lxc/g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lxc/k;

.field public final synthetic b:Lcom/google/firebase/perf/v1/i;

.field public final synthetic c:Lcom/google/firebase/perf/v1/ApplicationProcessState;


# direct methods
.method public synthetic constructor <init>(Lxc/k;Lcom/google/firebase/perf/v1/i;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lxc/g;->a:Lxc/k;

    .line 5
    .line 6
    iput-object p2, p0, Lxc/g;->b:Lcom/google/firebase/perf/v1/i;

    .line 7
    .line 8
    iput-object p3, p0, Lxc/g;->c:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lxc/g;->a:Lxc/k;

    .line 2
    .line 3
    iget-object v1, p0, Lxc/g;->b:Lcom/google/firebase/perf/v1/i;

    .line 4
    .line 5
    iget-object v2, p0, Lxc/g;->c:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lxc/k;->c(Lxc/k;Lcom/google/firebase/perf/v1/i;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
