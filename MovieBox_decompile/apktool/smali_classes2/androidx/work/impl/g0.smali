.class public final synthetic Landroidx/work/impl/g0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/work/impl/d0;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroidx/work/impl/o;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Landroidx/work/r;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/d0;Ljava/lang/String;Landroidx/work/impl/o;Lkotlin/jvm/functions/Function0;Landroidx/work/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/g0;->a:Landroidx/work/impl/d0;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/work/impl/g0;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/work/impl/g0;->c:Landroidx/work/impl/o;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/work/impl/g0;->d:Lkotlin/jvm/functions/Function0;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/work/impl/g0;->e:Landroidx/work/r;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/work/impl/g0;->a:Landroidx/work/impl/d0;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/impl/g0;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/work/impl/g0;->c:Landroidx/work/impl/o;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/work/impl/g0;->d:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/work/impl/g0;->e:Landroidx/work/r;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Landroidx/work/impl/WorkerUpdater;->a(Landroidx/work/impl/d0;Ljava/lang/String;Landroidx/work/impl/o;Lkotlin/jvm/functions/Function0;Landroidx/work/r;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
