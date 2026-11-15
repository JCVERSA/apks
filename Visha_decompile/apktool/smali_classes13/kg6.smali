.class public final synthetic Lkg6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter;

.field public final synthetic c:Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter;Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkg6;->b:Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter;

    iput-object p2, p0, Lkg6;->c:Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lkg6;->b:Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter;

    iget-object p0, p0, Lkg6;->c:Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;

    invoke-static {v0, p0, p1}, Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter;->b(Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter;Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;Landroid/view/View;)V

    return-void
.end method
