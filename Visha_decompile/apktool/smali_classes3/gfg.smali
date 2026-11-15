.class public final Lgfg;
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

    iput-object p1, p0, Lgfg;->a:Lqyi;

    iput-object p2, p0, Lgfg;->b:Lqyi;

    iput-object p3, p0, Lgfg;->c:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lgfg;->a:Lqyi;

    check-cast v0, Laeg;

    invoke-virtual {v0}, Laeg;->a()Lddg;

    move-result-object v0

    iget-object v1, p0, Lgfg;->b:Lqyi;

    check-cast v1, Lkcg;

    invoke-virtual {v1}, Lkcg;->a()Lidg;

    move-result-object v1

    iget-object p0, p0, Lgfg;->c:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v2

    new-instance v3, Lffg;

    invoke-direct {v3, v0, v1, p0, v2}, Lffg;-><init>(Lddg;Lidg;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    return-object v3
.end method
