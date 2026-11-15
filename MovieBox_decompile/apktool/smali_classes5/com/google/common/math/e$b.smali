.class public final Lcom/google/common/math/e$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:D

.field private final b:D


# direct methods
.method private constructor <init>(DD)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/google/common/math/e$b;->a:D

    .line 4
    iput-wide p3, p0, Lcom/google/common/math/e$b;->b:D

    return-void
.end method

.method synthetic constructor <init>(DDLcom/google/common/math/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/math/e$b;-><init>(DD)V

    return-void
.end method


# virtual methods
.method public a(D)Lcom/google/common/math/e;
    .locals 4

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2}, Lcom/google/common/math/c;->c(D)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-wide v0, p0, Lcom/google/common/math/e$b;->b:D

    .line 17
    .line 18
    iget-wide v2, p0, Lcom/google/common/math/e$b;->a:D

    .line 19
    .line 20
    mul-double/2addr v2, p1

    .line 21
    sub-double/2addr v0, v2

    .line 22
    new-instance v2, Lcom/google/common/math/e$d;

    .line 23
    .line 24
    invoke-direct {v2, p1, p2, v0, v1}, Lcom/google/common/math/e$d;-><init>(DD)V

    .line 25
    .line 26
    .line 27
    return-object v2

    .line 28
    :cond_0
    new-instance p1, Lcom/google/common/math/e$e;

    .line 29
    .line 30
    iget-wide v0, p0, Lcom/google/common/math/e$b;->a:D

    .line 31
    .line 32
    invoke-direct {p1, v0, v1}, Lcom/google/common/math/e$e;-><init>(D)V

    .line 33
    .line 34
    .line 35
    return-object p1
.end method
