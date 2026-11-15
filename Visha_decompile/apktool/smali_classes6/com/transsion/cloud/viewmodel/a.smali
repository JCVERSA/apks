.class public final synthetic Lcom/transsion/cloud/viewmodel/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/transsion/dbdata/beans/cloud/SearchResponseData;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;Ljava/lang/String;Lcom/transsion/dbdata/beans/cloud/SearchResponseData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloud/viewmodel/a;->b:Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;

    iput-object p2, p0, Lcom/transsion/cloud/viewmodel/a;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/cloud/viewmodel/a;->d:Lcom/transsion/dbdata/beans/cloud/SearchResponseData;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloud/viewmodel/a;->b:Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;

    iget-object v1, p0, Lcom/transsion/cloud/viewmodel/a;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/a;->d:Lcom/transsion/dbdata/beans/cloud/SearchResponseData;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$deleteFile$1;->g(Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;Ljava/lang/String;Lcom/transsion/dbdata/beans/cloud/SearchResponseData;Z)Lzfb;

    move-result-object p0

    return-object p0
.end method
