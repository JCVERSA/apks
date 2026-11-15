.class public final synthetic Lcka;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/tiktok/repository/a;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/tiktok/repository/a;Ljava/util/List;Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcka;->b:Lcom/transsion/onlinevideo/tiktok/repository/a;

    iput-object p2, p0, Lcka;->c:Ljava/util/List;

    iput-object p3, p0, Lcka;->d:Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcka;->b:Lcom/transsion/onlinevideo/tiktok/repository/a;

    iget-object v1, p0, Lcka;->c:Ljava/util/List;

    iget-object p0, p0, Lcka;->d:Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;

    check-cast p1, Lcom/transsion/onlinevideo/tiktok/repository/a$b;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/onlinevideo/tiktok/repository/a;->i(Lcom/transsion/onlinevideo/tiktok/repository/a;Ljava/util/List;Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;Lcom/transsion/onlinevideo/tiktok/repository/a$b;)Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;

    move-result-object p0

    return-object p0
.end method
