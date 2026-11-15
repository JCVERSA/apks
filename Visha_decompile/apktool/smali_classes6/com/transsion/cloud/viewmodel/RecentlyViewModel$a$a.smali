.class public final Lcom/transsion/cloud/viewmodel/RecentlyViewModel$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgec$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/viewmodel/RecentlyViewModel$a;->a(Lcom/transsion/retrofit/reponse/BaseResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/cloud/viewmodel/RecentlyViewModel;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/viewmodel/RecentlyViewModel;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/viewmodel/RecentlyViewModel$a$a;->a:Lcom/transsion/cloud/viewmodel/RecentlyViewModel;

    iput-object p2, p0, Lcom/transsion/cloud/viewmodel/RecentlyViewModel$a$a;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/dbdata/beans/VishaOauthData;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/cloud/viewmodel/RecentlyViewModel$a$a;->a:Lcom/transsion/cloud/viewmodel/RecentlyViewModel;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->n0(Z)V

    const-string p1, "RecentlyViewModel"

    const-string v0, "clearRecentlyVideoDataList refreshToken success"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/cloud/viewmodel/RecentlyViewModel$a$a;->a:Lcom/transsion/cloud/viewmodel/RecentlyViewModel;

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/RecentlyViewModel$a$a;->b:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/transsion/cloud/viewmodel/RecentlyViewModel;->s0(Ljava/util/List;)V

    return-void
.end method
