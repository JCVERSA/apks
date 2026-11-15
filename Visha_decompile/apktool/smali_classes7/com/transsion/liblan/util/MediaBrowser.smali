.class public Lcom/transsion/liblan/util/MediaBrowser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/liblan/util/MediaBrowser$MediaEventListener;,
        Lcom/transsion/liblan/util/MediaBrowser$BROWSER_Flag;
    }
.end annotation


# static fields
.field private static final IGNORE_LIST_OPTION:Ljava/lang/String; = ":ignore-filetypes="

.field private static final TAG:Ljava/lang/String; = "MediaBrowser"


# instance fields
.field private mBrowserMediaList:Lcom/transsion/liblan/interfaces/ITranMediaList;

.field private final mBrowserMediaListTranEventListener:Lcom/transsion/liblan/interfaces/ITranMediaList$TranEventListener;

.field private final mDiscovererMediaArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/liblan/interfaces/ITranMedia;",
            ">;"
        }
    .end annotation
.end field

.field private final mDiscovererMediaListTranEventListener:Lcom/transsion/liblan/interfaces/ITranMediaList$TranEventListener;

.field private mHandler:Landroid/os/Handler;

.field private final mITranLibLAN:Lcom/transsion/liblan/interfaces/ITranLibLAN;

.field private mIgnoreList:Ljava/lang/String;

.field private mIsAlive:Z

.field private mMediaEventListener:Lcom/transsion/liblan/util/MediaBrowser$MediaEventListener;

.field private mMediaFactory:Lcom/transsion/liblan/interfaces/ITranMediaFactory;

.field private mTranMedia:Lcom/transsion/liblan/interfaces/ITranMedia;

.field private final mTranMediaDiscoverers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/liblan/TranMediaDiscoverer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/transsion/liblan/interfaces/ITranLibLAN;Lcom/transsion/liblan/util/MediaBrowser$MediaEventListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/liblan/util/MediaBrowser;->mTranMediaDiscoverers:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/liblan/util/MediaBrowser;->mDiscovererMediaArray:Ljava/util/ArrayList;

    .line 4
    const-string v0, "db,nfo,ini,jpg,jpeg,ljpg,gif,png,pgm,pgmyuv,pbm,pam,tga,bmp,pnm,xpm,xcf,pcx,tif,tiff,lbm,sfv,txt,sub,idx,srt,ssa,ass,smi,utf,utf-8,rt,aqt,txt,usf,jss,cdg,psb,mpsub,mpl2,pjs,dks,stl,vtt,ttml"

    iput-object v0, p0, Lcom/transsion/liblan/util/MediaBrowser;->mIgnoreList:Ljava/lang/String;

    .line 5
    new-instance v0, Lcom/transsion/liblan/util/MediaBrowser$1;

    invoke-direct {v0, p0}, Lcom/transsion/liblan/util/MediaBrowser$1;-><init>(Lcom/transsion/liblan/util/MediaBrowser;)V

    iput-object v0, p0, Lcom/transsion/liblan/util/MediaBrowser;->mBrowserMediaListTranEventListener:Lcom/transsion/liblan/interfaces/ITranMediaList$TranEventListener;

    .line 6
    new-instance v0, Lcom/transsion/liblan/util/MediaBrowser$2;

    invoke-direct {v0, p0}, Lcom/transsion/liblan/util/MediaBrowser$2;-><init>(Lcom/transsion/liblan/util/MediaBrowser;)V

    iput-object v0, p0, Lcom/transsion/liblan/util/MediaBrowser;->mDiscovererMediaListTranEventListener:Lcom/transsion/liblan/interfaces/ITranMediaList$TranEventListener;

    .line 7
    sget-object v0, Lcom/transsion/liblan/interfaces/ITranMediaFactory;->FACTORY_ID:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/liblan/FactoryManager;->getFactory(Ljava/lang/String;)Lcom/transsion/liblan/interfaces/ITranComponentFactory;

    move-result-object v0

    check-cast v0, Lcom/transsion/liblan/interfaces/ITranMediaFactory;

    iput-object v0, p0, Lcom/transsion/liblan/util/MediaBrowser;->mMediaFactory:Lcom/transsion/liblan/interfaces/ITranMediaFactory;

    .line 8
    iput-object p1, p0, Lcom/transsion/liblan/util/MediaBrowser;->mITranLibLAN:Lcom/transsion/liblan/interfaces/ITranLibLAN;

    .line 9
    invoke-interface {p1}, Lcom/transsion/liblan/interfaces/ITranLANObject;->retain()Z

    .line 10
    iput-object p2, p0, Lcom/transsion/liblan/util/MediaBrowser;->mMediaEventListener:Lcom/transsion/liblan/util/MediaBrowser$MediaEventListener;

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/transsion/liblan/util/MediaBrowser;->mIsAlive:Z

    return-void
