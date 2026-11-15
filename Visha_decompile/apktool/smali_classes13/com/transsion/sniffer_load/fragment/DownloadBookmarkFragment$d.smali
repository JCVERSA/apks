.class public Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgp3$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->C0(ZLcom/transsion/dbdata/beans/sniff/Bookmark;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/dbdata/beans/sniff/Bookmark;

.field public final synthetic b:Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;Lcom/transsion/dbdata/beans/sniff/Bookmark;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment$d;->b:Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;

    iput-object p2, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment$d;->a:Lcom/transsion/dbdata/beans/sniff/Bookmark;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment$d;->b:Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;

    invoke-static {v0}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->o0(Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment$d;->a:Lcom/transsion/dbdata/beans/sniff/Bookmark;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->getUri()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->j0(Lcom/transsion/playercommon/activities/BaseActivity;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
