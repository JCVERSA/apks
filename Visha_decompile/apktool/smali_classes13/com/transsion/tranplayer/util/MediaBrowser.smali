.class public Lcom/transsion/tranplayer/util/MediaBrowser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/tranplayer/util/MediaBrowser$EventListener;,
        Lcom/transsion/tranplayer/util/MediaBrowser$Flag;
    }
.end annotation


# static fields
.field private static final IGNORE_LIST_OPTION:Ljava/lang/String; = ":ignore-filetypes="

.field private static final TAG:Ljava/lang/String; = "MediaBrowser"


# instance fields
.field private mAlive:Z

.field private mBrowserMediaList:Lcom/transsion/tranplayer/MediaList;

.field private final mBrowserMediaListEventListener:Lcom/transsion/tranplayer/MediaList$EventListener;

.field private final mDiscovererMediaArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/tranplayer/Media;",
            ">;"
        }
    .end annotation
.end field

.field private final mDiscovererMediaListEventListener:Lcom/transsion/tranplayer/MediaList$EventListener;

.field private mEventListener:Lcom/transsion/tranplayer/util/MediaBrowser$EventListener;

.field private mHandler:Landroid/os/Handler;

.field private mIgnoreList:Ljava/lang/String;

.field private final mLibVlc:Lcom/transsion/tranplayer/LibVLC;

.field private mMedia:Lcom/transsion/tranplayer/Media;

.field private final mMediaDiscoverers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/tranplayer/MediaDiscoverer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/transsion/tranplayer/LibVLC;Lcom/transsion/tranplayer/util/MediaBrowser$EventListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/tranplayer/util/MediaBrowser;->mMediaDiscoverers:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/tranplayer/util/MediaBrowser;->mDiscovererMediaArray:Ljava/util/ArrayList;

    .line 4
    const-string v0, "db,nfo,ini,jpg,jpeg,ljpg,gif,png,pgm,pgmyuv,pbm,pam,tga,bmp,pnm,xpm,xcf,pcx,tif,tiff,lbm,sfv,txt,sub,idx,srt,ssa,ass,smi,utf,utf-8,rt,aqt,txt,usf,jss,cdg,psb,mpsub,mpl2,pjs,dks,stl,vtt,ttml"

    iput-object v0, p0, Lcom/transsion/tranplayer/util/MediaBrowser;->mIgnoreList:Ljava/lang/String;

    .line 5
    new-instance v0, Lcom/transsion/tranplayer/util/MediaBrowser$1;

    invoke-direct {v0, p0}, Lcom/transsion/tranplayer/util/MediaBrowser$1;-><init>(Lcom/transsion/tranplayer/util/MediaBrowser;)V

    iput-object v0, p0, Lcom/transsion/tranplayer/util/MediaBrowser;->mBrowserMediaListEventListener:Lcom/transsion/tranplayer/MediaList$EventListener;

    .line 6
    new-instance v0, Lcom/transsion/tranplayer/util/MediaBrowser$2;

    invoke-direct {v0, p0}, Lcom/transsion/tranplayer/util/MediaBrowser$2;-><init>(Lcom/transsion/tranplayer/util/MediaBrowser;)V

    iput-object v0, p0, Lcom/transsion/tranplayer/util/MediaBrowser;->mDiscovererMediaListEventListener:Lcom/transsion/tranplayer/MediaList$EventListener;

    .line 7
    iput-object p1, p0, Lcom/transsion/tranplayer/util/MediaBrowser;->mLibVlc:Lcom/transsion/tranplayer/LibVLC;

    .line 8
    invoke-virtual {p1}, Lcom/transsion/tranplayer/LibVLC;->retain()Z

    .line 9
    iput-object p2, p0, Lcom/transsion/tranplayer/util/MediaBrowser;->mEventListener:Lcom/transsion/tranplayer/util/MediaBrowser$EventListener;

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/transsion/tranplayer/util/MediaBrowser;->mAlive:Z

    return-void
.end method

.method public constructor <init>(Lcom/transsion/tranplayer/LibVLC;Lcom/transsion/tranplayer/util/MediaBrowser$EventListener;Landroid/os/Handler;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/transsion/tranplayer/util/MediaBrowser;-><init>(Lcom/transsion/tranplayer/LibVLC;Lcom/transsion/tranplayer/util/MediaBrowser$EventListener;)V

    .line 12
    iput-object p3, p0, Lcom/transsion/tranplayer/util/MediaBrowser;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/transsion/tranplayer/util/MediaBrowser;)Lcom/transsion/tranplayer/util/MediaBrowser$EventListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tranplayer/util/MediaBrowser;->mEventListener:Lcom/transsion/tranplayer/util/MediaBrowser$EventListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/transsion/tranplayer/util/MediaBrowser;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tranplayer/util/MediaBrowser;->mDiscovererMediaArray:Ljava/util/ArrayList;

    return-object p0
