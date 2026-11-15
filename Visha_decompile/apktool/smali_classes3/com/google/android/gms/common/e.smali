.class public abstract Lcom/google/android/gms/common/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/common/zzm;

.field public static final b:Lcom/google/android/gms/common/zzm;

.field public static final c:Lcom/google/android/gms/common/zzm;

.field public static final d:Lcom/google/android/gms/common/zzm;

.field public static final e:Lcom/google/android/gms/common/zzm;

.field public static final f:Lcom/google/android/gms/common/zzm;

.field public static final g:Ljava/lang/Object;

.field public static h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/zzd;

    const-string v1, "0\u0082\u0005\u00c80\u0082\u0003\u00b0\u00a0\u0003\u0002\u0001\u0002\u0002\u0014\u007f\u00a2f\u00fa\u00a7p\u0085xb\u00b1"

    invoke-static {v1}, Lcom/google/android/gms/common/zzj;->zzf(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/zzd;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/common/e;->a:Lcom/google/android/gms/common/zzm;

    new-instance v0, Lcom/google/android/gms/common/zze;

    const-string v1, "0\u0082\u0006\u00040\u0082\u0003\u00ec\u00a0\u0003\u0002\u0001\u0002\u0002\u0014Q\u00d5\u00db\u0004\u00f7X\u00e7B\u0086<"

    invoke-static {v1}, Lcom/google/android/gms/common/zzj;->zzf(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/zze;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/common/e;->b:Lcom/google/android/gms/common/zzm;

    new-instance v0, Lcom/google/android/gms/common/zzf;

    const-string v1, "0\u0082\u0005\u00c80\u0082\u0003\u00b0\u00a0\u0003\u0002\u0001\u0002\u0002\u0014\u0010\u008ae\u0008s\u00f9/\u008eQ\u00ed"

    invoke-static {v1}, Lcom/google/android/gms/common/zzj;->zzf(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/zzf;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/common/e;->c:Lcom/google/android/gms/common/zzm;

    new-instance v0, Lcom/google/android/gms/common/zzg;

    const-string v1, "0\u0082\u0006\u00040\u0082\u0003\u00ec\u00a0\u0003\u0002\u0001\u0002\u0002\u0014\u0003\u00a3\u00b2\u00ad\u00d7\u00e1r\u00cak\u00ec"

    invoke-static {v1}, Lcom/google/android/gms/common/zzj;->zzf(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/zzg;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/common/e;->d:Lcom/google/android/gms/common/zzm;

    new-instance v0, Lcom/google/android/gms/common/zzh;

    const-string v1, "0\u0082\u0004C0\u0082\u0003+\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00c2\u00e0\u0087FdJ0\u008d0"

    invoke-static {v1}, Lcom/google/android/gms/common/zzj;->zzf(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/zzh;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/common/e;->e:Lcom/google/android/gms/common/zzm;

    new-instance v0, Lcom/google/android/gms/common/zzi;

    const-string v1, "0\u0082\u0004\u00a80\u0082\u0003\u0090\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00d5\u0085\u00b8l}\u00d3N\u00f50"

    invoke-static {v1}, Lcom/google/android/gms/common/zzj;->zzf(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/zzi;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/common/e;->f:Lcom/google/android/gms/common/zzm;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/e;->g:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/google/android/gms/common/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/e;->h:Landroid/content/Context;

    if-nez v1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/e;->h:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    const-string p0, "GoogleCertificates"

    const-string v1, "GoogleCertificates has been initialized already"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
