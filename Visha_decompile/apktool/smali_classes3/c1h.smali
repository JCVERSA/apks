.class public final Lc1h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lb1h;

.field public final b:Lqyi;

.field public final c:Lqyi;

.field public final d:Lqyi;

.field public final e:Lqyi;


# direct methods
.method public constructor <init>(Lb1h;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc1h;->a:Lb1h;

    iput-object p2, p0, Lc1h;->b:Lqyi;

    iput-object p3, p0, Lc1h;->c:Lqyi;

    iput-object p4, p0, Lc1h;->d:Lqyi;

    iput-object p5, p0, Lc1h;->e:Lqyi;

    return-void
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lc1h;->b:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfy0;

    iget-object v1, p0, Lc1h;->c:Lqyi;

    check-cast v1, Lt0h;

    invoke-virtual {v1}, Lt0h;->a()Ls0h;

    move-result-object v1

    iget-object v2, p0, Lc1h;->d:Lqyi;

    invoke-interface {v2}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loxg;

    iget-object v3, p0, Lc1h;->e:Lqyi;

    invoke-interface {v3}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lwth;

    iget-object p0, p0, Lc1h;->a:Lb1h;

    invoke-virtual {p0, v0, v1, v2, v3}, Lb1h;->a(Lfy0;Ls0h;Loxg;Lwth;)Lq0h;

    move-result-object p0

    return-object p0
.end method
