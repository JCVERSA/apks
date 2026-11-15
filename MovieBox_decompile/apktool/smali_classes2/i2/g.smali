.class public final synthetic Li2/g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Li2/n$i$a;


# instance fields
.field public final synthetic a:Li2/n$e;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:[I

.field public final synthetic d:Landroid/graphics/Point;


# direct methods
.method public synthetic constructor <init>(Li2/n$e;Ljava/lang/String;[ILandroid/graphics/Point;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li2/g;->a:Li2/n$e;

    .line 5
    .line 6
    iput-object p2, p0, Li2/g;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Li2/g;->c:[I

    .line 9
    .line 10
    iput-object p4, p0, Li2/g;->d:Landroid/graphics/Point;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(ILandroidx/media3/common/f0;[I)Ljava/util/List;
    .locals 7

    .line 1
    iget-object v0, p0, Li2/g;->a:Li2/n$e;

    .line 2
    .line 3
    iget-object v1, p0, Li2/g;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Li2/g;->c:[I

    .line 6
    .line 7
    iget-object v3, p0, Li2/g;->d:Landroid/graphics/Point;

    .line 8
    .line 9
    move v4, p1

    .line 10
    move-object v5, p2

    .line 11
    move-object v6, p3

    .line 12
    invoke-static/range {v0 .. v6}, Li2/n;->u(Li2/n$e;Ljava/lang/String;[ILandroid/graphics/Point;ILandroidx/media3/common/f0;[I)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method
