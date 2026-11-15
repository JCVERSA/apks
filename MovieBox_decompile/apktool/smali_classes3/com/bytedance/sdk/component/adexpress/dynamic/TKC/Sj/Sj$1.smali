.class Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;ILandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Landroid/view/ViewGroup;

.field final synthetic sP:Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj$1;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj$1;->Sj:Landroid/view/ViewGroup;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj$1;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/ref/SoftReference;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj$1;->Sj:Landroid/view/ViewGroup;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj;Ljava/lang/ref/SoftReference;)Ljava/lang/ref/SoftReference;

    .line 11
    .line 12
    .line 13
    return-void
.end method
