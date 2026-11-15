.class public final synthetic Lqn9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/videodownloader/task/SingleVideoCacheThread;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/videodownloader/task/SingleVideoCacheThread;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqn9;->b:Lcom/transsion/videodownloader/task/SingleVideoCacheThread;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lqn9;->b:Lcom/transsion/videodownloader/task/SingleVideoCacheThread;

    invoke-static {p0}, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->b(Lcom/transsion/videodownloader/task/SingleVideoCacheThread;)V

    return-void
.end method
