.class Landroidx/work/impl/WorkManagerImpl$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroidx/work/impl/d0;

.field final synthetic val$future:Landroidx/work/impl/utils/futures/a;

.field final synthetic val$preferenceUtils:Landroidx/work/impl/utils/o;


# direct methods
.method constructor <init>(Landroidx/work/impl/d0;Landroidx/work/impl/utils/futures/a;Landroidx/work/impl/utils/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/work/impl/WorkManagerImpl$1;->this$0:Landroidx/work/impl/d0;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/work/impl/WorkManagerImpl$1;->val$future:Landroidx/work/impl/utils/futures/a;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/work/impl/WorkManagerImpl$1;->val$preferenceUtils:Landroidx/work/impl/utils/o;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkManagerImpl$1;->val$future:Landroidx/work/impl/utils/futures/a;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/impl/WorkManagerImpl$1;->val$preferenceUtils:Landroidx/work/impl/utils/o;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/work/impl/utils/o;->a()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/futures/a;->t(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    iget-object v1, p0, Landroidx/work/impl/WorkManagerImpl$1;->val$future:Landroidx/work/impl/utils/futures/a;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroidx/work/impl/utils/futures/a;->u(Ljava/lang/Throwable;)Z

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method
