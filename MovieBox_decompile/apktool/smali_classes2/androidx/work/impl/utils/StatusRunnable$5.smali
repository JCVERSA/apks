.class Landroidx/work/impl/utils/StatusRunnable$5;
.super Landroidx/work/impl/utils/StatusRunnable;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/utils/StatusRunnable;->forWorkQuerySpec(Landroidx/work/impl/d0;Landroidx/work/q;)Landroidx/work/impl/utils/StatusRunnable;
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
.field final synthetic val$querySpec:Landroidx/work/q;

.field final synthetic val$workManager:Landroidx/work/impl/d0;


# direct methods
.method constructor <init>(Landroidx/work/impl/d0;Landroidx/work/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/work/impl/utils/StatusRunnable$5;->val$workManager:Landroidx/work/impl/d0;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/work/impl/utils/StatusRunnable;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method bridge synthetic runInternal()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/work/impl/utils/StatusRunnable$5;->runInternal()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method runInternal()Ljava/util/List;
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
    iget-object v0, p0, Landroidx/work/impl/utils/StatusRunnable$5;->val$workManager:Landroidx/work/impl/d0;

    invoke-virtual {v0}, Landroidx/work/impl/d0;->t()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->j0()Lj4/g;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Landroidx/work/impl/utils/q;->a(Landroidx/work/q;)Lz3/g;

    move-result-object v1

    .line 5
    invoke-interface {v0, v1}, Lj4/g;->a(Lz3/g;)Ljava/util/List;

    move-result-object v0

    .line 6
    sget-object v1, Lj4/u;->w:Ll/a;

    invoke-interface {v1, v0}, Ll/a;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
