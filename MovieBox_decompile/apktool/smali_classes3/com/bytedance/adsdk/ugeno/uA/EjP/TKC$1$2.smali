.class Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$1$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$1;->Sj(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Landroid/graphics/drawable/Drawable;

.field final synthetic sP:Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$1;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$1;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$1$2;->sP:Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$1$2;->Sj:Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$1$2;->sP:Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$1;->Sj:Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->Jcg(Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$1$2;->Sj:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
