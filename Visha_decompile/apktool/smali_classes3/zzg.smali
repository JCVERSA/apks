.class public final Lzzg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7i;


# instance fields
.field public final synthetic a:Lhmh;

.field public final synthetic b:La0h;


# direct methods
.method public constructor <init>(La0h;Lhmh;)V
    .locals 0

    iput-object p2, p0, Lzzg;->a:Lhmh;

    iput-object p1, p0, Lzzg;->b:La0h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lzzg;->b:La0h;

    monitor-enter v0

    :try_start_0
    invoke-static {v0}, La0h;->a(La0h;)Lb0h;

    move-result-object v1

    iget-object p0, p0, Lzzg;->a:Lhmh;

    invoke-virtual {v1, p1, p0}, Lb0h;->b(Ljava/lang/Throwable;Lhmh;)V

    invoke-static {v0}, La0h;->a(La0h;)Lb0h;

    move-result-object p1

    invoke-virtual {p1}, Lb0h;->a()Lhmh;

    move-result-object p1

    iget-boolean p0, p0, Lhmh;->v0:Z

    if-eqz p0, :cond_0

    :goto_0
    if-eqz p1, :cond_1

    invoke-static {v0, p1}, La0h;->c(La0h;Lhmh;)V

    invoke-static {v0}, La0h;->a(La0h;)Lb0h;

    move-result-object p0

    invoke-virtual {p0}, Lb0h;->a()Lhmh;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {v0, p1}, La0h;->c(La0h;Lhmh;)V

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lzzg;->b:La0h;

    check-cast p1, Lr0h;

    monitor-enter v0

    :try_start_0
    invoke-static {v0}, La0h;->a(La0h;)Lb0h;

    move-result-object v1

    iget-object p0, p0, Lzzg;->a:Lhmh;

    invoke-virtual {v1, p1, p0}, Lb0h;->c(Lr0h;Lhmh;)V

    invoke-static {v0}, La0h;->a(La0h;)Lb0h;

    move-result-object p0

    invoke-virtual {p0}, Lb0h;->a()Lhmh;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {v0, p0}, La0h;->c(La0h;Lhmh;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
