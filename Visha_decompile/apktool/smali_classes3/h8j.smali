.class public final Lh8j;
.super Lkli;
.source "SourceFile"

# interfaces
.implements Lk0j;


# static fields
.field private static final zzb:Lh8j;


# instance fields
.field private zzd:I

.field private zze:Lnpi;

.field private zzf:I

.field private zzg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lh8j;

    invoke-direct {v0}, Lh8j;-><init>()V

    sput-object v0, Lh8j;->zzb:Lh8j;

    const-class v1, Lh8j;

    invoke-static {v1, v0}, Lkli;->f(Ljava/lang/Class;Lkli;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lkli;-><init>()V

    invoke-static {}, Lkli;->u()Lnpi;

    move-result-object v0

    iput-object v0, p0, Lh8j;->zze:Lnpi;

    const-string v0, ""

    iput-object v0, p0, Lh8j;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic y()Lh8j;
    .locals 1

    sget-object v0, Lh8j;->zzb:Lh8j;

    return-object v0
.end method


# virtual methods
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

    sget-object p0, Lh8j;->zzb:Lh8j;

    return-object p0

    :cond_0
    throw p2

    :cond_1
    new-instance p0, Le8j;

    invoke-direct {p0, p2}, Le8j;-><init>(Lg8j;)V

    return-object p0

    :cond_2
    new-instance p0, Lh8j;

    invoke-direct {p0}, Lh8j;-><init>()V

    return-object p0

    :cond_3
    const-string p0, "zzf"

    const-string p1, "zzg"

    const-string p2, "zzd"

    const-string p3, "zze"

    filled-new-array {p2, p3, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lh8j;->zzb:Lh8j;

    const-string p2, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u001a\u0002\u1004\u0000\u0003\u1008\u0001"

    invoke-static {p1, p2, p0}, Lkli;->w(Lg0j;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
