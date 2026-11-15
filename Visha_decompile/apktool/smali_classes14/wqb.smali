.class public final synthetic Lwqb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljv4;


# instance fields
.field public final synthetic a:Lcom/transsion/videodownloader/VideoDownloadManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/videodownloader/VideoDownloadManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwqb;->a:Lcom/transsion/videodownloader/VideoDownloadManager;

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 0

    iget-object p0, p0, Lwqb;->a:Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-static {p0, p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->b(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void
.end method
