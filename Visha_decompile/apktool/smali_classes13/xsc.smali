.class public final synthetic Lxsc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/grack/nanojson/JsonArray;

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->C(Lcom/grack/nanojson/JsonArray;)Z

    move-result p0

    return p0
.end method
