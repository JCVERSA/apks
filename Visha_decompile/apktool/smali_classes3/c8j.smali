.class public final Lc8j;
.super Lkli;
.source "SourceFile"

# interfaces
.implements Lk0j;


# static fields
.field private static final zzb:Lc8j;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/Object;

.field private zzg:Lv6j;

.field private zzh:Le7j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc8j;

    invoke-direct {v0}, Lc8j;-><init>()V

    sput-object v0, Lc8j;->zzb:Lc8j;

    const-class v1, Lc8j;

    invoke-static {v1, v0}, Lkli;->f(Ljava/lang/Class;Lkli;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lkli;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lc8j;->zze:I

    return-void
.end method

.method public static A()Ly7j;
    .locals 1

    sget-object v0, Lc8j;->zzb:Lc8j;

    invoke-virtual {v0}, Lkli;->o()Lfhi;

    move-result-object v0

    check-cast v0, Ly7j;

    return-object v0
.end method

.method public static bridge synthetic B()Lc8j;
    .locals 1

    sget-object v0, Lc8j;->zzb:Lc8j;

    return-object v0
.end method

.method public static synthetic C(Lc8j;Lf5j;)V
    .locals 0

    iput-object p1, p0, Lc8j;->zzf:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Lc8j;->zze:I

    return-void
.end method

.method public static synthetic D(Lc8j;Ln5j;)V
    .locals 0

    iput-object p1, p0, Lc8j;->zzf:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, p0, Lc8j;->zze:I

    return-void
.end method

.method public static synthetic E(Lc8j;Lb6j;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lc8j;->zzf:Ljava/lang/Object;

    const/4 p1, 0x7

    iput p1, p0, Lc8j;->zze:I

    return-void
.end method

.method public static synthetic F(Lc8j;Lp6j;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lc8j;->zzf:Ljava/lang/Object;

    const/4 p1, 0x5

    iput p1, p0, Lc8j;->zze:I

    return-void
.end method

.method public static synthetic G(Lc8j;Lv6j;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lc8j;->zzg:Lv6j;

    iget p1, p0, Lc8j;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lc8j;->zzd:I

    return-void
.end method

.method public static synthetic y(Lc8j;La9j;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lc8j;->zzf:Ljava/lang/Object;

    const/16 p1, 0x8

    iput p1, p0, Lc8j;->zze:I

    return-void
.end method

.method public static synthetic z(Lc8j;Li9j;)V
    .locals 0

    iput-object p1, p0, Lc8j;->zzf:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, p0, Lc8j;->zze:I

    return-void
.end method


# virtual methods
.method public final l(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

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

    sget-object p0, Lc8j;->zzb:Lc8j;

    return-object p0

    :cond_0
    throw p2

    :cond_1
    new-instance p0, Ly7j;

    invoke-direct {p0, p2}, Ly7j;-><init>(La8j;)V

    return-object p0

    :cond_2
    new-instance p0, Lc8j;

    invoke-direct {p0}, Lc8j;-><init>()V

    return-object p0

    :cond_3
    const-class v9, Lb6j;

    const-class v10, La9j;

    const-string v0, "zzf"

    const-string v1, "zze"

    const-string v2, "zzd"

    const-string v3, "zzg"

    const-class v4, Lf5j;

    const-class v5, Ln5j;

    const-class v6, Li9j;

    const-class v7, Lp6j;

    const-string v8, "zzh"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lc8j;->zzb:Lc8j;

    const-string p2, "\u0004\u0008\u0001\u0001\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u1009\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006\u1009\u0001\u0007<\u0000\u0008<\u0000"

    invoke-static {p1, p2, p0}, Lkli;->w(Lg0j;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
