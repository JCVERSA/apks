.class public final synthetic Landroidx/media3/ui/a1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/ui/a1;->a:Ljava/util/Comparator;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/a1;->a:Ljava/util/Comparator;

    .line 2
    .line 3
    check-cast p1, Landroidx/media3/ui/TrackSelectionView$c;

    .line 4
    .line 5
    check-cast p2, Landroidx/media3/ui/TrackSelectionView$c;

    .line 6
    .line 7
    invoke-static {v0, p1, p2}, Landroidx/media3/ui/TrackSelectionView;->a(Ljava/util/Comparator;Landroidx/media3/ui/TrackSelectionView$c;Landroidx/media3/ui/TrackSelectionView$c;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method
