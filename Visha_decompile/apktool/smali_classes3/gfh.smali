.class public final Lgfh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;

.field public final d:Lqyi;

.field public final e:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lgfh;->a:Lqyi;

    iput-object p3, p0, Lgfh;->b:Lqyi;

    iput-object p5, p0, Lgfh;->c:Lqyi;

    iput-object p6, p0, Lgfh;->d:Lqyi;

    iput-object p7, p0, Lgfh;->e:Lqyi;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/w3;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;IZZ)Lefh;
    .locals 9

    new-instance v8, Lefh;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lefh;-><init>(Lcom/google/android/gms/internal/ads/w3;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;IZZ)V

    return-object v8
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lhof;->a()Lcom/google/android/gms/internal/ads/w3;

    move-result-object v1

    iget-object v0, p0, Lgfh;->a:Lqyi;

    check-cast v0, Lskf;

    invoke-virtual {v0}, Lskf;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lgfh;->b:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v4

    iget-object v0, p0, Lgfh;->c:Lqyi;

    check-cast v0, Lqgh;

    invoke-virtual {v0}, Lqgh;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, p0, Lgfh;->d:Lqyi;

    check-cast v0, Lrgh;

    invoke-virtual {v0}, Lrgh;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object p0, p0, Lgfh;->e:Lqyi;

    check-cast p0, Ltgh;

    invoke-virtual {p0}, Ltgh;->a()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    new-instance p0, Lefh;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lefh;-><init>(Lcom/google/android/gms/internal/ads/w3;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;IZZ)V

    return-object p0
.end method
