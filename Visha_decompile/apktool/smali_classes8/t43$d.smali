.class public Lt43$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt43;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:I

.field public b:Lv43;

.field public c:Lc53;

.field public final synthetic d:Lt43;


# direct methods
.method public constructor <init>(Lt43;ILv43;Lc53;)V
    .locals 0

    iput-object p1, p0, Lt43$d;->d:Lt43;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lt43$d;->a:I

    iput-object p3, p0, Lt43$d;->b:Lv43;

    iput-object p4, p0, Lt43$d;->c:Lc53;

    return-void
.end method


# virtual methods
.method public a()Lt43;
    .locals 2

    iget-object v0, p0, Lt43$d;->d:Lt43;

    iget v1, p0, Lt43$d;->a:I

    invoke-virtual {v0, v1}, Lt43;->A(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lt43$d;->d:Lt43;

    invoke-virtual {v0}, Lt43;->d()Lt43;

    move-result-object v0

    iget-object v1, p0, Lt43$d;->d:Lt43;

    if-eq v0, v1, :cond_0

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lt43$d;->a:I

    iput v1, v0, Lt43;->f:I

    iget-object v1, p0, Lt43$d;->b:Lv43;

    iput-object v1, v0, Lt43;->g:Lv43;

    iget-object p0, p0, Lt43$d;->c:Lc53;

    iput-object p0, v0, Lt43;->h:Lc53;

    monitor-exit v0

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "implementation returned current curve"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "unsupported coordinate system"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Lv43;)Lt43$d;
    .locals 0

    iput-object p1, p0, Lt43$d;->b:Lv43;

    return-object p0
.end method
