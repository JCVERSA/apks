.class public Lcom/transsion/vishaplayersdk/gsyplayer/model/GSYVideoModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/model/GSYVideoModel;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/model/GSYVideoModel;->mTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/model/GSYVideoModel;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/model/GSYVideoModel;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/model/GSYVideoModel;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/model/GSYVideoModel;->mUrl:Ljava/lang/String;

    return-void
.end method
