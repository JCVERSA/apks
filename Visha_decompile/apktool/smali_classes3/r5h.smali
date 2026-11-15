.class public final Lr5h;
.super Lkli;
.source "SourceFile"

# interfaces
.implements Lk0j;


# static fields
.field private static final zzb:Lr5h;


# instance fields
.field private zzd:I

.field private zze:Llgh;

.field private zzf:Llgh;

.field private zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr5h;

    invoke-direct {v0}, Lr5h;-><init>()V

    sput-object v0, Lr5h;->zzb:Lr5h;

    const-class v1, Lr5h;

    invoke-static {v1, v0}, Lkli;->f(Ljava/lang/Class;Lkli;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkli;-><init>()V

    return-void
.end method

.method public static synthetic A(Lr5h;Llgh;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lr5h;->zze:Llgh;

    iget p1, p0, Lr5h;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lr5h;->zzd:I

    return-void
.end method

.method public static synthetic B(Lr5h;Llgh;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lr5h;->zzf:Llgh;

    iget p1, p0, Lr5h;->zzd:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lr5h;->zzd:I

    return-void
.end method

.method public static synthetic C(Lr5h;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lr5h;->zzg:I

    iget p1, p0, Lr5h;->zzd:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lr5h;->zzd:I

    return-void
.end method

.method public static y()Ls4h;
    .locals 1

    sget-object v0, Lr5h;->zzb:Lr5h;

    invoke-virtual {v0}, Lkli;->o()Lfhi;

    move-result-object v0

    check-cast v0, Ls4h;

    return-object v0
.end method

.method public static bridge synthetic z()Lr5h;
    .locals 1

    sget-object v0, Lr5h;->zzb:Lr5h;

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

    sget-object p0, Lr5h;->zzb:Lr5h;

    return-object p0

    :cond_0
    throw p2

    :cond_1
    new-instance p0, Ls4h;

    invoke-direct {p0, p2}, Ls4h;-><init>(Lx8h;)V

    return-object p0

    :cond_2
    new-instance p0, Lr5h;

    invoke-direct {p0}, Lr5h;-><init>()V

    return-object p0

    :cond_3
    const-string p0, "zzg"

    invoke-static {}, Lijh;->a()Lcoi;

    move-result-object p1

    const-string p2, "zzd"

    const-string p3, "zze"

    const-string v0, "zzf"

    filled-new-array {p2, p3, v0, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lr5h;->zzb:Lr5h;

    const-string p2, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u180c\u0002"

    invoke-static {p1, p2, p0}, Lkli;->w(Lg0j;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
