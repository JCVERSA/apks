.class public final synthetic Lrn9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/videodownloader/task/SingleVideoCacheThread;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/videodownloader/task/SingleVideoCacheThread;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrn9;->b:Lcom/transsion/videodownloader/task/SingleVideoCacheThread;

    iput-wide p2, p0, Lrn9;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lrn9;->b:Lcom/transsion/videodownloader/task/SingleVideoCacheThread;

    iget-wide v1, p0, Lrn9;->c:J

    invoke-static {v0, v1, v2}, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->a(Lcom/transsion/videodownloader/task/SingleVideoCacheThread;J)V

    return-void
.end method
