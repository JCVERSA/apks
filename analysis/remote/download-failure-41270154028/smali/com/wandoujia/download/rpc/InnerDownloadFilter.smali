.class public Lcom/wandoujia/download/rpc/InnerDownloadFilter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wandoujia/download/rpc/InnerDownloadFilter$a;,
        Lcom/wandoujia/download/rpc/InnerDownloadFilter$Operator;,
        Lcom/wandoujia/download/rpc/InnerDownloadFilter$FilterArea;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/wandoujia/download/rpc/InnerDownloadFilter;->a:Ljava/util/List;

    return-void
.end method

.method public static b()Lcom/wandoujia/download/rpc/InnerDownloadFilter$a;
    .locals 2

    new-instance v0, Lcom/wandoujia/download/rpc/InnerDownloadFilter$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/wandoujia/download/rpc/InnerDownloadFilter$a;-><init>(Lo/dn3;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/rpc/InnerDownloadFilter;->a:Ljava/util/List;

    return-object v0
.end method
