.class final Lh2/b;
.super Lh3/j;
.source "source.java"


# instance fields
.field private final p:Lh3/s;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lh3/s;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lh3/j;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lh2/b;->p:Lh3/s;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected y([BIZ)Lh3/k;
    .locals 1

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    iget-object p3, p0, Lh2/b;->p:Lh3/s;

    .line 4
    .line 5
    invoke-interface {p3}, Lh3/s;->reset()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p3, p0, Lh2/b;->p:Lh3/s;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-interface {p3, p1, v0, p2}, Lh3/s;->a([BII)Lh3/k;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
