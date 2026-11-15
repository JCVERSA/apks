.class public final Lqte;
.super Ltte;
.source "SourceFile"


# static fields
.field public static volatile i:Ljava/lang/Long;

.field public static final j:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lqte;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/e0;Ljava/lang/String;Ljava/lang/String;Looe;II)V
    .locals 7

    const-string v3, "EIfBdErCKLHua1LnSPtD4OKhBX6Yh9pp3IQrjV6gKSc="

    const/16 v6, 0x21

    const-string v2, "y9sVnCEW90f5Vx2HqIuVcdDKh+hI2qRq1sCpyHGv3MKSudlm5MGW5X5BN8/9lVwY"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Ltte;-><init>(Lcom/google/android/gms/internal/ads/e0;Ljava/lang/String;Ljava/lang/String;Looe;II)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    sget-object v0, Lqte;->i:Ljava/lang/Long;

    if-nez v0, :cond_1

    sget-object v0, Lqte;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lqte;->i:Ljava/lang/Long;

    if-nez v1, :cond_0

    iget-object v1, p0, Ltte;->f:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    sput-object v1, Lqte;->i:Ljava/lang/Long;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    iget-object p0, p0, Ltte;->e:Looe;

    monitor-enter p0

    :try_start_1
    sget-object v0, Lqte;->i:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Looe;->P(J)Looe;

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method
