.class public final synthetic Landroidx/media3/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/ui/b;->b:Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

    iput p2, p0, Landroidx/media3/ui/b;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/b;->b:Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

    iget p0, p0, Landroidx/media3/ui/b;->c:I

    invoke-static {v0, p0, p1}, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->b(Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;ILandroid/view/View;)V

    return-void
.end method
