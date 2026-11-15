.class Lkotlin/uuid/a;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final a(J[BIII)V
    .locals 1

    .line 1
    const-string v0, "dst"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static/range {p0 .. p5}, Lkotlin/uuid/b;->d(J[BIII)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final b(Lkotlin/uuid/Uuid;)Ljava/lang/Object;
    .locals 5

    .line 1
    const-string v0, "uuid"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lkotlin/uuid/UuidSerialized;

    .line 7
    .line 8
    invoke-virtual {p0}, Lkotlin/uuid/Uuid;->getMostSignificantBits()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-virtual {p0}, Lkotlin/uuid/Uuid;->getLeastSignificantBits()J

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/uuid/UuidSerialized;-><init>(JJ)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public static final c([BIJ)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1, p2, p3}, Lkotlin/uuid/b;->e([BIJ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
