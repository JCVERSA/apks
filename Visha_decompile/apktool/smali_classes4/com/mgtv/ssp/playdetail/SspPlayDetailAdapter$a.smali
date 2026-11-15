.class Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$a;
.super Lcom/mgtv/ssp/adapter/BaseHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;Landroid/view/View;)V
    .locals 0
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$a;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;

    invoke-direct {p0, p2}, Lcom/mgtv/ssp/adapter/BaseHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
