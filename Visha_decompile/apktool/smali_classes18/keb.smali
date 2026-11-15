.class public final Lkeb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkeb$a;
    }
.end annotation


# static fields
.field public static final c:Lkeb$a;


# instance fields
.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkeb$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkeb$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkeb;->c:Lkeb$a;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkeb;->b:I

    return-void
.end method

.method public static final synthetic a(I)Lkeb;
    .locals 1

    new-instance v0, Lkeb;

    invoke-direct {v0, p0}, Lkeb;-><init>(I)V

    return-object v0
.end method

.method public static b(I)I
    .locals 0

    return p0
.end method

.method public static d(ILjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lkeb;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lkeb;

    invoke-virtual {p1}, Lkeb;->g()I

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static e(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public static f(I)Ljava/lang/String;
    .locals 4

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lkeb;

    invoke-virtual {p1}, Lkeb;->g()I

    move-result p1

    invoke-virtual {p0}, Lkeb;->g()I

    move-result p0

    invoke-static {p0, p1}, Ljgb;->a(II)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lkeb;->b:I

    invoke-static {p0, p1}, Lkeb;->d(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final synthetic g()I
    .locals 0

    iget p0, p0, Lkeb;->b:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lkeb;->b:I

    invoke-static {p0}, Lkeb;->e(I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lkeb;->b:I

    invoke-static {p0}, Lkeb;->f(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
