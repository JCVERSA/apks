.class public final synthetic Ld62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo74;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
