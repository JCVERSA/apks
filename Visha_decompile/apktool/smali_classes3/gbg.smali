.class public final Lgbg;
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


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgbg;->a:Lqyi;

    iput-object p2, p0, Lgbg;->b:Lqyi;

    iput-object p3, p0, Lgbg;->c:Lqyi;

    iput-object p4, p0, Lgbg;->d:Lqyi;

    iput-object p5, p0, Lgbg;->e:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lgbg;->a:Lqyi;

    check-cast v0, Lskf;

    invoke-virtual {v0}, Lskf;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lgbg;->b:Lqyi;

    check-cast v0, Lrag;

    invoke-virtual {v0}, Lrag;->a()Lejf;

    move-result-object v3

    iget-object v0, p0, Lgbg;->c:Lqyi;

    check-cast v0, Lquf;

    invoke-virtual {v0}, Lquf;->a()Lhmh;

    move-result-object v4

    iget-object v0, p0, Lgbg;->d:Lqyi;

    check-cast v0, Lklf;

    invoke-virtual {v0}, Lklf;->a()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v5

    iget-object p0, p0, Lgbg;->e:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Laxg;

    new-instance p0, Lfbg;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lfbg;-><init>(Landroid/content/Context;Lejf;Lhmh;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Laxg;)V

    return-object p0
.end method
