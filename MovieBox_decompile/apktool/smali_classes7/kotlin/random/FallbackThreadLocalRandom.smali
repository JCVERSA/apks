.class public final Lkotlin/random/FallbackThreadLocalRandom;
.super Lkotlin/random/AbstractPlatformRandom;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lkotlin/random/FallbackThreadLocalRandom;",
        "Lkotlin/random/AbstractPlatformRandom;",
        "<init>",
        "()V",
        "kotlin/random/FallbackThreadLocalRandom$implStorage$1",
        "a",
        "Lkotlin/random/FallbackThreadLocalRandom$implStorage$1;",
        "implStorage",
        "Ljava/util/Random;",
        "()Ljava/util/Random;",
        "impl",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Lkotlin/random/FallbackThreadLocalRandom$implStorage$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlin/random/AbstractPlatformRandom;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lkotlin/random/FallbackThreadLocalRandom$implStorage$1;

    .line 5
    .line 6
    invoke-direct {v0}, Lkotlin/random/FallbackThreadLocalRandom$implStorage$1;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lkotlin/random/FallbackThreadLocalRandom;->a:Lkotlin/random/FallbackThreadLocalRandom$implStorage$1;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Random;
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlin/random/FallbackThreadLocalRandom;->a:Lkotlin/random/FallbackThreadLocalRandom$implStorage$1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "get(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Ljava/util/Random;

    .line 13
    .line 14
    return-object v0
.end method
