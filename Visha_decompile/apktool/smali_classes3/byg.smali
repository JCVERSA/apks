.class public final Lbyg;
.super Lkli;
.source "SourceFile"

# interfaces
.implements Lk0j;


# static fields
.field private static final zzb:Lbyg;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbyg;

    invoke-direct {v0}, Lbyg;-><init>()V

    sput-object v0, Lbyg;->zzb:Lbyg;

    const-class v1, Lbyg;

    invoke-static {v1, v0}, Lkli;->f(Ljava/lang/Class;Lkli;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lkli;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lbyg;->zze:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic y()Lbyg;
    .locals 1

    sget-object v0, Lbyg;->zzb:Lbyg;

    return-object v0
.end method

.method public static z([B)Lbyg;
    .locals 1

    sget-object v0, Lbyg;->zzb:Lbyg;

    invoke-static {v0, p0}, Lkli;->s(Lkli;[B)Lkli;

    move-result-object p0

    check-cast p0, Lbyg;

    return-object p0
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lbyg;->zze:Ljava/lang/String;

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

    sget-object p0, Lbyg;->zzb:Lbyg;

    return-object p0

    :cond_0
    throw p2

    :cond_1
    new-instance p0, Llwg;

    invoke-direct {p0, p2}, Llwg;-><init>(Ldxg;)V

    return-object p0

    :cond_2
    new-instance p0, Lbyg;

    invoke-direct {p0}, Lbyg;-><init>()V

    return-object p0

    :cond_3
    const-string p0, "zzd"

    const-string p1, "zze"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lbyg;->zzb:Lbyg;

    const-string p2, "\u0004\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u1008\u0000"

    invoke-static {p1, p2, p0}, Lkli;->w(Lg0j;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