.end method

.method public constructor <init>(Lcom/transsion/liblan/interfaces/ITranLibLAN;Lcom/transsion/liblan/util/MediaBrowser$MediaEventListener;Landroid/os/Handler;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/transsion/liblan/util/MediaBrowser;-><init>(Lcom/transsion/liblan/interfaces/ITranLibLAN;Lcom/transsion/liblan/util/MediaBrowser$MediaEventListener;)V

    .line 13
    iput-object p3, p0, Lcom/transsion/liblan/util/MediaBrowser;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/liblan/util/MediaBrowser;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/liblan/util/MediaBrowser;->mDiscovererMediaArray:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/liblan/util/MediaBrowser;)Lcom/transsion/liblan/util/MediaBrowser$MediaEventListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/liblan/util/MediaBrowser;->mMediaEventListener:Lcom/transsion/liblan/util/MediaBrowser$MediaEventListener;

    return-object p0
.end method

.method private reset()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/liblan/util/MediaBrowser;->mTranMediaDiscoverers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/liblan/TranMediaDiscoverer;

    invoke-virtual {v1}, Lcom/transsion/liblan/TranMediaDiscoverer;->release()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/liblan/util/MediaBrowser;->mTranMediaDiscoverers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/liblan/util/MediaBrowser;->mDiscovererMediaArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/liblan/util/MediaBrowser;->mTranMedia:Lcom/transsion/liblan/interfaces/ITranMedia;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/liblan/interfaces/ITranLANObject;->release()V

    iput-object v1, p0, Lcom/transsion/liblan/util/MediaBrowser;->mTranMedia:Lcom/transsion/liblan/interfaces/ITranMedia;

    :cond_1
    iget-object v0, p0, Lcom/transsion/liblan/util/MediaBrowser;->mBrowserMediaList:Lcom/transsion/liblan/interfaces/ITranMediaList;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/transsion/liblan/interfaces/ITranLANObject;->release()V

    iput-object v1, p0, Lcom/transsion/liblan/util/MediaBrowser;->mBrowserMediaList:Lcom/transsion/liblan/interfaces/ITranMediaList;

    :cond_2
    return-void
.end method

