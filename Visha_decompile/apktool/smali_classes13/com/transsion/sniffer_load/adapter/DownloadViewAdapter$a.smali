.class public Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter$a;
.super Lux0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter;->g(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;

.field public final synthetic c:Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter;ILcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter$a;->c:Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter;

    iput-object p3, p0, Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter$a;->b:Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;

    invoke-direct {p0, p2}, Lux0;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter$a;->c:Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter;

    iget-object v1, p0, Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter$a;->b:Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;

    invoke-virtual {v0, v1, p1}, Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter;->i(Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter$a;->c:Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter;

    invoke-static {p1}, Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter;->b(Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter$a;->c:Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter;

    invoke-static {v0}, Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter;->c(Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter;)I

    move-result v0

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/DownloadViewAdapter$a;->b:Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;

    invoke-static {p1, v0, p0}, Ldz5;->c(Ljava/lang/String;ILcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;)V

    return-void
.end method
