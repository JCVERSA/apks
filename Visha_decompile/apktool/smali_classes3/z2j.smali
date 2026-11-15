.class public final Lz2j;
.super Lkli;
.source "SourceFile"

# interfaces
.implements Lk0j;


# static fields
.field private static final zzb:Lz2j;


# instance fields
.field private zzd:Lcom/google/android/gms/internal/play_billing/zzhm;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz2j;

    invoke-direct {v0}, Lz2j;-><init>()V

    sput-object v0, Lz2j;->zzb:Lz2j;

    const-class v1, Lz2j;

    invoke-static {v1, v0}, Lkli;->f(Ljava/lang/Class;Lkli;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lkli;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhm;->zza()Lcom/google/android/gms/internal/play_billing/zzhm;

    move-result-object v0

    iput-object v0, p0, Lz2j;->zzd:Lcom/google/android/gms/internal/play_billing/zzhm;

    return-void
.end method

.method public static synthetic A(Lz2j;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lz2j;->zzd:Lcom/google/android/gms/internal/play_billing/zzhm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzhm;->zze()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2j;->zzd:Lcom/google/android/gms/internal/play_billing/zzhm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzhm;->zzb()Lcom/google/android/gms/internal/play_billing/zzhm;

    move-result-object v0

    iput-object v0, p0, Lz2j;->zzd:Lcom/google/android/gms/internal/play_billing/zzhm;

    :cond_0
    iget-object p0, p0, Lz2j;->zzd:Lcom/google/android/gms/internal/play_billing/zzhm;

    return-object p0
.end method

.method public static y()Lq2j;
    .locals 1

    sget-object v0, Lz2j;->zzb:Lz2j;

    invoke-virtual {v0}, Lkli;->o()Lfhi;

    move-result-object v0

    check-cast v0, Lq2j;

    return-object v0
.end method

.method public static bridge synthetic z()Lz2j;
    .locals 1

    sget-object v0, Lz2j;->zzb:Lz2j;

    return-object v0
.end method


# virtual methods
.method public final l(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_4

    const/4 p0, 0x2

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    const/4 p2, 0x0

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-ne p1, p0, :cond_0

    sget-object p0, Lz2j;->zzb:Lz2j;

    return-object p0

    :cond_0
    throw p2

    :cond_1
    new-instance p0, Lq2j;

    invoke-direct {p0, p2}, Lq2j;-><init>(Lw2j;)V

    return-object p0

    :cond_2
    new-instance p0, Lz2j;

    invoke-direct {p0}, Lz2j;-><init>()V

    return-object p0

    :cond_3
    const-string p0, "zzd"

    sget-object p1, Lt2j;->a:Lrzi;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz2j;->zzb:Lz2j;

    new-instance p2, Lr1j;

    const-string p3, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012"

    invoke-direct {p2, p1, p3, p0}, Lr1j;-><init>(Lg0j;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
