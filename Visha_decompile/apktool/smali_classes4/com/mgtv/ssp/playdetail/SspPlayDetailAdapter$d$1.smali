.class Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d;-><init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;

.field final synthetic b:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d;Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d$1;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d;

    iput-object p2, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d$1;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d$1;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d;

    iget-object p1, p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d;->i:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;

    invoke-static {p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->c(Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;)Lcom/mgtv/ssp/adapter/listener/OnItemChildClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d$1;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d;

    iget-object p1, p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d;->i:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;

    invoke-static {p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->c(Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;)Lcom/mgtv/ssp/adapter/listener/OnItemChildClickListener;

    move-result-object p1

    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d$1;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d;

    invoke-static {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d;->a(Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d;)Lcom/mgtv/ssp/f;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/mgtv/ssp/adapter/listener/OnItemChildClickListener;->onItemChildClick(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
