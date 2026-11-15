.class Lcom/hunantv/imgo/data/BigDataApplistData$AppList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/json/JsonInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/imgo/data/BigDataApplistData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppList"
.end annotation


# instance fields
.field public apav:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public packet:Ljava/lang/String;

.field final synthetic this$0:Lcom/hunantv/imgo/data/BigDataApplistData;


# direct methods
.method public constructor <init>(Lcom/hunantv/imgo/data/BigDataApplistData;)V
    .locals 1

    iput-object p1, p0, Lcom/hunantv/imgo/data/BigDataApplistData$AppList;->this$0:Lcom/hunantv/imgo/data/BigDataApplistData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->e()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/imgo/data/BigDataApplistData$AppList;->name:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/imgo/data/BigDataApplistData$AppList;->packet:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->i()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/imgo/data/BigDataApplistData$AppList;->apav:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApav()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/BigDataApplistData$AppList;->apav:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/BigDataApplistData$AppList;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPacket()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/BigDataApplistData$AppList;->packet:Ljava/lang/String;

    return-object p0
.end method

.method public setApav(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/BigDataApplistData$AppList;->apav:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/BigDataApplistData$AppList;->name:Ljava/lang/String;

    return-void
.end method

.method public setPacket(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/BigDataApplistData$AppList;->packet:Ljava/lang/String;

    return-void
.end method