.end method

.method private reset()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/tranplayer/util/MediaBrowser;->mMediaDiscoverers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/tranplayer/MediaDiscoverer;

    invoke-virtual {v1}, Lcom/transsion/tranplayer/MediaDiscoverer;->release()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/tranplayer/util/MediaBrowser;->mMediaDiscoverers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/tranplayer/util/MediaBrowser;->mDiscovererMediaArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/tranplayer/util/MediaBrowser;->mMedia:Lcom/transsion/tranplayer/Media;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/tranplayer/Media;->release()V

    iput-object v1, p0, Lcom/transsion/tranplayer/util/MediaBrowser;->mMedia:Lcom/transsion/tranplayer/Media;

    :cond_1
    iget-object v0, p0, Lcom/transsion/tranplayer/util/MediaBrowser;->mBrowserMediaList:Lcom/transsion/tranplayer/MediaList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/tranplayer/MediaList;->release()V

    iput-object v1, p0, Lcom/transsion/tranplayer/util/MediaBrowser;->mBrowserMediaList:Lcom/transsion/tranplayer/MediaList;

    :cond_2
    return-void
.end method

.method private startMediaDiscoverer(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/transsion/tranplayer/MediaDiscoverer;

    iget-object v1, p0, Lcom/transsion/tranplayer/util/MediaBrowser;->mLibVlc:Lcom/transsion/tranplayer/LibVLC;

    invoke-direct {v0, v1, p1}, Lcom/transsion/tranplayer/MediaDiscoverer;-><init>(Lcom/transsion/tranplayer/LibVLC;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/tranplayer/util/MediaBrowser;->mMediaDiscoverers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/transsion/tranplayer/MediaDiscoverer;->getMediaList()Lcom/transsion/tranplayer/MediaList;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/tranplayer/util/MediaBrowser;->mDiscovererMediaListEventListener:Lcom/transsion/tranplayer/MediaList$EventListener;

    iget-object p0, p0, Lcom/transsion/tranplayer/util/MediaBrowser;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1, p0}, Lcom/transsion/tranplayer/MediaList;->setEventListener(Lcom/transsion/tranplayer/MediaList$EventListener;Landroid/os/Handler;)V

    invoke-virtual {p1}, Lcom/transsion/tranplayer/MediaList;->release()V

    invoke-virtual {v0}, Lcom/transsion/tranplayer/MediaDiscoverer;->start()Z

    return-void
.end method


# virtual methods
.method public browse(Landroid/net/Uri;I)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 4
    new-instance v0, Lcom/transsion/tranplayer/Media;

    iget-object v1, p0, Lcom/transsion/tranplayer/util/MediaBrowser;->mLibVlc:Lcom/transsion/tranplayer/LibVLC;

    invoke-direct {v0, v1, p1}, Lcom/transsion/tranplayer/Media;-><init>(Lcom/transsion/tranplayer/LibVLC;Landroid/net/Uri;)V

    .line 5
    invoke-virtual {p0, v0, p2}, Lcom/transsion/tranplayer/util/MediaBrowser;->browse(Lcom/transsion/tranplayer/Media;I)V

    .line 6
    invoke-virtual {v0}, Lcom/transsion/tranplayer/Media;->release()V

    return-void
.end method

.method public browse(Lcom/transsion/tranplayer/Media;I)V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 7
    invoke-virtual {p1}, Lcom/transsion/tranplayer/Media;->retain()Z

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":ignore-filetypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/tranplayer/util/MediaBrowser;->mIgnoreList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/tranplayer/Media;->addOption(Ljava/lang/String;)V

    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_0

    .line 9
    const-string v0, ":no-sub-autodetect-file"

    invoke-virtual {p1, v0}, Lcom/transsion/tranplayer/Media;->addOption(Ljava/lang/String;)V

    :cond_0
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_1

    .line 10
    const-string v0, ":show-hiddenfiles"

    invoke-virtual {p1, v0}, Lcom/transsion/tranplayer/Media;->addOption(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    and-int/2addr p2, v0

    if-eqz p2, :cond_2

    const/16 v0, 0x9

    .line 11
    :cond_2
    invoke-direct {p0}, Lcom/transsion/tranplayer/util/MediaBrowser;->reset()V

    .line 12
    invoke-virtual {p1}, Lcom/transsion/tranplayer/Media;->subItems()Lcom/transsion/tranplayer/MediaList;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/tranplayer/util/MediaBrowser;->mBrowserMediaList:Lcom/transsion/tranplayer/MediaList;

    .line 13
    iget-object v1, p0, Lcom/transsion/tranplayer/util/MediaBrowser;->mBrowserMediaListEventListener:Lcom/transsion/tranplayer/MediaList$EventListener;

    iget-object v2, p0, Lcom/transsion/tranplayer/util/MediaBrowser;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v1, v2}, Lcom/transsion/tranplayer/MediaList;->setEventListener(Lcom/transsion/tranplayer/MediaList$EventListener;Landroid/os/Handler;)V

    const/4 p2, 0x0

    .line 14
    invoke-virtual {p1, v0, p2}, Lcom/transsion/tranplayer/Media;->parseAsync(II)Z

    .line 15
    iput-object p1, p0, Lcom/transsion/tranplayer/util/MediaBrowser;->mMedia:Lcom/transsion/tranplayer/Media;

    return-void
.end method

.method public browse(Ljava/lang/String;I)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    new-instance v0, Lcom/transsion/tranplayer/Media;

    iget-object v1, p0, Lcom/transsion/tranplayer/util/MediaBrowser;->mLibVlc:Lcom/transsion/tranplayer/LibVLC;

    invoke-direct {v0, v1, p1}, Lcom/transsion/tranplayer/Media;-><init>(Lcom/transsion/tranplayer/LibVLC;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, v0, p2}, Lcom/transsion/tranplayer/util/MediaBrowser;->browse(Lcom/transsion/tranplayer/Media;I)V

    .line 3
    invoke-virtual {v0}, Lcom/transsion/tranplayer/Media;->release()V

    return-void
.end method

.method public changeEventListener(Lcom/transsion/tranplayer/util/MediaBrowser$EventListener;)V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-direct {p0}, Lcom/transsion/tranplayer/util/MediaBrowser;->reset()V

    iput-object p1, p0, Lcom/transsion/tranplayer/util/MediaBrowser;->mEventListener:Lcom/transsion/tranplayer/util/MediaBrowser$EventListener;

    return-void
.end method

.method public discoverNetworkShares()V
    .locals 6
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/transsion/tranplayer/util/MediaBrowser;->reset()V

    .line 2
    iget-object v0, p0, Lcom/transsion/tranplayer/util/MediaBrowser;->mLibVlc:Lcom/transsion/tranplayer/LibVLC;

    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1}, Lcom/transsion/tranplayer/MediaDiscoverer;->list(Lcom/transsion/tranplayer/LibVLC;I)[Lcom/transsion/tranplayer/MediaDiscoverer$Description;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/transsion/tranplayer/MediaDiscoverer$Description;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " discover ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/transsion/tranplayer/MediaDiscoverer$Description;->longName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MediaBrowser"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v3, v3, Lcom/transsion/tranplayer/MediaDiscoverer$Description;->name:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/transsion/tranplayer/util/MediaBrowser;->startMediaDiscoverer(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public discoverNetworkShares(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 7
    invoke-direct {p0}, Lcom/transsion/tranplayer/util/MediaBrowser;->reset()V

    .line 8
    invoke-direct {p0, p1}, Lcom/transsion/tranplayer/util/MediaBrowser;->startMediaDiscoverer(Ljava/lang/String;)V

    return-void
.end method

.method public getMediaAt(I)Lcom/transsion/tranplayer/Media;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/tranplayer/util/MediaBrowser;->getMediaCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/transsion/tranplayer/util/MediaBrowser;->mBrowserMediaList:Lcom/transsion/tranplayer/MediaList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/tranplayer/MediaList;->getMediaAt(I)Lcom/transsion/tranplayer/Media;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/tranplayer/util/MediaBrowser;->mDiscovererMediaArray:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/tranplayer/Media;

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/tranplayer/Media;->retain()Z

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public getMediaCount()I
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/transsion/tranplayer/util/MediaBrowser;->mBrowserMediaList:Lcom/transsion/tranplayer/MediaList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/tranplayer/MediaList;->getCount()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/tranplayer/util/MediaBrowser;->mDiscovererMediaArray:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public release()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-direct {p0}, Lcom/transsion/tranplayer/util/MediaBrowser;->reset()V

    iget-boolean v0, p0, Lcom/transsion/tranplayer/util/MediaBrowser;->mAlive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/tranplayer/util/MediaBrowser;->mLibVlc:Lcom/transsion/tranplayer/LibVLC;

    invoke-virtual {v0}, Lcom/transsion/tranplayer/LibVLC;->release()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/tranplayer/util/MediaBrowser;->mAlive:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "MediaBrowser released more than one time"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setIgnoreFileTypes(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iput-object p1, p0, Lcom/transsion/tranplayer/util/MediaBrowser;->mIgnoreList:Ljava/lang/String;

    return-void
.end method
