.class public final Lq3h;
.super Lkli;
.source "SourceFile"

# interfaces
.implements Lk0j;


# static fields
.field private static final zzb:Lq3h;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Lwog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lq3h;

    invoke-direct {v0}, Lq3h;-><init>()V

    sput-object v0, Lq3h;->zzb:Lq3h;

    const-class v1, Lq3h;

    invoke-static {v1, v0}, Lkli;->f(Ljava/lang/Class;Lkli;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkli;-><init>()V

    return-void
.end method

.method public static A([B)Lq3h;
    .locals 1

    sget-object v0, Lq3h;->zzb:Lq3h;

    invoke-static {v0, p0}, Lkli;->s(Lkli;[B)Lkli;

    move-result-object p0

    check-cast p0, Lq3h;

    return-object p0
.end method

.method public static bridge synthetic z()Lq3h;
    .locals 1

    sget-object v0, Lq3h;->zzb:Lq3h;

    return-object v0
.end method


# virtual methods
.method public final B()Z
    .locals 0

    iget p0, p0, Lq3h;->zzd:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
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

    sget-object p0, Lq3h;->zzb:Lq3h;

    return-object p0

    :cond_0
    throw p2

    :cond_1
    new-instance p0, Lu1h;

    invoke-direct {p0, p2}, Lu1h;-><init>(Lt2h;)V

    return-object p0

    :cond_2
    new-instance p0, Lq3h;

    invoke-direct {p0}, Lq3h;-><init>()V

    return-object p0

    :cond_3
    const-string p0, "zze"

    const-string p1, "zzf"

    const-string p2, "zzd"

    filled-new-array {p2, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lq3h;->zzb:Lq3h;

    const-string p2, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1009\u0001"

    invoke-static {p1, p2, p0}, Lkli;->w(Lg0j;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final y()Lwog;
    .locals 0

    iget-object p0, p0, Lq3h;->zzf:Lwog;

    if-nez p0, :cond_0

    invoke-static {}, Lwog;->z()Lwog;

    move-result-object p0

    :cond_0
    return-object p0
.end method
