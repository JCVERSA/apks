.class public final Lcom/google/common/math/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:D

.field public final b:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/google/common/math/a$b;->a:D

    .line 4
    iput-wide p3, p0, Lcom/google/common/math/a$b;->b:D

    return-void
.end method

.method public synthetic constructor <init>(DDLcom/google/common/math/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/math/a$b;-><init>(DD)V

    return-void
.end method


# virtual methods
.method public a(D)Lcom/google/common/math/a;
    .locals 4

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lxd8;->d(Z)V

    invoke-static {p1, p2}, Ltx2;->c(D)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/common/math/a$b;->b:D

    iget-wide v2, p0, Lcom/google/common/math/a$b;->a:D

    mul-double/2addr v2, p1

    sub-double/2addr v0, v2

    new-instance p0, Lcom/google/common/math/a$d;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/common/math/a$d;-><init>(DD)V

    return-object p0

    :cond_0
    new-instance p1, Lcom/google/common/math/a$e;

    iget-wide v0, p0, Lcom/google/common/math/a$b;->a:D

    invoke-direct {p1, v0, v1}, Lcom/google/common/math/a$e;-><init>(D)V

    return-object p1
.end method
