.class public final Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$getSearchData$1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgec$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$getSearchData$1;->a(Lcom/transsion/retrofit/reponse/BaseResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/Boolean;

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;Ljava/lang/String;Ljava/lang/Boolean;II)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$getSearchData$1$a;->a:Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;

    iput-object p2, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$getSearchData$1$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$getSearchData$1$a;->c:Ljava/lang/Boolean;

    iput p4, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$getSearchData$1$a;->d:I

    iput p5, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$getSearchData$1$a;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/dbdata/beans/VishaOauthData;)V
    .locals 3

    iget-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$getSearchData$1$a;->a:Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->g(Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;Z)V

    const-string p1, "CloudSearchViewModel"

    const-string v0, "getSearchData refreshToken success"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$getSearchData$1$a;->a:Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;

    iget-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$getSearchData$1$a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$getSearchData$1$a;->c:Ljava/lang/Boolean;

    iget v2, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$getSearchData$1$a;->d:I

    iget p0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$getSearchData$1$a;->e:I

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->r(Ljava/lang/String;Ljava/lang/Boolean;II)V

    return-void
.end method
