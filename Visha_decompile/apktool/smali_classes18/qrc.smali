.class public Lqrc;
.super Lzv4;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 0

    invoke-direct {p0, p1}, Lzv4;-><init>(Ljava/util/TimeZone;)V

    return-void
.end method


# virtual methods
.method public a(IZLjava/lang/String;)Ldfa;
    .locals 8

    new-instance v7, Lprc;

    const/4 v2, 0x2

    invoke-virtual {p0}, Lefa;->b()Ljava/util/TimeZone;

    move-result-object v5

    move-object v0, v7

    move-object v1, p3

    move v3, p1

    move v4, p2

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lprc;-><init>(Ljava/lang/String;IIZLjava/util/TimeZone;Lzv4;)V

    return-object v7
.end method
