.class public final synthetic Lxr1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/dash/DashMediaSource;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/dash/DashMediaSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxr1;->b:Landroidx/media3/exoplayer/dash/DashMediaSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lxr1;->b:Landroidx/media3/exoplayer/dash/DashMediaSource;

    invoke-static {p0}, Landroidx/media3/exoplayer/dash/DashMediaSource;->a(Landroidx/media3/exoplayer/dash/DashMediaSource;)V

    return-void
.end method
