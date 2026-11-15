.class public final Lv4j;
.super Lkli;
.source "SourceFile"

# interfaces
.implements Lk0j;


# static fields
.field private static final zzb:Lv4j;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lv4j;

    invoke-direct {v0}, Lv4j;-><init>()V

    sput-object v0, Lv4j;->zzb:Lv4j;

    const-class v1, Lv4j;

    invoke-static {v1, v0}, Lkli;->f(Ljava/lang/Class;Lkli;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lkli;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lv4j;->zzd:I

    return-void
.end method

.method public static A()Lv4j;
    .locals 1

    sget-object v0, Lv4j;->zzb:Lv4j;

    return-object v0
.end method

.method public static synthetic B(Lv4j;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x3

    iput v0, p0, Lv4j;->zzd:I

    iput-object p1, p0, Lv4j;->zze:Ljava/lang/Object;

    return-void
.end method

.method public static y()Lo4j;
    .locals 1

    sget-object v0, Lv4j;->zzb:Lv4j;

    invoke-virtual {v0}, Lkli;->o()Lfhi;

    move-result-object v0

    check-cast v0, Lo4j;

    return-object v0
.end method

.method public static bridge synthetic z()Lv4j;
    .locals 1

    sget-object v0, Lv4j;->zzb:Lv4j;

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

    sget-object p0, Lv4j;->zzb:Lv4j;

    return-object p0

    :cond_0
    throw p2

    :cond_1
    new-instance p0, Lo4j;

    invoke-direct {p0, p2}, Lo4j;-><init>(Lr4j;)V

    return-object p0

    :cond_2
    new-instance p0, Lv4j;

    invoke-direct {p0}, Lv4j;-><init>()V

    return-object p0

    :cond_3
    const-class p0, Lz2j;

    const-class p1, Lhzi;

    const-string p2, "zze"

    const-string p3, "zzd"

    filled-new-array {p2, p3, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lv4j;->zzb:Lv4j;

    new-instance p2, Lr1j;

    const-string p3, "\u0000\u0006\u0001\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001?\u0000\u00023\u0000\u0003\u023b\u0000\u0004:\u0000\u0005<\u0000\u0006<\u0000"

    invoke-direct {p2, p1, p3, p0}, Lr1j;-><init>(Lg0j;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
