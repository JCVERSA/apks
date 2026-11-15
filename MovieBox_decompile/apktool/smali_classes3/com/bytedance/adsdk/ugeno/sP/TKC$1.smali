.class Lcom/bytedance/adsdk/ugeno/sP/TKC$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/adsdk/ugeno/sP/TKC;->EjP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/adsdk/ugeno/sP/TKC;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/ugeno/sP/TKC;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC$1;->Sj:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC$1;->Sj:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/bytedance/adsdk/ugeno/sP/TKC;->eMB:Lcom/bytedance/adsdk/ugeno/core/vS;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(Lcom/bytedance/adsdk/ugeno/sP/TKC;)Z

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
