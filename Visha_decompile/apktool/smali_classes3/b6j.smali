.class public final Lb6j;
.super Lkli;
.source "SourceFile"

# interfaces
.implements Lk0j;


# static fields
.field private static final zzb:Lb6j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb6j;

    invoke-direct {v0}, Lb6j;-><init>()V

    sput-object v0, Lb6j;->zzb:Lb6j;

    const-class v1, Lb6j;

    invoke-static {v1, v0}, Lkli;->f(Ljava/lang/Class;Lkli;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkli;-><init>()V

    return-void
.end method

.method public static bridge synthetic y()Lb6j;
    .locals 1

    sget-object v0, Lb6j;->zzb:Lb6j;

    return-object v0
.end method

.method public static z()Lb6j;
    .locals 1

    sget-object v0, Lb6j;->zzb:Lb6j;

    return-object v0
.end method


# virtual methods
.method public final l(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_4

    const/4 p0, 0x2

    const/4 p2, 0x0

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-ne p1, p0, :cond_0

    sget-object p0, Lb6j;->zzb:Lb6j;

    return-object p0

    :cond_0
    throw p2

    :cond_1
    new-instance p0, Lx5j;

    invoke-direct {p0, p2}, Lx5j;-><init>(Lz5j;)V

    return-object p0

    :cond_2
    new-instance p0, Lb6j;

    invoke-direct {p0}, Lb6j;-><init>()V

    return-object p0

    :cond_3
    sget-object p0, Lb6j;->zzb:Lb6j;

    const-string p1, "\u0004\u0000"

    invoke-static {p0, p1, p2}, Lkli;->w(Lg0j;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
