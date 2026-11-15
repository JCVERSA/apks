.class public final synthetic Landroidx/work/impl/utils/u;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/work/impl/utils/WorkForegroundRunnable;

.field public final synthetic b:Landroidx/work/impl/utils/futures/a;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/utils/WorkForegroundRunnable;Landroidx/work/impl/utils/futures/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/utils/u;->a:Landroidx/work/impl/utils/WorkForegroundRunnable;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/work/impl/utils/u;->b:Landroidx/work/impl/utils/futures/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/u;->a:Landroidx/work/impl/utils/WorkForegroundRunnable;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/impl/utils/u;->b:Landroidx/work/impl/utils/futures/a;

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/work/impl/utils/WorkForegroundRunnable;->a(Landroidx/work/impl/utils/WorkForegroundRunnable;Landroidx/work/impl/utils/futures/a;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
