.class public final Lzdb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzdb$a;
    }
.end annotation


# static fields
.field public static final c:Lzdb$a;


# instance fields
.field public final b:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lzdb$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lzdb$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lzdb;->c:Lzdb$a;

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lzdb;->b:B

    return-void
.end method

.method public static final synthetic a(B)Lzdb;
    .locals 1

    new-instance v0, Lzdb;

    invoke-direct {v0, p0}, Lzdb;-><init>(B)V

    return-object v0
.end method

.method public static b(B)B
    .locals 0

    return p0
.end method

.method public static d(BLjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lzdb;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lzdb;

    invoke-virtual {p1}, Lzdb;->g()B

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static e(B)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Byte;->hashCode(B)I

    move-result p0

    return p0
.end method

.method public static f(B)Ljava/lang/String;
    .locals 0

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lzdb;

    invoke-virtual {p1}, Lzdb;->g()B

    move-result p1

    invoke-virtual {p0}, Lzdb;->g()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    and-int/lit16 p1, p1, 0xff

    invoke-static {p0, p1}, Ly45;->l(II)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    iget-byte p0, p0, Lzdb;->b:B

    invoke-static {p0, p1}, Lzdb;->d(BLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final synthetic g()B
    .locals 0

    iget-byte p0, p0, Lzdb;->b:B

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-byte p0, p0, Lzdb;->b:B

    invoke-static {p0}, Lzdb;->e(B)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-byte p0, p0, Lzdb;->b:B

    invoke-static {p0}, Lzdb;->f(B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
