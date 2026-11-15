.class public final Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory;
.super Llq0$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter;
    }
.end annotation


# instance fields
.field public final a:Lnpa;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapterFactory;


# direct methods
.method public constructor <init>(Lnpa;)V
    .locals 1

    const-string v0, "tokenRefresher"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Llq0$a;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory;->a:Lnpa;

    const-string p1, "TokenRefreshCallAdapterFactory"

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory;->b:Ljava/lang/String;

    sget-object p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapterFactory;->Companion:Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapterFactory$Companion;

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapterFactory$Companion;->create()Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapterFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory;->c:Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapterFactory;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lru8;)Llq0;
    .locals 1

    const-string v0, "returnType"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "retrofit"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory;->c:Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapterFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapterFactory;->get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lru8;)Llq0;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p2, Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter;

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory;->a:Lnpa;

    invoke-direct {p2, p1, p0}, Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter;-><init>(Llq0;Lnpa;)V

    return-object p2
.end method
