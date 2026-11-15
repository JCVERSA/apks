.class Landroidx/work/impl/utils/StatusRunnable$2;
.super Landroidx/work/impl/utils/StatusRunnable;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/utils/StatusRunnable;->forUUID(Landroidx/work/impl/d0;Ljava/util/UUID;)Landroidx/work/impl/utils/StatusRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/work/impl/utils/StatusRunnable<",
        "Landroidx/work/WorkInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$id:Ljava/util/UUID;

.field final synthetic val$workManager:Landroidx/work/impl/d0;


# direct methods
.method constructor <init>(Landroidx/work/impl/d0;Ljava/util/UUID;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/work/impl/utils/StatusRunnable$2;->val$workManager:Landroidx/work/impl/d0;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/work/impl/utils/StatusRunnable$2;->val$id:Ljava/util/UUID;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/work/impl/utils/StatusRunnable;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method runInternal()Landroidx/work/WorkInfo;
    .locals 2

    .line 2
    iget-object v0, p0, Landroidx/work/impl/utils/StatusRunnable$2;->val$workManager:Landroidx/work/impl/d0;

    invoke-virtual {v0}, Landroidx/work/impl/d0;->t()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->n0()Lj4/v;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/impl/utils/StatusRunnable$2;->val$id:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lj4/v;->h(Ljava/lang/String;)Lj4/u$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lj4/u$c;->a()Landroidx/work/WorkInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method bridge synthetic runInternal()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/work/impl/utils/StatusRunnable$2;->runInternal()Landroidx/work/WorkInfo;

    move-result-object v0

    return-object v0
.end method
