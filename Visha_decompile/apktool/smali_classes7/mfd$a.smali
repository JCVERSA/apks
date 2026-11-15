.class public Lmfd$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmfd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lmfd;


# direct methods
.method public constructor <init>(Lmfd;)V
    .locals 0

    iput-object p1, p0, Lmfd$a;->b:Lmfd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 3

    iget-object v0, p0, Lmfd$a;->b:Lmfd;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lmfd$a;->b:Lmfd;

    invoke-static {v1}, Lmfd;->g(Lmfd;)Ljava/io/Writer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmfd$a;->b:Lmfd;

    invoke-static {v1}, Lmfd;->F(Lmfd;)V

    iget-object v1, p0, Lmfd$a;->b:Lmfd;

    invoke-static {v1}, Lmfd;->O(Lmfd;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmfd$a;->b:Lmfd;

    invoke-static {v1}, Lmfd;->Q(Lmfd;)V

    iget-object p0, p0, Lmfd$a;->b:Lmfd;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lmfd;->a(Lmfd;I)I

    :cond_1
    monitor-exit v0

    return-object v2

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lmfd$a;->a()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
