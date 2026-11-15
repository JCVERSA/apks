.class public abstract Lcom/google/common/hash/f;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    long-to-int v0, v0

    .line 6
    sput v0, Lcom/google/common/hash/f;->a:I

    .line 7
    .line 8
    return-void
.end method

.method public static a()Lcom/google/common/hash/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/hash/Murmur3_128HashFunction;->MURMUR3_128:Lcom/google/common/hash/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public static b(I)Lcom/google/common/hash/d;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/hash/Murmur3_128HashFunction;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/common/hash/Murmur3_128HashFunction;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
