.class public final Lcom/transsion/cloud/adapter/CloudFavoriteAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/adapter/CloudFavoriteAdapter;->d(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/cloud/adapter/CloudFavoriteAdapter;

.field public final synthetic c:Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/adapter/CloudFavoriteAdapter;Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/adapter/CloudFavoriteAdapter$a;->b:Lcom/transsion/cloud/adapter/CloudFavoriteAdapter;

    iput-object p2, p0, Lcom/transsion/cloud/adapter/CloudFavoriteAdapter$a;->c:Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloud/adapter/CloudFavoriteAdapter$a;->b:Lcom/transsion/cloud/adapter/CloudFavoriteAdapter;

    invoke-static {v0}, Lcom/transsion/cloud/adapter/CloudFavoriteAdapter;->c(Lcom/transsion/cloud/adapter/CloudFavoriteAdapter;)Ls74;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/cloud/adapter/CloudFavoriteAdapter$a;->c:Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getVideoList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/cloud/adapter/CloudFavoriteAdapter$a;->c:Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;

    invoke-interface {v0, p1, p0}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/adapter/CloudFavoriteAdapter$a;->a(I)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
