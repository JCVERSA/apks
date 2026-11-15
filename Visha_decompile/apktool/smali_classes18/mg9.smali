.class public final Lmg9;
.super Lz3;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:Lwh1;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lz3;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmg9;->a:J

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-virtual {p0, p1}, Lmg9;->c(Lkotlinx/coroutines/flow/SharedFlowImpl;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)[Lwh1;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-virtual {p0, p1}, Lmg9;->d(Lkotlinx/coroutines/flow/SharedFlowImpl;)[Lwh1;

    move-result-object p0

    return-object p0
.end method

.method public c(Lkotlinx/coroutines/flow/SharedFlowImpl;)Z
    .locals 4

    iget-wide v0, p0, Lmg9;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->X()J

    move-result-wide v0

    iput-wide v0, p0, Lmg9;->a:J

    const/4 p0, 0x1

    return p0
.end method

.method public d(Lkotlinx/coroutines/flow/SharedFlowImpl;)[Lwh1;
    .locals 4

    iget-wide v0, p0, Lmg9;->a:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lmg9;->a:J

    const/4 v2, 0x0

    iput-object v2, p0, Lmg9;->b:Lwh1;

    invoke-virtual {p1, v0, v1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->W(J)[Lwh1;

    move-result-object p0

    return-object p0
.end method
