.class public final synthetic Lvz7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    invoke-static {p1}, Lxz7;->e0(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/stream/VideoStream;

    move-result-object p0

    return-object p0
.end method
