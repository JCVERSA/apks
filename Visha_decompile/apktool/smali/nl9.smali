.class public final synthetic Lnl9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw6a;


# instance fields
.field public final synthetic b:Landroidx/media3/common/SimpleBasePlayer$State;

.field public final synthetic c:Landroidx/media3/common/TrackSelectionParameters;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnl9;->b:Landroidx/media3/common/SimpleBasePlayer$State;

    iput-object p2, p0, Lnl9;->c:Landroidx/media3/common/TrackSelectionParameters;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnl9;->b:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object p0, p0, Lnl9;->c:Landroidx/media3/common/TrackSelectionParameters;

    invoke-static {v0, p0}, Landroidx/media3/common/SimpleBasePlayer;->K(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method
