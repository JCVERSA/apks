.class public final Lhzi;
.super Lkli;
.source "SourceFile"

# interfaces
.implements Lk0j;


# static fields
.field private static final zzb:Lhzi;


# instance fields
.field private zzd:Lnpi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lhzi;

    invoke-direct {v0}, Lhzi;-><init>()V

    sput-object v0, Lhzi;->zzb:Lhzi;

    const-class v1, Lhzi;

    invoke-static {v1, v0}, Lkli;->f(Ljava/lang/Class;Lkli;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lkli;-><init>()V

    invoke-static {}, Lf1j;->f()Lf1j;

    move-result-object v0

    iput-object v0, p0, Lhzi;->zzd:Lnpi;

    return-void
.end method

.method public static bridge synthetic y()Lhzi;
    .locals 1

    sget-object v0, Lhzi;->zzb:Lhzi;

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

    sget-object p0, Lhzi;->zzb:Lhzi;

    return-object p0

    :cond_0
    throw p2

    :cond_1
    new-instance p0, Lzyi;

    invoke-direct {p0, p2}, Lzyi;-><init>(Ldzi;)V

    return-object p0

    :cond_2
    new-instance p0, Lhzi;

    invoke-direct {p0}, Lhzi;-><init>()V

    return-object p0

    :cond_3
    const-string p0, "zzd"

    const-class p1, Lv4j;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lhzi;->zzb:Lhzi;

    new-instance p2, Lr1j;

    const-string p3, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    invoke-direct {p2, p1, p3, p0}, Lr1j;-><init>(Lg0j;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
