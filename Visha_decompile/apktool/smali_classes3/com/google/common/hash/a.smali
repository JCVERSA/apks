.class public abstract Lcom/google/common/hash/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/google/common/hash/a;->a:I

    return-void
.end method

.method public static a()Leo4;
    .locals 1

    sget-object v0, Lcom/google/common/hash/Murmur3_128HashFunction;->MURMUR3_128:Leo4;

    return-object v0
.end method

.method public static b(I)Leo4;
    .locals 1

    new-instance v0, Lcom/google/common/hash/Murmur3_128HashFunction;

    invoke-direct {v0, p0}, Lcom/google/common/hash/Murmur3_128HashFunction;-><init>(I)V

    return-object v0
.end method
