.class public Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private resId:I

.field private selected:Z

.field private selectedResId:I

.field private selectedTitle:Ljava/lang/String;

.field private selectedUrl:Ljava/lang/String;

.field private title:I

.field private type:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;->type:I

    iput p4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;->selectedResId:I

    iput p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;->resId:I

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;->title:I

    iput-boolean p5, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;->selected:Z

    return-void
.end method


# virtual methods
.method public getResId()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;->resId:I

    return p0
.end method

.method public getSelectedResId()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;->selectedResId:I

    return p0
.end method

.method public getSelectedUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;->selectedUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;->title:I

    return p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;->type:I

    return p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;->url:Ljava/lang/String;

    return-object p0
.end method

.method public isSelected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;->selected:Z

    return p0
.end method

.method public setResId(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;->resId:I

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;->selected:Z

    return-void
.end method

.method public setSelectedResId(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;->selectedResId:I

    return-void
.end method

.method public setSelectedUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;->selectedUrl:Ljava/lang/String;

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;->title:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;->type:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/data/OptionMenu;->url:Ljava/lang/String;

    return-void
.end method
