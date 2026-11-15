.class public final synthetic Lcom/transsion/cloud/viewmodel/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Lcom/transsion/cloud/viewmodel/CloudViewModel;

.field public final synthetic c:Lcom/transsion/dbdata/beans/VideoCloudData;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/cloud/viewmodel/CloudViewModel;Lcom/transsion/dbdata/beans/VideoCloudData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloud/viewmodel/d;->b:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    iput-object p2, p0, Lcom/transsion/cloud/viewmodel/d;->c:Lcom/transsion/dbdata/beans/VideoCloudData;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/cloud/viewmodel/d;->b:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/d;->c:Lcom/transsion/dbdata/beans/VideoCloudData;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p0, p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel$deleteFile$1;->g(Lcom/transsion/cloud/viewmodel/CloudViewModel;Lcom/transsion/dbdata/beans/VideoCloudData;Z)Lzfb;

    move-result-object p0

    return-object p0
.end method
