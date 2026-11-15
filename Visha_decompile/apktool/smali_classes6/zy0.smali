.class public final synthetic Lzy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/DragStartHelper$OnDragStartListener;


# instance fields
.field public final synthetic a:Lcom/chad/library/adapter/base/BaseViewHolder;

.field public final synthetic b:Lcom/transsion/cloud/adapter/CloudDataAdapter;

.field public final synthetic c:Lcom/transsion/dbdata/beans/VideoCloudData;


# direct methods
.method public synthetic constructor <init>(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/cloud/adapter/CloudDataAdapter;Lcom/transsion/dbdata/beans/VideoCloudData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzy0;->a:Lcom/chad/library/adapter/base/BaseViewHolder;

    iput-object p2, p0, Lzy0;->b:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    iput-object p3, p0, Lzy0;->c:Lcom/transsion/dbdata/beans/VideoCloudData;

    return-void
.end method


# virtual methods
.method public final onDragStart(Landroid/view/View;Landroidx/core/view/DragStartHelper;)Z
    .locals 2

    iget-object v0, p0, Lzy0;->a:Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v1, p0, Lzy0;->b:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    iget-object p0, p0, Lzy0;->c:Lcom/transsion/dbdata/beans/VideoCloudData;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/cloud/adapter/CloudDataAdapter;Lcom/transsion/dbdata/beans/VideoCloudData;Landroid/view/View;Landroidx/core/view/DragStartHelper;)Z

    move-result p0

    return p0
.end method
