.class public final Liyg;
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

.field public final f:Lqyi;

.field public final g:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liyg;->a:Lqyi;

    iput-object p2, p0, Liyg;->b:Lqyi;

    iput-object p3, p0, Liyg;->c:Lqyi;

    iput-object p4, p0, Liyg;->d:Lqyi;

    iput-object p5, p0, Liyg;->e:Lqyi;

    iput-object p6, p0, Liyg;->f:Lqyi;

    iput-object p7, p0, Liyg;->g:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Lhyg;
    .locals 9

    iget-object v0, p0, Liyg;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Latf;

    iget-object v0, p0, Liyg;->b:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/Context;

    iget-object v0, p0, Liyg;->c:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Liyg;->d:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lujg;

    iget-object v0, p0, Liyg;->e:Lqyi;

    check-cast v0, Lzyf;

    invoke-virtual {v0}, Lzyf;->a()Lenh;

    move-result-object v6

    iget-object v0, p0, Liyg;->f:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lm2i;

    iget-object p0, p0, Liyg;->g:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Llmg;

    new-instance p0, Lhyg;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lhyg;-><init>(Latf;Landroid/content/Context;Ljava/util/concurrent/Executor;Lujg;Lenh;Lm2i;Llmg;)V

    return-object p0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Liyg;->a()Lhyg;

    move-result-object p0

    return-object p0
.end method
