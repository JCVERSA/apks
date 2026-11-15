.class public final Lw7j;
.super Lkli;
.source "SourceFile"

# interfaces
.implements Lk0j;


# static fields
.field private static final zzb:Lw7j;


# instance fields
.field private zzd:I

.field private zze:Lnpi;

.field private zzf:Ljava/lang/String;

.field private zzg:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lw7j;

    invoke-direct {v0}, Lw7j;-><init>()V

    sput-object v0, Lw7j;->zzb:Lw7j;

    const-class v1, Lw7j;

    invoke-static {v1, v0}, Lkli;->f(Ljava/lang/Class;Lkli;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lkli;-><init>()V

    invoke-static {}, Lkli;->u()Lnpi;

    move-result-object v0

    iput-object v0, p0, Lw7j;->zze:Lnpi;

    const-string v0, ""

    iput-object v0, p0, Lw7j;->zzf:Ljava/lang/String;

    return-void
.end method

.method public static synthetic A(Lw7j;Z)V
    .locals 1

    iget v0, p0, Lw7j;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lw7j;->zzd:I

    iput-boolean p1, p0, Lw7j;->zzg:Z

    return-void
.end method

.method public static bridge synthetic y()Lw7j;
    .locals 1

    sget-object v0, Lw7j;->zzb:Lw7j;

    return-object v0
.end method

.method public static z()Lw7j;
    .locals 1

    sget-object v0, Lw7j;->zzb:Lw7j;

    return-object v0
.end method


# virtual methods
.method public final l(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

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

    sget-object p0, Lw7j;->zzb:Lw7j;

    return-object p0

    :cond_0
    throw p2

    :cond_1
    new-instance p0, Ln7j;

    invoke-direct {p0, p2}, Ln7j;-><init>(Lu7j;)V

    return-object p0

    :cond_2
    new-instance p0, Lw7j;

    invoke-direct {p0}, Lw7j;-><init>()V

    return-object p0

    :cond_3
    const-string p0, "zzf"

    const-string p1, "zzg"

    const-string p2, "zzd"

    const-string p3, "zze"

    const-class v0, Ls7j;

    filled-new-array {p2, p3, v0, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lw7j;->zzb:Lw7j;

    const-string p2, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u001b\u0002\u1008\u0000\u0003\u1007\u0001"

    invoke-static {p1, p2, p0}, Lkli;->w(Lg0j;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
