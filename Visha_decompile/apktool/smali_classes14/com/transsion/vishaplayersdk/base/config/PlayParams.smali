.class public Lcom/transsion/vishaplayersdk/base/config/PlayParams;
.super Lcom/transsion/dbdata/beans/media/PlayVideoData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/vishaplayersdk/base/config/PlayParams$PlayParamsBuilder;
    }
.end annotation


# instance fields
.field private contentid:Ljava/lang/String;

.field private startPosition:I

.field private videoid:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/transsion/dbdata/beans/media/PlayVideoData;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lw78;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/base/config/PlayParams;-><init>()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/vishaplayersdk/base/config/PlayParams;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayParams;->contentid:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic c(Lcom/transsion/vishaplayersdk/base/config/PlayParams;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayParams;->startPosition:I

    return-void
.end method

.method public static bridge synthetic d(Lcom/transsion/vishaplayersdk/base/config/PlayParams;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayParams;->videoid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContentid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayParams;->contentid:Ljava/lang/String;

    return-object p0
.end method

.method public getStartPosition()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayParams;->startPosition:I

    return p0
.end method

.method public getVideoid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayParams;->videoid:Ljava/lang/String;

    return-object p0
.end method

.method public isVaild()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayParams;->videoid:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayParams;->contentid:Ljava/lang/String;

    invoke-static {p0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayParams{videoid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayParams;->videoid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", contentid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/base/config/PlayParams;->contentid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", startPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayParams;->startPosition:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
