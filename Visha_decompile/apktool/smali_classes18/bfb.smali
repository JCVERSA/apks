.class public final Lbfb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbfb$a;
    }
.end annotation


# static fields
.field public static final c:Lbfb$a;


# instance fields
.field public final b:S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbfb$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbfb$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbfb;->c:Lbfb$a;

    return-void
.end method

.method public synthetic constructor <init>(S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lbfb;->b:S

    return-void
.end method

.method public static final synthetic a(S)Lbfb;
    .locals 1

    new-instance v0, Lbfb;

    invoke-direct {v0, p0}, Lbfb;-><init>(S)V

    return-object v0
.end method

.method public static b(S)S
    .locals 0

    return p0
.end method

.method public static d(SLjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lbfb;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lbfb;

    invoke-virtual {p1}, Lbfb;->g()S

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static e(S)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Short;->hashCode(S)I

    move-result p0

    return p0
.end method

.method public static f(S)Ljava/lang/String;
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lbfb;

    invoke-virtual {p1}, Lbfb;->g()S

    move-result p1

    invoke-virtual {p0}, Lbfb;->g()S

    move-result p0

    const v0, 0xffff

    and-int/2addr p0, v0

    and-int/2addr p1, v0

    invoke-static {p0, p1}, Ly45;->l(II)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    iget-short p0, p0, Lbfb;->b:S

    invoke-static {p0, p1}, Lbfb;->d(SLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final synthetic g()S
    .locals 0

    iget-short p0, p0, Lbfb;->b:S

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-short p0, p0, Lbfb;->b:S

    invoke-static {p0}, Lbfb;->e(S)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-short p0, p0, Lbfb;->b:S

    invoke-static {p0}, Lbfb;->f(S)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
