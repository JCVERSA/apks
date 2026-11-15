.class public final synthetic Lvla;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

.field public final synthetic c:Lc74;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Lc74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvla;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    iput-object p2, p0, Lvla;->c:Lc74;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lvla;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    iget-object p0, p0, Lvla;->c:Lc74;

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;

    invoke-static {v0, p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->G(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Lc74;Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;)Lzfb;

    move-result-object p0

    return-object p0
.end method
