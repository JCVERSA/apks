.class public final Lp9j;
.super Lkli;
.source "SourceFile"

# interfaces
.implements Lk0j;


# static fields
.field private static final zzb:Lp9j;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Z

.field private zzg:J

.field private zzh:Z

.field private zzi:I

.field private zzj:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lp9j;

    invoke-direct {v0}, Lp9j;-><init>()V

    sput-object v0, Lp9j;->zzb:Lp9j;

    const-class v1, Lp9j;

    invoke-static {v1, v0}, Lkli;->f(Ljava/lang/Class;Lkli;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkli;-><init>()V

    return-void
.end method

.method public static synthetic A(Lp9j;Z)V
    .locals 1

    iget v0, p0, Lp9j;->zzd:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lp9j;->zzd:I

    iput-boolean p1, p0, Lp9j;->zzh:Z

    return-void
.end method

.method public static synthetic B(Lp9j;I)V
    .locals 1

    iget v0, p0, Lp9j;->zzd:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lp9j;->zzd:I

    iput p1, p0, Lp9j;->zzi:I

    return-void
.end method

.method public static synthetic C(Lp9j;J)V
    .locals 1

    iget v0, p0, Lp9j;->zzd:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lp9j;->zzd:I

    iput-wide p1, p0, Lp9j;->zzg:J

    return-void
.end method

.method public static synthetic D(Lp9j;I)V
    .locals 1

    iget v0, p0, Lp9j;->zzd:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lp9j;->zzd:I

    iput p1, p0, Lp9j;->zzj:I

    return-void
.end method

.method public static synthetic E(Lp9j;Z)V
    .locals 0

    iget p1, p0, Lp9j;->zzd:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lp9j;->zzd:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lp9j;->zzf:Z

    return-void
.end method

.method public static y()Ll9j;
    .locals 1

    sget-object v0, Lp9j;->zzb:Lp9j;

    invoke-virtual {v0}, Lkli;->o()Lfhi;

    move-result-object v0

    check-cast v0, Ll9j;

    return-object v0
.end method

.method public static bridge synthetic z()Lp9j;
    .locals 1

    sget-object v0, Lp9j;->zzb:Lp9j;

    return-object v0
.end method


# virtual methods
.method public final l(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

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

    sget-object p0, Lp9j;->zzb:Lp9j;

    return-object p0

    :cond_0
    throw p2

    :cond_1
    new-instance p0, Ll9j;

    invoke-direct {p0, p2}, Ll9j;-><init>(Ln9j;)V

    return-object p0

    :cond_2
    new-instance p0, Lp9j;

    invoke-direct {p0}, Lp9j;-><init>()V

    return-object p0

    :cond_3
    const-string v5, "zzi"

    const-string v6, "zzj"

    const-string v0, "zzd"

    const-string v1, "zze"

    const-string v2, "zzf"

    const-string v3, "zzg"

    const-string v4, "zzh"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lp9j;->zzb:Lp9j;

    const-string p2, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1007\u0001\u0003\u1002\u0002\u0004\u1007\u0003\u0005\u1004\u0004\u0006\u1004\u0005"

    invoke-static {p1, p2, p0}, Lkli;->w(Lg0j;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
