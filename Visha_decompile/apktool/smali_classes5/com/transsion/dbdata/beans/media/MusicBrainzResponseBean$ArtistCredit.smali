.class public Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean$ArtistCredit;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArtistCredit"
.end annotation


# instance fields
.field private artist:Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean$Artist;

.field private joinphrase:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean$ArtistCredit;->name:Ljava/lang/String;

    return-object p0
.end method
