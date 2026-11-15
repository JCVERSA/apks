.class public abstract Lcom/transsion/retrofit/callback/RequestCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/retrofit/callback/RequestCallback$Param;,
        Lcom/transsion/retrofit/callback/RequestCallback$OnRequestCacheDataListener;,
        Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;
    }
.end annotation


# instance fields
.field protected mParam:Lcom/transsion/retrofit/callback/RequestCallback$Param;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/retrofit/callback/RequestCallback$Param;

    invoke-direct {v0}, Lcom/transsion/retrofit/callback/RequestCallback$Param;-><init>()V

    iput-object v0, p0, Lcom/transsion/retrofit/callback/RequestCallback;->mParam:Lcom/transsion/retrofit/callback/RequestCallback$Param;

    return-void
.end method


# virtual methods
.method public onDestory()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/retrofit/callback/RequestCallback;->mParam:Lcom/transsion/retrofit/callback/RequestCallback$Param;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/retrofit/callback/RequestCallback$Param;->a(Lcom/transsion/retrofit/callback/RequestCallback$Param;Z)V

    return-void
.end method
