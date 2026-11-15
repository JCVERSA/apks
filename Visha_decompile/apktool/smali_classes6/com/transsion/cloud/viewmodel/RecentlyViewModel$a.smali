.class public final Lcom/transsion/cloud/viewmodel/RecentlyViewModel$a;
.super Lsf0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/viewmodel/RecentlyViewModel;->s0(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lcom/transsion/cloud/viewmodel/RecentlyViewModel;

.field public final synthetic e:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/viewmodel/RecentlyViewModel;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/viewmodel/RecentlyViewModel$a;->d:Lcom/transsion/cloud/viewmodel/RecentlyViewModel;

    iput-object p2, p0, Lcom/transsion/cloud/viewmodel/RecentlyViewModel$a;->e:Ljava/util/List;

    invoke-direct {p0}, Lsf0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/retrofit/reponse/BaseResponse;)V
    .locals 2

    const-string v0, "voidBaseResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->isSuccess()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/RecentlyViewModel$a;->d:Lcom/transsion/cloud/viewmodel/RecentlyViewModel;

    invoke-virtual {p0, v1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->n0(Z)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 p1, 0x46b

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lgec;->c()Lgec;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getCode()I

    move-result p1

    invoke-virtual {v0, p1}, Lgec;->o(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/cloud/viewmodel/RecentlyViewModel$a;->d:Lcom/transsion/cloud/viewmodel/RecentlyViewModel;

    invoke-virtual {p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->S()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lgec;->c()Lgec;

    move-result-object p1

    new-instance v0, Lcom/transsion/cloud/viewmodel/RecentlyViewModel$a$a;

    iget-object v1, p0, Lcom/transsion/cloud/viewmodel/RecentlyViewModel$a;->d:Lcom/transsion/cloud/viewmodel/RecentlyViewModel;

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/RecentlyViewModel$a;->e:Ljava/util/List;

    invoke-direct {v0, v1, p0}, Lcom/transsion/cloud/viewmodel/RecentlyViewModel$a$a;-><init>(Lcom/transsion/cloud/viewmodel/RecentlyViewModel;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lgec;->k(Lgec$d;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 p1, 0x469

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    const-string p0, "e"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget p0, Lcom/transsion/netdisk/R$string;->network_error:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x469

    invoke-virtual {p0, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clearRecentlyVideoDataList onError "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecentlyViewModel"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/viewmodel/RecentlyViewModel$a;->a(Lcom/transsion/retrofit/reponse/BaseResponse;)V

    return-void
.end method
