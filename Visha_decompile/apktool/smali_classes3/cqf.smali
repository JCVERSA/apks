.class public final Lcqf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnzf;


# instance fields
.field public final b:Lkmh;

.field public final c:Lvmh;

.field public final d:Lsth;

.field public final e:Lwth;


# direct methods
.method public constructor <init>(Lvmh;Lwth;Lsth;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcqf;->c:Lvmh;

    iput-object p2, p0, Lcqf;->e:Lwth;

    iput-object p3, p0, Lcqf;->d:Lsth;

    iget-object p1, p1, Lvmh;->b:Lumh;

    iget-object p1, p1, Lumh;->b:Lkmh;

    iput-object p1, p0, Lcqf;->b:Lkmh;

    return-void
.end method


# virtual methods
.method public final A(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 3

    iget-object p1, p0, Lcqf;->b:Lkmh;

    iget-object p1, p1, Lkmh;->a:Ljava/util/List;

    iget-object v0, p0, Lcqf;->d:Lsth;

    iget-object v1, p0, Lcqf;->c:Lvmh;

    iget-object p0, p0, Lcqf;->e:Lwth;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lsth;->d(Lvmh;Lhmh;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lwth;->e(Ljava/util/List;Lcom/google/android/gms/ads/internal/util/client/zzv;)V

    return-void
.end method
