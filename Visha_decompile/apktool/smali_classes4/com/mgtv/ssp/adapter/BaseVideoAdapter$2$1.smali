.class Lcom/mgtv/ssp/adapter/BaseVideoAdapter$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/adapter/BaseVideoAdapter$2;->onUpdateAdTime(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/adapter/BaseVideoAdapter$2;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/adapter/BaseVideoAdapter$2;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$2$1;->a:Lcom/mgtv/ssp/adapter/BaseVideoAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object p0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$2$1;->a:Lcom/mgtv/ssp/adapter/BaseVideoAdapter$2;

    iget-object v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$2;->b:Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    iget p0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$2;->a:I

    sget-object v1, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->i:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method
