.class Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter;->d(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$1;->b:Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter;

    iput p2, p0, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$1;->b:Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter;

    invoke-static {v0}, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter;->a(Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$1;->b:Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter;

    invoke-static {v0}, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter;->b(Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$1;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$1;->b:Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter;

    iget p0, p0, Lcom/mgtv/ssp/immersion/ui/ImmersionAdapter$1;->a:I

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
