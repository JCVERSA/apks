.class public final Ln5j;
.super Lkli;
.source "SourceFile"

# interfaces
.implements Lk0j;


# static fields
.field private static final zzb:Ln5j;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/Object;

.field private zzg:I

.field private zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln5j;

    invoke-direct {v0}, Ln5j;-><init>()V

    sput-object v0, Ln5j;->zzb:Ln5j;

    const-class v1, Ln5j;

    invoke-static {v1, v0}, Lkli;->f(Ljava/lang/Class;Lkli;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lkli;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ln5j;->zze:I

    return-void
.end method

.method public static bridge synthetic A()Ln5j;
    .locals 1

    sget-object v0, Ln5j;->zzb:Ln5j;

    return-object v0
.end method

.method public static synthetic C(Ln5j;Lcom/google/android/gms/internal/play_billing/zzjz;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzjz;->zza()I

    move-result p1

    iput p1, p0, Ln5j;->zzh:I

    iget p1, p0, Ln5j;->zzd:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Ln5j;->zzd:I

    return-void
.end method

.method public static synthetic D(Ln5j;Lm7j;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Ln5j;->zzf:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Ln5j;->zze:I

    return-void
.end method

.method public static synthetic E(Ln5j;Lw7j;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Ln5j;->zzf:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, p0, Ln5j;->zze:I

    return-void
.end method

.method public static synthetic F(Ln5j;Lp9j;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Ln5j;->zzf:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, p0, Ln5j;->zze:I

    return-void
.end method

.method public static synthetic y(Ln5j;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Ln5j;->zzg:I

    iget p1, p0, Ln5j;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Ln5j;->zzd:I

    return-void
.end method

.method public static z()Lj5j;
    .locals 1

    sget-object v0, Ln5j;->zzb:Ln5j;

    invoke-virtual {v0}, Lkli;->o()Lfhi;

    move-result-object v0

    check-cast v0, Lj5j;

    return-object v0
.end method


# virtual methods
.method public final B()Lw7j;
    .locals 2

    iget v0, p0, Ln5j;->zze:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Ln5j;->zzf:Ljava/lang/Object;

    check-cast p0, Lw7j;

    return-object p0

    :cond_0
    invoke-static {}, Lw7j;->z()Lw7j;

    move-result-object p0

    return-object p0
.end method

.method public final l(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

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

    sget-object p0, Ln5j;->zzb:Ln5j;

    return-object p0

    :cond_0
    throw p2

    :cond_1
    new-instance p0, Lj5j;

    invoke-direct {p0, p2}, Lj5j;-><init>(Ll5j;)V

    return-object p0

    :cond_2
    new-instance p0, Ln5j;

    invoke-direct {p0}, Ln5j;-><init>()V

    return-object p0

    :cond_3
    sget-object v4, Lh5j;->a:Lcoi;

    const-string v8, "zzh"

    sget-object v9, Ld6j;->a:Lcoi;

    const-string v0, "zzf"

    const-string v1, "zze"

    const-string v2, "zzd"

    const-string v3, "zzg"

    const-class v5, Lm7j;

    const-class v6, Lp9j;

    const-class v7, Lw7j;

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ln5j;->zzb:Ln5j;

    const-string p2, "\u0004\u0005\u0001\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u180c\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005\u180c\u0001"

    invoke-static {p1, p2, p0}, Lkli;->w(Lg0j;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
