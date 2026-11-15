.class public final Lohg;
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

    iput-object p1, p0, Lohg;->a:Lqyi;

    iput-object p2, p0, Lohg;->b:Lqyi;

    iput-object p3, p0, Lohg;->c:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lohg;->a:Lqyi;

    check-cast v0, Lruf;

    invoke-virtual {v0}, Lruf;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lohg;->b:Lqyi;

    invoke-interface {v1}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzcg;

    iget-object p0, p0, Lohg;->c:Lqyi;

    check-cast p0, Laeg;

    invoke-virtual {p0}, Laeg;->a()Lddg;

    move-result-object p0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdly;

    invoke-direct {v2, v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzdly;-><init>(Ljava/lang/String;Lzcg;Lddg;)V

    return-object v2
.end method
