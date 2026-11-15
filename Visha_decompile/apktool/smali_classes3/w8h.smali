.class public final Lw8h;
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

    iput-object p1, p0, Lw8h;->a:Lqyi;

    iput-object p2, p0, Lw8h;->b:Lqyi;

    iput-object p4, p0, Lw8h;->c:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lw8h;->a:Lqyi;

    check-cast v0, Li5h;

    invoke-virtual {v0}, Li5h;->a()Lg5h;

    move-result-object v2

    iget-object v0, p0, Lw8h;->b:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lfy0;

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v6

    iget-object p0, p0, Lw8h;->c:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lsmg;

    new-instance p0, Lk8h;

    const-wide/32 v3, 0x7fffffff

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lk8h;-><init>(Leeh;JLfy0;Ljava/util/concurrent/Executor;Lsmg;)V

    return-object p0
.end method
