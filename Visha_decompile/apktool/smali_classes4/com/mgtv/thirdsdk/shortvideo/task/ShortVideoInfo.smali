.class public Lcom/mgtv/thirdsdk/shortvideo/task/ShortVideoInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/json/JsonInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/thirdsdk/shortvideo/task/ShortVideoInfo$a;
    }
.end annotation


# instance fields
.field private url:Ljava/lang/String;

.field private user:Lcom/mgtv/thirdsdk/shortvideo/task/ShortVideoInfo$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/shortvideo/task/ShortVideoInfo;->url:Ljava/lang/String;

    return-object p0
.end method

.method public getUser()Lcom/mgtv/thirdsdk/shortvideo/task/ShortVideoInfo$a;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/shortvideo/task/ShortVideoInfo;->user:Lcom/mgtv/thirdsdk/shortvideo/task/ShortVideoInfo$a;

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/shortvideo/task/ShortVideoInfo;->url:Ljava/lang/String;

    return-void
.end method

.method public setUser(Lcom/mgtv/thirdsdk/shortvideo/task/ShortVideoInfo$a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/shortvideo/task/ShortVideoInfo;->user:Lcom/mgtv/thirdsdk/shortvideo/task/ShortVideoInfo$a;

    return-void
.end method
