.class public final synthetic Lxc/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lt8/g;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/firebase/perf/v1/g;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/a;->toByteArray()[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
