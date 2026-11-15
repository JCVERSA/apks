.class public Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean$Release;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Release"
.end annotation


# instance fields
.field private barcode:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field private disambiguation:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private packaging:Ljava/lang/String;

.field private packagingId:Ljava/lang/String;

.field private quality:Ljava/lang/String;

.field private releaseEvents:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "release-events"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean$ReleaseEvent;",
            ">;"
        }
    .end annotation
.end field

.field private status:Ljava/lang/String;

.field private statusId:Ljava/lang/String;

.field private textRepresentation:Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean$TextRepresentation;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean$Release;->date:Ljava/lang/String;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean$Release;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean$Release;->status:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean$Release;->title:Ljava/lang/String;

    return-object p0
.end method
