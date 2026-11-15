.class public final synthetic Lsn9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/videodownloader/task/SingleVideoCacheThread;

.field public final synthetic c:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/videodownloader/task/SingleVideoCacheThread;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsn9;->b:Lcom/transsion/videodownloader/task/SingleVideoCacheThread;

    iput-object p2, p0, Lsn9;->c:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lsn9;->b:Lcom/transsion/videodownloader/task/SingleVideoCacheThread;

    iget-object p0, p0, Lsn9;->c:Ljava/lang/Exception;

    invoke-static {v0, p0}, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->c(Lcom/transsion/videodownloader/task/SingleVideoCacheThread;Ljava/lang/Exception;)V

    return-void
.end method
