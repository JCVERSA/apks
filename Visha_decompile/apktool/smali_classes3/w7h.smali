.class public final Lw7h;
.super Lkli;
.source "SourceFile"

# interfaces
.implements Lk0j;


# static fields
.field private static final zzb:Lw7h;


# instance fields
.field private zzd:Lnpi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lw7h;

    invoke-direct {v0}, Lw7h;-><init>()V

    sput-object v0, Lw7h;->zzb:Lw7h;

    const-class v1, Lw7h;

    invoke-static {v1, v0}, Lkli;->f(Ljava/lang/Class;Lkli;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lkli;-><init>()V

    invoke-static {}, Lkli;->u()Lnpi;

    move-result-object v0

    iput-object v0, p0, Lw7h;->zzd:Lnpi;

    return-void
.end method

.method public static synthetic A(Lw7h;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lw7h;->zzd:Lnpi;

    invoke-interface {v0}, Lnpi;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v1

    invoke-interface {v0, v1}, Lnpi;->d(I)Lnpi;

    move-result-object v0

    iput-object v0, p0, Lw7h;->zzd:Lnpi;

    :cond_0
    iget-object p0, p0, Lw7h;->zzd:Lnpi;

    invoke-static {p1, p0}, Lplh;->d(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static y()Lt6h;
    .locals 1

    sget-object v0, Lw7h;->zzb:Lw7h;

    invoke-virtual {v0}, Lkli;->o()Lfhi;

    move-result-object v0

    check-cast v0, Lt6h;

    return-object v0
.end method

.method public static bridge synthetic z()Lw7h;
    .locals 1

    sget-object v0, Lw7h;->zzb:Lw7h;

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

    sget-object p0, Lw7h;->zzb:Lw7h;

    return-object p0

    :cond_0
    throw p2

    :cond_1
    new-instance p0, Lt6h;

    invoke-direct {p0, p2}, Lt6h;-><init>(Lx8h;)V

    return-object p0

    :cond_2
    new-instance p0, Lw7h;

    invoke-direct {p0}, Lw7h;-><init>()V

    return-object p0

    :cond_3
    const-string p0, "zzd"

    const-class p1, Lr5h;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lw7h;->zzb:Lw7h;

    const-string p2, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    invoke-static {p1, p2, p0}, Lkli;->w(Lg0j;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
