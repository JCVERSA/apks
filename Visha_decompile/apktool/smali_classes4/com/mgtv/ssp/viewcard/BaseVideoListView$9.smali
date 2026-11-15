.class Lcom/mgtv/ssp/viewcard/BaseVideoListView$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/viewcard/BaseVideoListView;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/viewcard/BaseVideoListView;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/viewcard/BaseVideoListView;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$9;->a:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$9;->a:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    iget-wide v2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->z:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long p1, v2, v4

    if-ltz p1, :cond_0

    iput-wide v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->z:J

    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->q()V

    :cond_0
    return-void
.end method
