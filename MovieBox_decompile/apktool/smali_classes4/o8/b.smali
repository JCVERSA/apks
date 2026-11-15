.class public Lo8/b;
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

.method public static a(Ljava/lang/String;I)Ln8/e;
    .locals 1

    .line 1
    invoke-static {}, Lo8/a;->a()Ln8/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Ln8/a;->o(I)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-virtual {v0, p0, p1}, Ln8/a;->e(Ljava/lang/String;Ljava/util/Map;)Ln8/e;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static b(Ljava/lang/String;ILjava/lang/String;)Ln8/e;
    .locals 1

    .line 1
    invoke-static {}, Lo8/a;->a()Ln8/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Ln8/a;->o(I)V

    .line 6
    .line 7
    .line 8
    const-string p1, "UTF-8"

    .line 9
    .line 10
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string p2, "application/json"

    .line 19
    .line 20
    invoke-virtual {v0, p0, p2, p1}, Ln8/a;->j(Ljava/lang/String;Ljava/lang/String;[B)Ln8/e;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method
