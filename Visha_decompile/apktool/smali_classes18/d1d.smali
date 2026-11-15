.class public abstract Ld1d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:I

.field public static final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lxe1;->e0:Lfreemarker/template/Version;

    invoke-virtual {v0}, Lfreemarker/template/Version;->intValue()I

    move-result v0

    sput v0, Ld1d;->a:I

    sget-object v0, Lxe1;->f0:Lfreemarker/template/Version;

    invoke-virtual {v0}, Lfreemarker/template/Version;->intValue()I

    move-result v0

    sput v0, Ld1d;->b:I

    sget-object v0, Lxe1;->g0:Lfreemarker/template/Version;

    invoke-virtual {v0}, Lfreemarker/template/Version;->intValue()I

    move-result v0

    sput v0, Ld1d;->c:I

    sget-object v0, Lxe1;->h0:Lfreemarker/template/Version;

    invoke-virtual {v0}, Lfreemarker/template/Version;->intValue()I

    move-result v0

    sput v0, Ld1d;->d:I

    sget-object v0, Lxe1;->i0:Lfreemarker/template/Version;

    invoke-virtual {v0}, Lfreemarker/template/Version;->intValue()I

    move-result v0

    sput v0, Ld1d;->e:I

    sget-object v0, Lxe1;->j0:Lfreemarker/template/Version;

    invoke-virtual {v0}, Lfreemarker/template/Version;->intValue()I

    move-result v0

    sput v0, Ld1d;->f:I

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v2, v0, v1}, Lfreemarker/template/Version;->intValueFor(III)I

    move-result v0

    sput v0, Ld1d;->g:I

    return-void
.end method

.method public static a(Lfreemarker/template/Version;)V
    .locals 3

    const-string v0, "incompatibleImprovements"

    invoke-static {v0, p0}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lfreemarker/template/Version;->intValue()I

    move-result v0

    invoke-static {}, Lxe1;->S0()Lfreemarker/template/Version;

    move-result-object v1

    invoke-virtual {v1}, Lfreemarker/template/Version;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_1

    sget p0, Ld1d;->a:I

    if-lt v0, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\"incompatibleImprovements\" must be at least 2.3.0."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "The FreeMarker version requested by \"incompatibleImprovements\" was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p0, ", but the installed FreeMarker version is only "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lxe1;->S0()Lfreemarker/template/Version;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p0, ". You may need to upgrade FreeMarker in your project."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Lxe1;Z)Ljava/util/Set;
    .locals 0

    invoke-virtual {p0, p1}, Lxe1;->z(Z)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lfreemarker/template/Version;)Z
    .locals 0

    invoke-static {p0}, Lxe1;->u0(Lfreemarker/template/Version;)Z

    move-result p0

    return p0
.end method

.method public static d(Lfreemarker/template/Version;)Lnfa;
    .locals 0

    invoke-static {p0}, Lxe1;->y0(Lfreemarker/template/Version;)Lnfa;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lfreemarker/core/t1;)I
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/t1;->y()Lfreemarker/template/Template;

    move-result-object p0

    invoke-static {p0}, Ld1d;->f(Lfreemarker/template/Template;)I

    move-result p0

    return p0
.end method

.method public static f(Lfreemarker/template/Template;)I
    .locals 0

    invoke-virtual {p0}, Lfreemarker/template/Template;->F0()Lfreemarker/template/Version;

    move-result-object p0

    invoke-virtual {p0}, Lfreemarker/template/Version;->intValue()I

    move-result p0

    return p0
.end method
