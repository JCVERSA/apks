.class Landroidx/work/impl/utils/StatusRunnable$1;
.super Landroidx/work/impl/utils/StatusRunnable;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/utils/StatusRunnable;->forStringIds(Landroidx/work/impl/d0;Ljava/util/List;)Landroidx/work/impl/utils/StatusRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/work/impl/utils/StatusRunnable<",
        "Ljava/util/List<",
        "Landroidx/work/WorkInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$ids:Ljava/util/List;

.field final synthetic val$workManager:Landroidx/work/impl/d0;


# direct methods
.method constructor <init>(Landroidx/work/impl/d0;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/work/impl/utils/StatusRunnable$1;->val$workManager:Landroidx/work/impl/d0;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/work/impl/utils/StatusRunnable$1;->val$ids:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/work/impl/utils/StatusRunnable;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic runInternal()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/work/impl/utils/StatusRunnable$1;->runInternal()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public runInternal()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/work/WorkInfo;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Landroidx/work/impl/utils/StatusRunnable$1;->val$workManager:Landroidx/work/impl/d0;

    invoke-virtual {v0}, Landroidx/work/impl/d0;->t()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->n0()Lj4/v;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/impl/utils/StatusRunnable$1;->val$ids:Ljava/util/List;

    invoke-interface {v0, v1}, Lj4/v;->D(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 4
    sget-object v1, Lj4/u;->w:Ll/a;

    invoke-interface {v1, v0}, Ll/a;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
