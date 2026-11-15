.class public final synthetic Lq21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljn9;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;

.field public final synthetic c:Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq21;->a:Ljava/lang/String;

    iput-object p2, p0, Lq21;->b:Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;

    iput-object p3, p0, Lq21;->c:Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    return-void
.end method


# virtual methods
.method public final subscribe(Lzm9;)V
    .locals 2

    iget-object v0, p0, Lq21;->a:Ljava/lang/String;

    iget-object v1, p0, Lq21;->b:Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;

    iget-object p0, p0, Lq21;->c:Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;->r(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/impl/CloudManagerImpl;Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;Lzm9;)V

    return-void
.end method
