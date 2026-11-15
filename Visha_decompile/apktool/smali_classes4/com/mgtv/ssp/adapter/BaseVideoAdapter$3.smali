.class Lcom/mgtv/ssp/adapter/BaseVideoAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/mgtv/ssp/adapter/BaseVideoAdapter;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/adapter/BaseVideoAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$3;->b:Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    iput p2, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$3;->b:Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    iget p0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$3;->a:I

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
