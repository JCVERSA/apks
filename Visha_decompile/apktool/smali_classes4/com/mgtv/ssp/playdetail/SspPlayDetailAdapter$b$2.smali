.class Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b$2;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;-><init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;

.field final synthetic b:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;Landroid/content/Context;Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b$2;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;

    iput-object p3, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b$2;->a:Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
