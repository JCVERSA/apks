.class public final synthetic Lv12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe8;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/d$c;->k(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method
