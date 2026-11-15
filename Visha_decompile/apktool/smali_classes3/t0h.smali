.class public final Lt0h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt0h;->a:Lqyi;

    iput-object p2, p0, Lt0h;->b:Lqyi;

    iput-object p3, p0, Lt0h;->c:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Ls0h;
    .locals 3

    iget-object v0, p0, Lt0h;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lynh;

    iget-object v1, p0, Lt0h;->b:Lqyi;

    invoke-interface {v1}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgkg;

    iget-object p0, p0, Lt0h;->c:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsmg;

    new-instance v2, Ls0h;

    invoke-direct {v2, v0, v1, p0}, Ls0h;-><init>(Lynh;Lgkg;Lsmg;)V

    return-object v2
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lt0h;->a()Ls0h;

    move-result-object p0

    return-object p0
.end method
