.class public final synthetic Landroidx/room/j0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/room/RoomTrackingLiveData;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/RoomTrackingLiveData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/room/j0;->a:Landroidx/room/RoomTrackingLiveData;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/j0;->a:Landroidx/room/RoomTrackingLiveData;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/room/RoomTrackingLiveData$a;->d(Landroidx/room/RoomTrackingLiveData;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
