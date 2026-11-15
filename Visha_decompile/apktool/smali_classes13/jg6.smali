.class public final synthetic Ljg6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter;

.field public final synthetic c:Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;

.field public final synthetic d:Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter;Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljg6;->b:Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter;

    iput-object p2, p0, Ljg6;->c:Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;

    iput-object p3, p0, Ljg6;->d:Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Ljg6;->b:Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter;

    iget-object v1, p0, Ljg6;->c:Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;

    iget-object p0, p0, Ljg6;->d:Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter;->c(Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter;Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;Landroid/view/View;)V

    return-void
.end method
