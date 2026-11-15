.class public Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$BufferTime;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BufferTime"
.end annotation


# static fields
.field public static final TYPE_NORMAL:I = 0x0

.field public static final TYPE_SEEK:I = 0x1


# instance fields
.field public buffertime:J

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
