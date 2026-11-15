.class public final synthetic Lmc6;
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

    check-cast p1, Lsc6$a;

    invoke-static {p1}, Lsc6;->g0(Lsc6$a;)Lorg/schabi/newpipe/extractor/stream/AudioStream;

    move-result-object p0

    return-object p0
.end method