.method private startMediaDiscoverer(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/transsion/liblan/TranMediaDiscoverer;

    iget-object v1, p0, Lcom/transsion/liblan/util/MediaBrowser;->mITranLibLAN:Lcom/transsion/liblan/interfaces/ITranLibLAN;

    invoke-direct {v0, v1, p1}, Lcom/transsion/liblan/TranMediaDiscoverer;-><init>(Lcom/transsion/liblan/interfaces/ITranLibLAN;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/liblan/util/MediaBrowser;->mTranMediaDiscoverers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/transsion/liblan/TranMediaDiscoverer;->getMediaList()Lcom/transsion/liblan/TranMediaList;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/liblan/util/MediaBrowser;->mDiscovererMediaListTranEventListener:Lcom/transsion/liblan/interfaces/ITranMediaList$TranEventListener;

    iget-object p0, p0, Lcom/transsion/liblan/util/MediaBrowser;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1, p0}, Lcom/transsion/liblan/TranMediaList;->setTranEventListener(Lcom/transsion/liblan/interfaces/ITranMediaList$TranEventListener;Landroid/os/Handler;)V

    invoke-virtual {p1}, Lcom/transsion/liblan/TranMediaList;->release()V

    invoke-virtual {v0}, Lcom/transsion/liblan/TranMediaDiscoverer;->isReleased()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/liblan/TranMediaDiscoverer;->start()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public browse(Landroid/net/Uri;I)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/transsion/liblan/util/MediaBrowser;->mMediaFactory:Lcom/transsion/liblan/interfaces/ITranMediaFactory;

    iget-object v1, p0, Lcom/transsion/liblan/util/MediaBrowser;->mITranLibLAN:Lcom/transsion/liblan/interfaces/ITranLibLAN;

    invoke-interface {v0, v1, p1}, Lcom/transsion/liblan/interfaces/ITranMediaFactory;->getMediaFromUri(Lcom/transsion/liblan/interfaces/ITranLibLAN;Landroid/net/Uri;)Lcom/transsion/liblan/interfaces/ITranMedia;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/transsion/liblan/util/MediaBrowser;->browse(Lcom/transsion/liblan/interfaces/ITranMedia;I)V

    .line 6
    invoke-interface {p1}, Lcom/transsion/liblan/interfaces/ITranLANObject;->release()V

    return-void
.end method

.method public browse(Lcom/transsion/liblan/interfaces/ITranMedia;I)V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 7
    invoke-interface {p1}, Lcom/transsion/liblan/interfaces/ITranLANObject;->retain()Z

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":ignore-filetypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/liblan/util/MediaBrowser;->mIgnoreList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/liblan/interfaces/ITranMedia;->addOption(Ljava/lang/String;)V

    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_0

    .line 9
    const-string v0, ":no-sub-autodetect-file"

    invoke-interface {p1, v0}, Lcom/transsion/liblan/interfaces/ITranMedia;->addOption(Ljava/lang/String;)V

    :cond_0
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_1

    .line 10
    const-string v0, ":show-hiddenfiles"

    invoke-interface {p1, v0}, Lcom/transsion/liblan/interfaces/ITranMedia;->addOption(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    and-int/2addr p2, v0

    if-eqz p2, :cond_2

    const/16 v0, 0x9

    .line 11
    :cond_2
    invoke-direct {p0}, Lcom/transsion/liblan/util/MediaBrowser;->reset()V

    .line 12
    invoke-interface {p1}, Lcom/transsion/liblan/interfaces/ITranMedia;->subItems()Lcom/transsion/liblan/interfaces/ITranMediaList;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/liblan/util/MediaBrowser;->mBrowserMediaList:Lcom/transsion/liblan/interfaces/ITranMediaList;

    .line 13
    iget-object v1, p0, Lcom/transsion/liblan/util/MediaBrowser;->mBrowserMediaListTranEventListener:Lcom/transsion/liblan/interfaces/ITranMediaList$TranEventListener;

    iget-object v2, p0, Lcom/transsion/liblan/util/MediaBrowser;->mHandler:Landroid/os/Handler;

    invoke-interface {p2, v1, v2}, Lcom/transsion/liblan/interfaces/ITranMediaList;->setTranEventListener(Lcom/transsion/liblan/interfaces/ITranMediaList$TranEventListener;Landroid/os/Handler;)V

    const/4 p2, 0x0

    .line 14
    invoke-interface {p1, v0, p2}, Lcom/transsion/liblan/interfaces/ITranMedia;->parseAsync(II)Z

    .line 15
    iput-object p1, p0, Lcom/transsion/liblan/util/MediaBrowser;->mTranMedia:Lcom/transsion/liblan/interfaces/ITranMedia;

    return-void
.end method

.method public browse(Ljava/lang/String;I)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/liblan/util/MediaBrowser;->mMediaFactory:Lcom/transsion/liblan/interfaces/ITranMediaFactory;

    iget-object v1, p0, Lcom/transsion/liblan/util/MediaBrowser;->mITranLibLAN:Lcom/transsion/liblan/interfaces/ITranLibLAN;

    invoke-interface {v0, v1, p1}, Lcom/transsion/liblan/interfaces/ITranMediaFactory;->getMediaFromLocal(Lcom/transsion/liblan/interfaces/ITranLibLAN;Ljava/lang/String;)Lcom/transsion/liblan/interfaces/ITranMedia;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/liblan/util/MediaBrowser;->browse(Lcom/transsion/liblan/interfaces/ITranMedia;I)V

    .line 3
    invoke-interface {p1}, Lcom/transsion/liblan/interfaces/ITranLANObject;->release()V

    return-void
.end method

.method public changeEventListener(Lcom/transsion/liblan/util/MediaBrowser$MediaEventListener;)V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-direct {p0}, Lcom/transsion/liblan/util/MediaBrowser;->reset()V

    iput-object p1, p0, Lcom/transsion/liblan/util/MediaBrowser;->mMediaEventListener:Lcom/transsion/liblan/util/MediaBrowser$MediaEventListener;

    return-void
.end method

.method public discoverNetworkShares()V
    .locals 6
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/transsion/liblan/util/MediaBrowser;->reset()V

    .line 2
    iget-object v0, p0, Lcom/transsion/liblan/util/MediaBrowser;->mITranLibLAN:Lcom/transsion/liblan/interfaces/ITranLibLAN;

    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1}, Lcom/transsion/liblan/TranMediaDiscoverer;->list(Lcom/transsion/liblan/interfaces/ITranLibLAN;I)[Lcom/transsion/liblan/TranMediaDiscoverer$Description;

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

    iget-object v5, v3, Lcom/transsion/liblan/TranMediaDiscoverer$Description;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " discover ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/transsion/liblan/TranMediaDiscoverer$Description;->longName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MediaBrowser"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v3, v3, Lcom/transsion/liblan/TranMediaDiscoverer$Description;->name:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/transsion/liblan/util/MediaBrowser;->startMediaDiscoverer(Ljava/lang/String;)V

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
    invoke-direct {p0}, Lcom/transsion/liblan/util/MediaBrowser;->reset()V

    .line 8
    invoke-direct {p0, p1}, Lcom/transsion/liblan/util/MediaBrowser;->startMediaDiscoverer(Ljava/lang/String;)V

    return-void
.end method

.method public getMediaAt(I)Lcom/transsion/liblan/interfaces/ITranMedia;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/liblan/util/MediaBrowser;->getMediaCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/transsion/liblan/util/MediaBrowser;->mBrowserMediaList:Lcom/transsion/liblan/interfaces/ITranMediaList;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/liblan/interfaces/ITranMediaList;->getMediaOfIndex(I)Lcom/transsion/liblan/interfaces/ITranMedia;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/liblan/util/MediaBrowser;->mDiscovererMediaArray:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/liblan/interfaces/ITranMedia;

    :goto_0
    invoke-interface {p0}, Lcom/transsion/liblan/interfaces/ITranLANObject;->retain()Z

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

    iget-object v0, p0, Lcom/transsion/liblan/util/MediaBrowser;->mBrowserMediaList:Lcom/transsion/liblan/interfaces/ITranMediaList;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/liblan/interfaces/ITranMediaList;->getCount()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/liblan/util/MediaBrowser;->mDiscovererMediaArray:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public release()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-direct {p0}, Lcom/transsion/liblan/util/MediaBrowser;->reset()V

    iget-boolean v0, p0, Lcom/transsion/liblan/util/MediaBrowser;->mIsAlive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/liblan/util/MediaBrowser;->mITranLibLAN:Lcom/transsion/liblan/interfaces/ITranLibLAN;

    invoke-interface {v0}, Lcom/transsion/liblan/interfaces/ITranLANObject;->release()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/liblan/util/MediaBrowser;->mIsAlive:Z

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

    iput-object p1, p0, Lcom/transsion/liblan/util/MediaBrowser;->mIgnoreList:Ljava/lang/String;

    return-void
.end method
