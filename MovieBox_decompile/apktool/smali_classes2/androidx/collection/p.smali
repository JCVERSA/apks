.class public abstract Landroidx/collection/p;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Landroidx/collection/e0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/collection/e0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/collection/e0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/collection/p;->a:Landroidx/collection/e0;

    .line 8
    .line 9
    return-void
.end method

.method public static final a()Landroidx/collection/o;
    .locals 2

    .line 1
    sget-object v0, Landroidx/collection/p;->a:Landroidx/collection/e0;

    .line 2
    .line 3
    const-string v1, "null cannot be cast to non-null type androidx.collection.IntObjectMap<V of androidx.collection.IntObjectMapKt.intObjectMapOf>"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static final b()Landroidx/collection/e0;
    .locals 4

    .line 1
    new-instance v0, Landroidx/collection/e0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/e0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static final c(ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)Landroidx/collection/e0;
    .locals 4

    .line 1
    new-instance v0, Landroidx/collection/e0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/e0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p0, p1}, Landroidx/collection/e0;->t(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p2, p3}, Landroidx/collection/e0;->t(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p4, p5}, Landroidx/collection/e0;->t(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method
