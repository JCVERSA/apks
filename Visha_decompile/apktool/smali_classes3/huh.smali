.class public final Lhuh;
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

    iput-object p1, p0, Lhuh;->a:Lqyi;

    iput-object p2, p0, Lhuh;->b:Lqyi;

    iput-object p3, p0, Lhuh;->c:Lqyi;

    iput-object p4, p0, Lhuh;->d:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lhuh;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkuh;

    iget-object v1, p0, Lhuh;->b:Lqyi;

    check-cast v1, Lduh;

    invoke-virtual {v1}, Lduh;->a()Lbuh;

    move-result-object v1

    iget-object v2, p0, Lhuh;->c:Lqyi;

    check-cast v2, Lskf;

    invoke-virtual {v2}, Lskf;->a()Landroid/content/Context;

    move-result-object v2

    iget-object p0, p0, Lhuh;->d:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfy0;

    new-instance v3, Lguh;

    invoke-direct {v3, v0, v1, v2, p0}, Lguh;-><init>(Lkuh;Lbuh;Landroid/content/Context;Lfy0;)V

    return-object v3
.end method
