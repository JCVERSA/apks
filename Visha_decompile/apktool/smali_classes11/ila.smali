.class public final synthetic Lila;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lila;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lila;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->E(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;)Lzfb;

    move-result-object p0

    return-object p0
.end method
