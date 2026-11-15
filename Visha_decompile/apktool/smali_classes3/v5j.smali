.class public final Lv5j;
.super Lkli;
.source "SourceFile"

# interfaces
.implements Lk0j;


# static fields
.field private static final zzb:Lv5j;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:I

.field private zzh:Ljava/lang/String;

.field private zzi:I

.field private zzj:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lv5j;

    invoke-direct {v0}, Lv5j;-><init>()V

    sput-object v0, Lv5j;->zzb:Lv5j;

    const-class v1, Lv5j;

    invoke-static {v1, v0}, Lkli;->f(Ljava/lang/Class;Lkli;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lkli;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lv5j;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lv5j;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic A()Lv5j;
    .locals 1

    sget-object v0, Lv5j;->zzb:Lv5j;

    return-object v0
.end method

.method public static synthetic B(Lv5j;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lv5j;->zzd:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lv5j;->zzd:I

    iput-object p1, p0, Lv5j;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static synthetic C(Lv5j;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lv5j;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lv5j;->zzd:I

    iput-object p1, p0, Lv5j;->zzf:Ljava/lang/String;

    return-void
.end method

.method public static synthetic D(Lv5j;I)V
    .locals 1

    iget v0, p0, Lv5j;->zzd:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lv5j;->zzd:I

    iput p1, p0, Lv5j;->zzj:I

    return-void
.end method

.method public static synthetic E(Lv5j;I)V
    .locals 1

    iget v0, p0, Lv5j;->zzd:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lv5j;->zzd:I

    iput p1, p0, Lv5j;->zzi:I

    return-void
.end method

.method public static synthetic F(Lv5j;Lcom/google/android/gms/internal/play_billing/zzjs;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzjs;->zza()I

    move-result p1

    iput p1, p0, Lv5j;->zzg:I

    iget p1, p0, Lv5j;->zzd:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lv5j;->zzd:I

    return-void
.end method

.method public static synthetic y(Lv5j;I)V
    .locals 1

    iget v0, p0, Lv5j;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lv5j;->zzd:I

    iput p1, p0, Lv5j;->zze:I

    return-void
.end method

.method public static z()Lp5j;
    .locals 1

    sget-object v0, Lv5j;->zzb:Lv5j;

    invoke-virtual {v0}, Lkli;->o()Lfhi;

    move-result-object v0

    check-cast v0, Lp5j;

    return-object v0
.end method


# virtual methods
.method public final l(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

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

    sget-object p0, Lv5j;->zzb:Lv5j;

    return-object p0

    :cond_0
    throw p2

    :cond_1
    new-instance p0, Lp5j;

    invoke-direct {p0, p2}, Lp5j;-><init>(Lt5j;)V

    return-object p0

    :cond_2
    new-instance p0, Lv5j;

    invoke-direct {p0}, Lv5j;-><init>()V

    return-object p0

    :cond_3
    sget-object v4, Lr5j;->a:Lcoi;

    const-string v6, "zzi"

    const-string v7, "zzj"

    const-string v0, "zzd"

    const-string v1, "zze"

    const-string v2, "zzf"

    const-string v3, "zzg"

    const-string v5, "zzh"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lv5j;->zzb:Lv5j;

    const-string p2, "\u0004\u0006\u0000\u0001\u0001\u0008\u0006\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1008\u0001\u0004\u180c\u0002\u0005\u1008\u0003\u0007\u1004\u0004\u0008\u1004\u0005"

    invoke-static {p1, p2, p0}, Lkli;->w(Lg0j;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
