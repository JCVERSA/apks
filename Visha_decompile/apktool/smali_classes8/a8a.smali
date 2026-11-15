.class public La8a;
.super Lz0;
.source "SourceFile"


# static fields
.field public static final f:La8a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La8a;

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, La8a;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, La8a;->f:La8a;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0, p1}, Lz0;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0}, La8a;->A()V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 3

    invoke-virtual {p0}, Lz0;->y()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lge0;->g(Ljava/math/BigInteger;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid enumeration value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lz0;->y()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
