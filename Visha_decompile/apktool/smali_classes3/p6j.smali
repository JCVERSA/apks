.class public final Lp6j;
.super Lkli;
.source "SourceFile"

# interfaces
.implements Lk0j;


# static fields
.field private static final zzb:Lp6j;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:I

.field private zzg:Ltoi;

.field private zzh:Lnpi;

.field private zzi:Lv5j;

.field private zzj:Z

.field private zzk:Z

.field private zzl:Lu8j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lp6j;

    invoke-direct {v0}, Lp6j;-><init>()V

    sput-object v0, Lp6j;->zzb:Lp6j;

    const-class v1, Lp6j;

    invoke-static {v1, v0}, Lkli;->f(Ljava/lang/Class;Lkli;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lkli;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lp6j;->zze:Ljava/lang/String;

    invoke-static {}, Lkli;->t()Ltoi;

    move-result-object v0

    iput-object v0, p0, Lp6j;->zzg:Ltoi;

    invoke-static {}, Lkli;->u()Lnpi;

    move-result-object v0

    iput-object v0, p0, Lp6j;->zzh:Lnpi;

    return-void
.end method

.method public static synthetic A(Lp6j;Lcom/google/android/gms/internal/play_billing/zzjz;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lp6j;->zzg:Ltoi;

    invoke-interface {v0}, Lnpi;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v1

    invoke-interface {v0, v1}, Ltoi;->zzg(I)Ltoi;

    move-result-object v0

    iput-object v0, p0, Lp6j;->zzg:Ltoi;

    :cond_0
    iget-object p0, p0, Lp6j;->zzg:Ltoi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzjz;->zza()I

    move-result p1

    invoke-interface {p0, p1}, Ltoi;->zzh(I)V

    return-void
.end method

.method public static synthetic B(Lp6j;Lv5j;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lp6j;->zzi:Lv5j;

    iget p1, p0, Lp6j;->zzd:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lp6j;->zzd:I

    return-void
.end method

.method public static synthetic C(Lp6j;Ljava/lang/String;)V
    .locals 0

    iget p1, p0, Lp6j;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lp6j;->zzd:I

    const-string p1, "ProxyBillingBroadcastReceiver"

    iput-object p1, p0, Lp6j;->zze:Ljava/lang/String;

    return-void
.end method

.method public static synthetic D(Lp6j;Lu8j;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lp6j;->zzl:Lu8j;

    iget p1, p0, Lp6j;->zzd:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lp6j;->zzd:I

    return-void
.end method

.method public static synthetic E(Lp6j;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lp6j;->zzf:I

    iget p1, p0, Lp6j;->zzd:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lp6j;->zzd:I

    return-void
.end method

.method public static y()Lk6j;
    .locals 1

    sget-object v0, Lp6j;->zzb:Lp6j;

    invoke-virtual {v0}, Lkli;->o()Lfhi;

    move-result-object v0

    check-cast v0, Lk6j;

    return-object v0
.end method

.method public static bridge synthetic z()Lp6j;
    .locals 1

    sget-object v0, Lp6j;->zzb:Lp6j;

    return-object v0
.end method


# virtual methods
.method public final l(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

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

    sget-object p0, Lp6j;->zzb:Lp6j;

    return-object p0

    :cond_0
    throw p2

    :cond_1
    new-instance p0, Lk6j;

    invoke-direct {p0, p2}, Lk6j;-><init>(Lo6j;)V

    return-object p0

    :cond_2
    new-instance p0, Lp6j;

    invoke-direct {p0}, Lp6j;-><init>()V

    return-object p0

    :cond_3
    sget-object v3, Lm6j;->a:Lcoi;

    sget-object v5, Ld6j;->a:Lcoi;

    const-string v10, "zzk"

    const-string v11, "zzl"

    const-string v0, "zzd"

    const-string v1, "zze"

    const-string v2, "zzf"

    const-string v4, "zzg"

    const-string v6, "zzh"

    const-class v7, Lh8j;

    const-string v8, "zzi"

    const-string v9, "zzj"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lp6j;->zzb:Lp6j;

    const-string p2, "\u0004\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0002\u0000\u0001\u1008\u0000\u0002\u180c\u0001\u0003\u082c\u0004\u001b\u0005\u1009\u0002\u0006\u1007\u0003\u0007\u1007\u0004\u0008\u1009\u0005"

    invoke-static {p1, p2, p0}, Lkli;->w(Lg0j;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
