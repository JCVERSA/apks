.class public final synthetic Lna/l;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/common/base/n;


# instance fields
.field public final synthetic a:Lna/m;


# direct methods
.method public synthetic constructor <init>(Lna/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lna/l;->a:Lna/m;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lna/l;->a:Lna/m;

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/exoplayer2/p1;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lna/m;->o(Lna/m;Lcom/google/android/exoplayer2/p1;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
