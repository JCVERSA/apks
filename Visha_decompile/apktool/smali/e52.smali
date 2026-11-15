.class public final synthetic Le52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic b:Landroidx/media3/common/util/BackgroundThreadStateHandler;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/util/BackgroundThreadStateHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le52;->b:Landroidx/media3/common/util/BackgroundThreadStateHandler;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Le52;->b:Landroidx/media3/common/util/BackgroundThreadStateHandler;

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->runInBackground(Ljava/lang/Runnable;)V

    return-void
.end method
