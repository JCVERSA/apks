.class public Lcom/transsion/playercommon/widgets/CloudUploadView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public b:Landroid/content/Context;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/Button;

.field public e:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/CloudUploadView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/CloudUploadView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/CloudUploadView;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/CloudUploadView;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$layout;->bottom_bar_cloud_upload:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$id;->tv_select_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/playercommon/widgets/CloudUploadView;->c:Landroid/widget/TextView;

    sget v1, Lcom/transsion/playercommon/R$string;->items:I

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/CloudUploadView;->c:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p1, Lcom/transsion/playercommon/R$id;->btn_upload:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/CloudUploadView;->d:Landroid/widget/Button;

    return-void
.end method

.method public getBtnUploadView()Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/CloudUploadView;->d:Landroid/widget/Button;

    return-object p0
.end method

.method public getVideoDataList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/VideoCloudDataLocal;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/CloudUploadView;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method public setVideoDataList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/VideoCloudDataLocal;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CloudUploadView;->d:Landroid/widget/Button;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/CloudUploadView;->e:Ljava/util/ArrayList;

    return-void
.end method

.method public updateCount(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CloudUploadView;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v1, Lcom/transsion/playercommon/R$string;->items:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/CloudUploadView;->c:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
