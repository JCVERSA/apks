.class Lcom/mgtv/ssp/adapter/BaseVideoAdapter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->d(I)V
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

    iput-object p1, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$4;->b:Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    iput p2, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$4;->b:Lcom/mgtv/ssp/adapter/BaseVideoAdapter;

    iget-object v1, v0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->d:Ljava/util/List;

    if-eqz v1, :cond_0

    iget p0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$4;->a:I

    invoke-static {v0, p0}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->a(Lcom/mgtv/ssp/adapter/BaseVideoAdapter;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
