.class public Lcom/mgtv/ssp/bean/VideoDetailInfoBean;
.super Lcom/mgtv/ssp/bean/VideoInfoBean;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/ssp/bean/VideoDetailInfoBean$InfoBean;
    }
.end annotation


# instance fields
.field private actors:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "actors"
    .end annotation
.end field

.field private area:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "area"
    .end annotation
.end field

.field private category:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "category"
    .end annotation
.end field

.field private directors:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "directors"
    .end annotation
.end field

.field private introList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "introList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgtv/ssp/bean/VideoDetailInfoBean$InfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private schema:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "schema"
    .end annotation
.end field

.field private story:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "story"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mgtv/ssp/bean/VideoInfoBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getActors()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/bean/VideoDetailInfoBean;->actors:Ljava/lang/String;

    return-object p0
.end method

.method public getArea()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/bean/VideoDetailInfoBean;->area:Ljava/lang/String;

    return-object p0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/bean/VideoDetailInfoBean;->category:Ljava/lang/String;

    return-object p0
.end method

.method public getDirectors()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/bean/VideoDetailInfoBean;->directors:Ljava/lang/String;

    return-object p0
.end method

.method public getIntroList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mgtv/ssp/bean/VideoDetailInfoBean$InfoBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgtv/ssp/bean/VideoDetailInfoBean;->introList:Ljava/util/List;

    return-object p0
.end method

.method public getSchema()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/mgtv/ssp/bean/VideoDetailInfoBean;->schema:Ljava/lang/String;

    const-string v0, "MG^UNION!2022@"

    invoke-static {p0, v0}, Lcom/mgtv/ssp/utils/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSchemaV2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/bean/VideoDetailInfoBean;->schema:Ljava/lang/String;

    return-object p0
.end method

.method public getStory()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/bean/VideoDetailInfoBean;->story:Ljava/lang/String;

    return-object p0
.end method

.method public setActors(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/VideoDetailInfoBean;->actors:Ljava/lang/String;

    return-void
.end method

.method public setArea(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/VideoDetailInfoBean;->area:Ljava/lang/String;

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/VideoDetailInfoBean;->category:Ljava/lang/String;

    return-void
.end method

.method public setDirectors(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/VideoDetailInfoBean;->directors:Ljava/lang/String;

    return-void
.end method

.method public setIntroList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mgtv/ssp/bean/VideoDetailInfoBean$InfoBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mgtv/ssp/bean/VideoDetailInfoBean;->introList:Ljava/util/List;

    return-void
.end method

.method public setSchema(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/VideoDetailInfoBean;->schema:Ljava/lang/String;

    return-void
.end method

.method public setStory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/VideoDetailInfoBean;->story:Ljava/lang/String;

    return-void
.end method
