.class public final Lpse;
.super Ltte;
.source "SourceFile"


# instance fields
.field public final i:Landroid/app/Activity;

.field public final j:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/e0;Ljava/lang/String;Ljava/lang/String;Looe;IILandroid/view/View;Landroid/app/Activity;)V
    .locals 7

    const-string v3, "Xr6iV2TsXBCx3do6H/9RIpbcZekNyEQeKhEDMIoivd0="

    const/16 v6, 0x3e

    const-string v2, "pU4fz37mUnFskzkjpWeE6FeP4zxun0Vi/cHUa+ShQyzwB7kVjKkTqY+tD4Acjs+V"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Ltte;-><init>(Lcom/google/android/gms/internal/ads/e0;Ljava/lang/String;Ljava/lang/String;Looe;II)V

    iput-object p7, p0, Lpse;->j:Landroid/view/View;

    iput-object p8, p0, Lpse;->i:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lpse;->j:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcye;->P2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Ltte;->f:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lpse;->i:Landroid/app/Activity;

    filled-new-array {v0, v4, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v3, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iget-object p0, p0, Ltte;->e:Looe;

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Looe;->c0(J)Looe;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Looe;->e0(J)Looe;

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Looe;->d0(Ljava/lang/String;)Looe;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
