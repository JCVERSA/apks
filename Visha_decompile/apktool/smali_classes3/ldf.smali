.class public final Lldf;
.super Lsdf;
.source "SourceFile"


# instance fields
.field public final b:Lfy0;

.field public final c:Lqyi;

.field public final d:Lqyi;

.field public final e:Lqyi;

.field public final f:Lqyi;

.field public final g:Lqyi;

.field public final h:Lqyi;

.field public final i:Lqyi;

.field public final j:Lqyi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lfy0;Lcom/google/android/gms/ads/internal/util/zzg;Lrdf;)V
    .locals 1

    invoke-direct {p0}, Lsdf;-><init>()V

    iput-object p2, p0, Lldf;->b:Lfy0;

    invoke-static {p1}, Lgyi;->a(Ljava/lang/Object;)Lfyi;

    move-result-object p1

    iput-object p1, p0, Lldf;->c:Lqyi;

    invoke-static {p3}, Lgyi;->a(Ljava/lang/Object;)Lfyi;

    move-result-object p3

    iput-object p3, p0, Lldf;->d:Lqyi;

    new-instance v0, Lfdf;

    invoke-direct {v0, p1, p3}, Lfdf;-><init>(Lqyi;Lqyi;)V

    invoke-static {v0}, Leyi;->b(Lqyi;)Lqyi;

    move-result-object v0

    iput-object v0, p0, Lldf;->e:Lqyi;

    invoke-static {p2}, Lgyi;->a(Ljava/lang/Object;)Lfyi;

    move-result-object p2

    iput-object p2, p0, Lldf;->f:Lqyi;

    invoke-static {p4}, Lgyi;->a(Ljava/lang/Object;)Lfyi;

    move-result-object p4

    iput-object p4, p0, Lldf;->g:Lqyi;

    new-instance v0, Lhdf;

    invoke-direct {v0, p2, p3, p4}, Lhdf;-><init>(Lqyi;Lqyi;Lqyi;)V

    invoke-static {v0}, Leyi;->b(Lqyi;)Lqyi;

    move-result-object p3

    iput-object p3, p0, Lldf;->h:Lqyi;

    new-instance p4, Ljdf;

    invoke-direct {p4, p2, p3}, Ljdf;-><init>(Lqyi;Lqyi;)V

    iput-object p4, p0, Lldf;->i:Lqyi;

    new-instance p2, Lcef;

    invoke-direct {p2, p1, p4}, Lcef;-><init>(Lqyi;Lqyi;)V

    invoke-static {p2}, Leyi;->b(Lqyi;)Lqyi;

    move-result-object p1

    iput-object p1, p0, Lldf;->j:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Lidf;
    .locals 2

    iget-object v0, p0, Lldf;->h:Lqyi;

    new-instance v1, Lidf;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgdf;

    iget-object p0, p0, Lldf;->b:Lfy0;

    invoke-direct {v1, p0, v0}, Lidf;-><init>(Lfy0;Lgdf;)V

    return-object v1
.end method
