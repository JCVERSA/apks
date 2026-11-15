.class public final Lpig;
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

.field public final i:Lqyi;

.field public final j:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpig;->a:Lqyi;

    iput-object p2, p0, Lpig;->b:Lqyi;

    iput-object p3, p0, Lpig;->c:Lqyi;

    iput-object p4, p0, Lpig;->d:Lqyi;

    iput-object p5, p0, Lpig;->e:Lqyi;

    iput-object p6, p0, Lpig;->f:Lqyi;

    iput-object p7, p0, Lpig;->g:Lqyi;

    iput-object p8, p0, Lpig;->h:Lqyi;

    iput-object p9, p0, Lpig;->i:Lqyi;

    iput-object p10, p0, Lpig;->j:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lpig;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lizf;

    iget-object v0, p0, Lpig;->b:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lu0g;

    iget-object v0, p0, Lpig;->c:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lh1g;

    iget-object v0, p0, Lpig;->d:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lw1g;

    iget-object v0, p0, Lpig;->e:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lr4g;

    iget-object v0, p0, Lpig;->f:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lr8g;

    iget-object v0, p0, Lpig;->g:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lsmg;

    iget-object v0, p0, Lpig;->h:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lwth;

    iget-object v0, p0, Lpig;->i:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ldwg;

    iget-object p0, p0, Lpig;->j:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v11, p0

    check-cast v11, Lwpf;

    new-instance p0, Lmig;

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lmig;-><init>(Lizf;Lu0g;Lh1g;Lw1g;Lr4g;Lr8g;Lsmg;Lwth;Ldwg;Lwpf;)V

    return-object p0
.end method
