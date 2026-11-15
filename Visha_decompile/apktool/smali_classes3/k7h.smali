.class public final Lk7h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk7h;->a:Lqyi;

    iput-object p2, p0, Lk7h;->b:Lqyi;

    iput-object p3, p0, Lk7h;->c:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lk7h;->a:Lqyi;

    check-cast v0, Lskf;

    invoke-virtual {v0}, Lskf;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lk7h;->b:Lqyi;

    invoke-interface {v1}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqef;

    iget-object p0, p0, Lk7h;->c:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v2

    new-instance v3, Li7h;

    invoke-direct {v3, v0, v1, p0, v2}, Li7h;-><init>(Landroid/content/Context;Lqef;Ljava/util/concurrent/ScheduledExecutorService;Lg8i;)V

    return-object v3
.end method
