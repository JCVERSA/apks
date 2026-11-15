.class public final synthetic Lmla;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

.field public final synthetic c:Le74;

.field public final synthetic d:Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Le74;Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmla;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    iput-object p2, p0, Lmla;->c:Le74;

    iput-object p3, p0, Lmla;->d:Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lmla;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    iget-object v1, p0, Lmla;->c:Le74;

    iget-object p0, p0, Lmla;->d:Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->Q(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Le74;Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;Ljava/lang/Throwable;)Lzfb;

    move-result-object p0

    return-object p0
.end method
