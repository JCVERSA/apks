.class public final synthetic Li2/m;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/common/base/n;


# instance fields
.field public final synthetic a:Li2/n;

.field public final synthetic b:Li2/n$e;


# direct methods
.method public synthetic constructor <init>(Li2/n;Li2/n$e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li2/m;->a:Li2/n;

    .line 5
    .line 6
    iput-object p2, p0, Li2/m;->b:Li2/n$e;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Li2/m;->a:Li2/n;

    .line 2
    .line 3
    iget-object v1, p0, Li2/m;->b:Li2/n$e;

    .line 4
    .line 5
    check-cast p1, Landroidx/media3/common/r;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Li2/n;->t(Li2/n;Li2/n$e;Landroidx/media3/common/r;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method
