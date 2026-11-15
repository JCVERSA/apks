.class public final Llhg;
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

.field public final h:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llhg;->a:Lqyi;

    iput-object p2, p0, Llhg;->b:Lqyi;

    iput-object p3, p0, Llhg;->c:Lqyi;

    iput-object p4, p0, Llhg;->d:Lqyi;

    iput-object p5, p0, Llhg;->e:Lqyi;

    iput-object p6, p0, Llhg;->f:Lqyi;

    iput-object p7, p0, Llhg;->g:Lqyi;

    iput-object p8, p0, Llhg;->h:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Llhg;->a:Lqyi;

    check-cast v0, Lzyf;

    invoke-virtual {v0}, Lzyf;->a()Lenh;

    move-result-object v2

    iget-object v0, p0, Llhg;->b:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Llhg;->c:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lujg;

    iget-object v0, p0, Llhg;->d:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/Context;

    iget-object v0, p0, Llhg;->e:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lsmg;

    iget-object v0, p0, Llhg;->f:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lwth;

    iget-object v0, p0, Llhg;->g:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ldwg;

    iget-object p0, p0, Llhg;->h:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v9, p0

    check-cast v9, Lnig;

    new-instance p0, Ljhg;

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Ljhg;-><init>(Lenh;Ljava/util/concurrent/Executor;Lujg;Landroid/content/Context;Lsmg;Lwth;Ldwg;Lnig;)V

    return-object p0
.end method
