.class public final Lkph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7i;


# instance fields
.field public final synthetic a:Lnph;

.field public final synthetic b:Loph;


# direct methods
.method public constructor <init>(Loph;Lnph;)V
    .locals 0

    iput-object p2, p0, Lkph;->a:Lnph;

    iput-object p1, p0, Lkph;->b:Loph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lkph;->b:Loph;

    monitor-enter p0

    const/4 p1, 0x0

    :try_start_0
    invoke-static {p0, p1}, Loph;->d(Loph;Lwph;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lkph;->b:Loph;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Loph;->d(Loph;Lwph;)V

    invoke-static {p1}, Loph;->b(Loph;)Ljava/util/ArrayDeque;

    move-result-object v0

    iget-object p0, p0, Lkph;->a:Lnph;

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    invoke-static {p1}, Loph;->g(Loph;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Loph;->e(Loph;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
