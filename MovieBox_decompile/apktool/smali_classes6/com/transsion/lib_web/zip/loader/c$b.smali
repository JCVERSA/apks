.class public abstract Lcom/transsion/lib_web/zip/loader/c$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/lib_web/zip/loader/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public static a(Lcom/transsion/lib_web/zip/loader/c;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 1
    const-string p0, "headers"

    .line 2
    .line 3
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 12
    .line 13
    .line 14
    sget-object p1, Lcom/transsion/lib_web/zip/loader/c;->a:Lcom/transsion/lib_web/zip/loader/c$a;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/transsion/lib_web/zip/loader/c$a;->a()Ljava/util/HashMap;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 21
    .line 22
    .line 23
    return-object p0
.end method
