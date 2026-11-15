.class public final Lcbh;
.super Lkli;
.source "SourceFile"

# interfaces
.implements Lk0j;


# static fields
.field private static final zzb:Lcbh;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcbh;

    invoke-direct {v0}, Lcbh;-><init>()V

    sput-object v0, Lcbh;->zzb:Lcbh;

    const-class v1, Lcbh;

    invoke-static {v1, v0}, Lkli;->f(Ljava/lang/Class;Lkli;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lkli;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcbh;->zzf:Ljava/lang/String;

    return-void
.end method

.method public static A([B)Lcbh;
    .locals 1

    sget-object v0, Lcbh;->zzb:Lcbh;

    invoke-static {v0, p0}, Lkli;->s(Lkli;[B)Lkli;

    move-result-object p0

    check-cast p0, Lcbh;

    return-object p0
.end method

.method public static bridge synthetic z()Lcbh;
    .locals 1

    sget-object v0, Lcbh;->zzb:Lcbh;

    return-object v0
.end method


# virtual methods
.method public final B()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcbh;->zzf:Ljava/lang/String;

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

    sget-object p0, Lcbh;->zzb:Lcbh;

    return-object p0

    :cond_0
    throw p2

    :cond_1
    new-instance p0, Laah;

    invoke-direct {p0, p2}, Laah;-><init>(Lieh;)V

    return-object p0

    :cond_2
    new-instance p0, Lcbh;

    invoke-direct {p0}, Lcbh;-><init>()V

    return-object p0

    :cond_3
    const-string p0, "zze"

    const-string p1, "zzf"

    const-string p2, "zzd"

    filled-new-array {p2, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcbh;->zzb:Lcbh;

    const-string p2, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1008\u0001"

    invoke-static {p1, p2, p0}, Lkli;->w(Lg0j;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final y()I
    .locals 0

    iget p0, p0, Lcbh;->zze:I

    return p0
.end method
