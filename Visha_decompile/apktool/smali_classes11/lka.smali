.class public final synthetic Llka;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llka;->b:Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;

    iput-object p2, p0, Llka;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Llka;->b:Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;

    iget-object p0, p0, Llka;->c:Ljava/lang/String;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p0, p1}, Lcom/transsion/onlinevideo/tiktok/repository/a;->k(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;Ljava/lang/String;Ljava/lang/Throwable;)Lzfb;

    move-result-object p0

    return-object p0
.end method
