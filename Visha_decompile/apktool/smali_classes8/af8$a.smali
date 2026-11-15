.class public Laf8$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(ZLjava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Laf8$a;->a:Z

    iput-object p2, p0, Laf8$a;->b:Ljava/math/BigInteger;

    return-void
.end method

.method public static synthetic a()Laf8$a;
    .locals 1

    invoke-static {}, Laf8$a;->e()Laf8$a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Ljava/math/BigInteger;)Laf8$a;
    .locals 0

    invoke-static {p0}, Laf8$a;->g(Ljava/math/BigInteger;)Laf8$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c()Laf8$a;
    .locals 1

    invoke-static {}, Laf8$a;->f()Laf8$a;

    move-result-object v0

    return-object v0
.end method

.method public static e()Laf8$a;
    .locals 3

    new-instance v0, Laf8$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Laf8$a;-><init>(ZLjava/math/BigInteger;)V

    return-object v0
.end method

.method public static f()Laf8$a;
    .locals 3

    new-instance v0, Laf8$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Laf8$a;-><init>(ZLjava/math/BigInteger;)V

    return-object v0
.end method

.method public static g(Ljava/math/BigInteger;)Laf8$a;
    .locals 2

    new-instance v0, Laf8$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Laf8$a;-><init>(ZLjava/math/BigInteger;)V

    return-object v0
.end method


# virtual methods
.method public d()Z
    .locals 0

    iget-boolean p0, p0, Laf8$a;->a:Z

    return p0
.end method
