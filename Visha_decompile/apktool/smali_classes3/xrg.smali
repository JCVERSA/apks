.class public final Lxrg;
.super Lkli;
.source "SourceFile"

# interfaces
.implements Lk0j;


# static fields
.field private static final zzb:Lxrg;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lxrg;

    invoke-direct {v0}, Lxrg;-><init>()V

    sput-object v0, Lxrg;->zzb:Lxrg;

    const-class v1, Lxrg;

    invoke-static {v1, v0}, Lkli;->f(Ljava/lang/Class;Lkli;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lkli;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lxrg;->zzd:I

    return-void
.end method

.method public static bridge synthetic y()Lxrg;
    .locals 1

    sget-object v0, Lxrg;->zzb:Lxrg;

    return-object v0
.end method

.method public static z([B)Lxrg;
    .locals 1

    sget-object v0, Lxrg;->zzb:Lxrg;

    invoke-static {v0, p0}, Lkli;->s(Lkli;[B)Lkli;

    move-result-object p0

    check-cast p0, Lxrg;

    return-object p0
.end method


# virtual methods
.method public final A()Lw0h;
    .locals 2

    iget v0, p0, Lxrg;->zzd:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lxrg;->zze:Ljava/lang/Object;

    check-cast p0, Lw0h;

    return-object p0

    :cond_0
    invoke-static {}, Lw0h;->z()Lw0h;

    move-result-object p0

    return-object p0
.end method

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

    sget-object p0, Lxrg;->zzb:Lxrg;

    return-object p0

    :cond_0
    throw p2

    :cond_1
    new-instance p0, Lwpg;

    invoke-direct {p0, p2}, Lwpg;-><init>(Lvqg;)V

    return-object p0

    :cond_2
    new-instance p0, Lxrg;

    invoke-direct {p0}, Lxrg;-><init>()V

    return-object p0

    :cond_3
    const-string p0, "zzd"

    const-class p1, Lw0h;

    const-string p2, "zze"

    filled-new-array {p2, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lxrg;->zzb:Lxrg;

    const-string p2, "\u0004\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001;\u0000\u0002<\u0000"

    invoke-static {p1, p2, p0}, Lkli;->w(Lg0j;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
