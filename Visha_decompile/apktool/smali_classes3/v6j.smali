.class public final Lv6j;
.super Lkli;
.source "SourceFile"

# interfaces
.implements Lk0j;


# static fields
.field private static final zzb:Lv6j;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:I

.field private zzi:J

.field private zzj:J

.field private zzk:Z

.field private zzl:I

.field private zzm:I

.field private zzn:J

.field private zzo:Ljava/lang/String;

.field private zzp:Ljava/lang/String;

.field private zzq:Ljava/lang/String;

.field private zzr:Ljava/lang/String;

.field private zzs:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lv6j;

    invoke-direct {v0}, Lv6j;-><init>()V

    sput-object v0, Lv6j;->zzb:Lv6j;

    const-class v1, Lv6j;

    invoke-static {v1, v0}, Lkli;->f(Ljava/lang/Class;Lkli;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lkli;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lv6j;->zze:Ljava/lang/String;

    iput-object v0, p0, Lv6j;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lv6j;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lv6j;->zzo:Ljava/lang/String;

    iput-object v0, p0, Lv6j;->zzp:Ljava/lang/String;

    iput-object v0, p0, Lv6j;->zzq:Ljava/lang/String;

    iput-object v0, p0, Lv6j;->zzr:Ljava/lang/String;

    return-void
.end method

.method public static synthetic A(Lv6j;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lv6j;->zzd:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lv6j;->zzd:I

    iput-object p1, p0, Lv6j;->zzo:Ljava/lang/String;

    return-void
.end method

.method public static synthetic B(Lv6j;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lv6j;->zzd:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lv6j;->zzd:I

    iput-object p1, p0, Lv6j;->zzr:Ljava/lang/String;

    return-void
.end method

.method public static synthetic C(Lv6j;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lv6j;->zzd:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lv6j;->zzd:I

    iput-object p1, p0, Lv6j;->zzq:Ljava/lang/String;

    return-void
.end method

.method public static synthetic D(Lv6j;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lv6j;->zzd:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lv6j;->zzd:I

    iput-object p1, p0, Lv6j;->zzp:Ljava/lang/String;

    return-void
.end method

.method public static synthetic E(Lv6j;I)V
    .locals 1

    iget v0, p0, Lv6j;->zzd:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lv6j;->zzd:I

    iput p1, p0, Lv6j;->zzs:I

    return-void
.end method

.method public static synthetic F(Lv6j;Z)V
    .locals 1

    iget v0, p0, Lv6j;->zzd:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lv6j;->zzd:I

    iput-boolean p1, p0, Lv6j;->zzk:Z

    return-void
.end method

.method public static synthetic G(Lv6j;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lv6j;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lv6j;->zzd:I

    iput-object p1, p0, Lv6j;->zze:Ljava/lang/String;

    return-void
.end method

.method public static synthetic H(Lv6j;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lv6j;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lv6j;->zzd:I

    iput-object p1, p0, Lv6j;->zzf:Ljava/lang/String;

    return-void
.end method

.method public static I()Lr6j;
    .locals 1

    sget-object v0, Lv6j;->zzb:Lv6j;

    invoke-virtual {v0}, Lkli;->o()Lfhi;

    move-result-object v0

    check-cast v0, Lr6j;

    return-object v0
.end method

.method public static bridge synthetic J()Lv6j;
    .locals 1

    sget-object v0, Lv6j;->zzb:Lv6j;

    return-object v0
.end method

.method public static synthetic K(Lv6j;I)V
    .locals 1

    iget v0, p0, Lv6j;->zzd:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lv6j;->zzd:I

    iput p1, p0, Lv6j;->zzl:I

    return-void
.end method

.method public static synthetic L(Lv6j;I)V
    .locals 1

    iget v0, p0, Lv6j;->zzd:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lv6j;->zzd:I

    iput p1, p0, Lv6j;->zzm:I

    return-void
.end method

.method public static synthetic M(Lv6j;I)V
    .locals 1

    iget v0, p0, Lv6j;->zzd:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lv6j;->zzd:I

    iput p1, p0, Lv6j;->zzh:I

    return-void
.end method

.method public static synthetic N(Lv6j;J)V
    .locals 1

    iget v0, p0, Lv6j;->zzd:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lv6j;->zzd:I

    iput-wide p1, p0, Lv6j;->zzi:J

    return-void
.end method

.method public static synthetic O(Lv6j;J)V
    .locals 1

    iget v0, p0, Lv6j;->zzd:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lv6j;->zzd:I

    iput-wide p1, p0, Lv6j;->zzj:J

    return-void
.end method

.method public static synthetic y(Lv6j;J)V
    .locals 0

    iget p1, p0, Lv6j;->zzd:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lv6j;->zzd:I

    const-wide/32 p1, 0x373637b7

    iput-wide p1, p0, Lv6j;->zzn:J

    return-void
.end method

.method public static synthetic z(Lv6j;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lv6j;->zzd:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lv6j;->zzd:I

    iput-object p1, p0, Lv6j;->zzg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final l(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    add-int/lit8 v0, p1, -0x1

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    sget-object v0, Lv6j;->zzb:Lv6j;

    return-object v0

    :cond_0
    throw v2

    :cond_1
    new-instance v0, Lr6j;

    invoke-direct {v0, v2}, Lr6j;-><init>(Lu6j;)V

    return-object v0

    :cond_2
    new-instance v0, Lv6j;

    invoke-direct {v0}, Lv6j;-><init>()V

    return-object v0

    :cond_3
    const-string v15, "zzr"

    const-string v16, "zzs"

    const-string v1, "zzd"

    const-string v2, "zze"

    const-string v3, "zzg"

    const-string v4, "zzh"

    const-string v5, "zzi"

    const-string v6, "zzf"

    const-string v7, "zzj"

    const-string v8, "zzk"

    const-string v9, "zzl"

    const-string v10, "zzm"

    const-string v11, "zzn"

    const-string v12, "zzo"

    const-string v13, "zzp"

    const-string v14, "zzq"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lv6j;->zzb:Lv6j;

    const-string v2, "\u0004\u000f\u0000\u0001\u0001\u000f\u000f\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0002\u0003\u1004\u0003\u0004\u1002\u0004\u0005\u1008\u0001\u0006\u1002\u0005\u0007\u1007\u0006\u0008\u1004\u0007\t\u1004\u0008\n\u1002\t\u000b\u1008\n\u000c\u1008\u000b\r\u1008\u000c\u000e\u1008\r\u000f\u1004\u000e"

    invoke-static {v1, v2, v0}, Lkli;->w(Lg0j;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method
