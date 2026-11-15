.class Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj;->Sj(Lcom/bytedance/sdk/component/HiB/Ym;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Landroid/widget/ImageView;

.field final synthetic TKC:Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj;

.field final synthetic sP:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj$1;->TKC:Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj$1;->Sj:Landroid/widget/ImageView;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj$1;->sP:Landroid/graphics/Bitmap;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj$1;->Sj:Landroid/widget/ImageView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj$1;->sP:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
