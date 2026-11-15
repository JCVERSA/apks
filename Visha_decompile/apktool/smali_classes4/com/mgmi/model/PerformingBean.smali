.class public Lcom/mgmi/model/PerformingBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/netlib/json/a;
.implements Ljava/io/Serializable;


# instance fields
.field public clips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgmi/model/ClipBean;",
            ">;"
        }
    .end annotation
.end field

.field public year:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClips()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mgmi/model/ClipBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgmi/model/PerformingBean;->clips:Ljava/util/List;

    return-object p0
.end method

.method public getYear()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/PerformingBean;->year:Ljava/lang/String;

    return-object p0
.end method

.method public setClips(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mgmi/model/ClipBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mgmi/model/PerformingBean;->clips:Ljava/util/List;

    return-void
.end method

.method public setYear(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/PerformingBean;->year:Ljava/lang/String;

    return-void
.end method
