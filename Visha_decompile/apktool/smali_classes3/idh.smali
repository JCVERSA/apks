.class public final Lidh;
.super Lkli;
.source "SourceFile"

# interfaces
.implements Lk0j;


# static fields
.field private static final zzb:Lidh;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:I

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lidh;

    invoke-direct {v0}, Lidh;-><init>()V

    sput-object v0, Lidh;->zzb:Lidh;

    const-class v1, Lidh;

    invoke-static {v1, v0}, Lkli;->f(Ljava/lang/Class;Lkli;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lkli;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lidh;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lidh;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lidh;->zzi:Ljava/lang/String;

    iput-object v0, p0, Lidh;->zzj:Ljava/lang/String;

    return-void
.end method

.method public static synthetic A(Lidh;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lidh;->zzd:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lidh;->zzd:I

    iput-object p1, p0, Lidh;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static synthetic B(Lidh;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lidh;->zzd:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lidh;->zzd:I

    iput-object p1, p0, Lidh;->zzi:Ljava/lang/String;

    return-void
.end method

.method public static synthetic C(Lidh;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lidh;->zzd:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lidh;->zzd:I

    iput-object p1, p0, Lidh;->zzj:Ljava/lang/String;

    return-void
.end method

.method public static synthetic D(Lidh;Ljava/lang/String;)V
    .locals 0

    iget p1, p0, Lidh;->zzd:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lidh;->zzd:I

    const-string p1, "9.1.0"

    iput-object p1, p0, Lidh;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static synthetic E(Lidh;I)V
    .locals 0

    iget p1, p0, Lidh;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lidh;->zzd:I

    const/16 p1, 0x18

    iput p1, p0, Lidh;->zze:I

    return-void
.end method

.method public static y()Lech;
    .locals 1

    sget-object v0, Lidh;->zzb:Lidh;

    invoke-virtual {v0}, Lkli;->o()Lfhi;

    move-result-object v0

    check-cast v0, Lech;

    return-object v0
.end method

.method public static bridge synthetic z()Lidh;
    .locals 1

    sget-object v0, Lidh;->zzb:Lidh;

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

    sget-object p0, Lidh;->zzb:Lidh;

    return-object p0

    :cond_0
    throw p2

    :cond_1
    new-instance p0, Lech;

    invoke-direct {p0, p2}, Lech;-><init>(Lieh;)V

    return-object p0

    :cond_2
    new-instance p0, Lidh;

    invoke-direct {p0}, Lidh;-><init>()V

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

    sget-object p1, Lidh;->zzb:Lidh;

    const-string p2, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1004\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1008\u0004\u0006\u1008\u0005"

    invoke-static {p1, p2, p0}, Lkli;->w(Lg0j;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
