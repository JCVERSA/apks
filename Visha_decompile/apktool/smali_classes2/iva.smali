.class public final synthetic Liva;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Landroidx/media3/ui/TrackSelectionDialogBuilder;

.field public final synthetic c:Landroidx/media3/ui/TrackSelectionView;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/ui/TrackSelectionDialogBuilder;Landroidx/media3/ui/TrackSelectionView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liva;->b:Landroidx/media3/ui/TrackSelectionDialogBuilder;

    iput-object p2, p0, Liva;->c:Landroidx/media3/ui/TrackSelectionView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Liva;->b:Landroidx/media3/ui/TrackSelectionDialogBuilder;

    iget-object p0, p0, Liva;->c:Landroidx/media3/ui/TrackSelectionView;

    invoke-static {v0, p0, p1, p2}, Landroidx/media3/ui/TrackSelectionDialogBuilder;->b(Landroidx/media3/ui/TrackSelectionDialogBuilder;Landroidx/media3/ui/TrackSelectionView;Landroid/content/DialogInterface;I)V

    return-void
.end method
