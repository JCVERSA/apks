.class public final Lcom/transsion/cloud/adapter/CloudFavoriteAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc74;


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

    iput-object p1, p0, Lcom/transsion/cloud/adapter/CloudFavoriteAdapter$b;->b:Lcom/transsion/cloud/adapter/CloudFavoriteAdapter;

    iput-object p2, p0, Lcom/transsion/cloud/adapter/CloudFavoriteAdapter$b;->c:Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/cloud/adapter/CloudFavoriteAdapter$b;->b:Lcom/transsion/cloud/adapter/CloudFavoriteAdapter;

    invoke-static {v0}, Lcom/transsion/cloud/adapter/CloudFavoriteAdapter;->b(Lcom/transsion/cloud/adapter/CloudFavoriteAdapter;)Le74;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/cloud/adapter/CloudFavoriteAdapter$b;->c:Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;

    invoke-interface {v0, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/cloud/adapter/CloudFavoriteAdapter$b;->a()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
