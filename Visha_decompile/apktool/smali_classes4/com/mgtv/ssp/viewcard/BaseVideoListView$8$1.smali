.class Lcom/mgtv/ssp/viewcard/BaseVideoListView$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/authbase/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/viewcard/BaseVideoListView$8;->onResult(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/viewcard/BaseVideoListView$8;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/viewcard/BaseVideoListView$8;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$8$1;->a:Lcom/mgtv/ssp/viewcard/BaseVideoListView$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$8$1;->a:Lcom/mgtv/ssp/viewcard/BaseVideoListView$8;

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$8;->a:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->m()V

    :cond_0
    return-void
.end method
