.class public final Lu8j;
.super Lkli;
.source "SourceFile"

# interfaces
.implements Lk0j;


# static fields
.field private static final zzb:Lu8j;


# instance fields
.field private zzd:I

.field private zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lu8j;

    invoke-direct {v0}, Lu8j;-><init>()V

    sput-object v0, Lu8j;->zzb:Lu8j;

    const-class v1, Lu8j;

    invoke-static {v1, v0}, Lkli;->f(Ljava/lang/Class;Lkli;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkli;-><init>()V

    return-void
.end method

.method public static synthetic A(Lu8j;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lu8j;->zze:I

    iget p1, p0, Lu8j;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lu8j;->zzd:I

    return-void
.end method

.method public static y()Lo8j;
    .locals 1

    sget-object v0, Lu8j;->zzb:Lu8j;

    invoke-virtual {v0}, Lkli;->o()Lfhi;

    move-result-object v0

    check-cast v0, Lo8j;

    return-object v0
.end method

.method public static bridge synthetic z()Lu8j;
    .locals 1

    sget-object v0, Lu8j;->zzb:Lu8j;

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

    sget-object p0, Lu8j;->zzb:Lu8j;

    return-object p0

    :cond_0
    throw p2

    :cond_1
    new-instance p0, Lo8j;

    invoke-direct {p0, p2}, Lo8j;-><init>(Ls8j;)V

    return-object p0

    :cond_2
    new-instance p0, Lu8j;

    invoke-direct {p0}, Lu8j;-><init>()V

    return-object p0

    :cond_3
    const-string p0, "zze"

    sget-object p1, Lq8j;->a:Lcoi;

    const-string p2, "zzd"

    filled-new-array {p2, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lu8j;->zzb:Lu8j;

    const-string p2, "\u0004\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u180c\u0000"

    invoke-static {p1, p2, p0}, Lkli;->w(Lg0j;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
