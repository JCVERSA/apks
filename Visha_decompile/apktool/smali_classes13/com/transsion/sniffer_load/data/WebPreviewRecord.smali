.class public Lcom/transsion/sniffer_load/data/WebPreviewRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Entity;
.end annotation


# instance fields
.field public icon:[B
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation
.end field

.field public id:J
    .annotation build Landroidx/room/PrimaryKey;
        autoGenerate = true
    .end annotation
.end field

.field public previewBitmap:[B
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation
.end field

.field public webUrl:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation
.end field

.field public webview:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;
    .annotation build Landroidx/room/Ignore;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()[B
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->icon:[B

    return-object p0
.end method

.method public getPreviewBitmap()[B
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->previewBitmap:[B

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getWebUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->webUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getWebview()Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->webview:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    return-object p0
.end method

.method public setIcon([B)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->icon:[B

    return-void
.end method

.method public setId(I)V
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->id:J

    return-void
.end method

.method public setPreviewBitmap([B)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->previewBitmap:[B

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->title:Ljava/lang/String;

    return-void
.end method

.method public setWebUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->webUrl:Ljava/lang/String;

    return-void
.end method

.method public setWebview(Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->webview:Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;

    return-void
.end method
