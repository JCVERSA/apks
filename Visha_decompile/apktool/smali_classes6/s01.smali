.class public final synthetic Ls01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls01;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ls01;->b:Ljava/util/List;

    check-cast p1, Lcom/transsion/dbdata/beans/VideoCloudData;

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->h1(Ljava/util/List;Lcom/transsion/dbdata/beans/VideoCloudData;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
