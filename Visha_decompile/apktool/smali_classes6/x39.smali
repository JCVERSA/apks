.class public final synthetic Lx39;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Lcom/transsion/cloud/fragment/SearchCloudFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/cloud/fragment/SearchCloudFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx39;->b:Lcom/transsion/cloud/fragment/SearchCloudFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lx39;->b:Lcom/transsion/cloud/fragment/SearchCloudFragment;

    check-cast p1, Lcom/transsion/dbdata/beans/sniff/DownloadMain;

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/SearchCloudFragment;->A0(Lcom/transsion/cloud/fragment/SearchCloudFragment;Lcom/transsion/dbdata/beans/sniff/DownloadMain;)Lzfb;

    move-result-object p0

    return-object p0
.end method
