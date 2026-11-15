.class public final synthetic Lkla;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

.field public final synthetic c:Le74;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Le74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkla;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    iput-object p2, p0, Lkla;->c:Le74;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkla;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    iget-object p0, p0, Lkla;->c:Le74;

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;

    invoke-static {v0, p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->N(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Le74;Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;)Lzfb;

    move-result-object p0

    return-object p0
.end method
