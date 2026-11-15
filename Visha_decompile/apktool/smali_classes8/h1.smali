.class public abstract Lh1;
.super Lp1;
.source "SourceFile"


# static fields
.field public static final b:Ld2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lh1$a;

    const-class v1, Lh1;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lh1$a;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lh1;->b:Ld2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lp1;-><init>()V

    return-void
.end method

.method public static w([B)Lh1;
    .locals 1

    array-length p0, p0

    if-nez p0, :cond_0

    sget-object p0, Lup1;->c:Lup1;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "malformed NULL encoding encountered"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public hashCode()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public m(Lp1;)Z
    .locals 0

    instance-of p0, p1, Lh1;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "NULL"

    return-object p0
.end method
