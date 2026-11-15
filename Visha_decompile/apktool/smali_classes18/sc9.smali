.class public abstract Lsc9;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract b(Ljava/lang/Object;Lwh1;)Ljava/lang/Object;
.end method

.method public final c(Lpc9;Lwh1;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lsc9;->d(Ljava/util/Iterator;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public abstract d(Ljava/util/Iterator;Lwh1;)Ljava/lang/Object;
.end method
