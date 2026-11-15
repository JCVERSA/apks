.class public final Lg2h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;

.field public final d:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg2h;->a:Lqyi;

    iput-object p2, p0, Lg2h;->b:Lqyi;

    iput-object p3, p0, Lg2h;->c:Lqyi;

    iput-object p4, p0, Lg2h;->d:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Lf2h;
    .locals 4

    iget-object v0, p0, Lg2h;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llrh;

    iget-object v1, p0, Lg2h;->b:Lqyi;

    invoke-interface {v1}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg8i;

    iget-object v2, p0, Lg2h;->c:Lqyi;

    invoke-interface {v2}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmxg;

    iget-object p0, p0, Lg2h;->d:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpxg;

    new-instance v3, Lf2h;

    invoke-direct {v3, v0, v1, v2, p0}, Lf2h;-><init>(Llrh;Lg8i;Lmxg;Lpxg;)V

    return-object v3
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lg2h;->a()Lf2h;

    move-result-object p0

    return-object p0
.end method
