.class public Lcom/transsion/liblan/stubs/StubTranMedia;
.super Lcom/transsion/liblan/stubs/StubTranLANObject;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/liblan/interfaces/ITranMedia;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/liblan/stubs/StubTranLANObject<",
        "Lcom/transsion/liblan/interfaces/ITranMedia$EventTran;",
        ">;",
        "Lcom/transsion/liblan/interfaces/ITranMedia;"
    }
.end annotation


# instance fields
.field private mITranLibLAN:Lcom/transsion/liblan/interfaces/ITranLibLAN;

.field private mType:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/transsion/liblan/interfaces/ITranLibLAN;Landroid/content/res/AssetFileDescriptor;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/transsion/liblan/stubs/StubTranLANObject;-><init>()V

    const/4 p2, 0x0

    .line 10
    iput p2, p0, Lcom/transsion/liblan/stubs/StubTranMedia;->mType:I

    .line 11
    iput-object p1, p0, Lcom/transsion/liblan/stubs/StubTranMedia;->mITranLibLAN:Lcom/transsion/liblan/interfaces/ITranLibLAN;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/liblan/interfaces/ITranLibLAN;Landroid/net/Uri;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/transsion/liblan/stubs/StubTranLANObject;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/transsion/liblan/stubs/StubTranMedia;->mType:I

    .line 4
    iput-object p2, p0, Lcom/transsion/liblan/stubs/StubTranMedia;->mUri:Landroid/net/Uri;

    .line 5
    iput-object p1, p0, Lcom/transsion/liblan/stubs/StubTranMedia;->mITranLibLAN:Lcom/transsion/liblan/interfaces/ITranLibLAN;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/liblan/interfaces/ITranLibLAN;Ljava/io/FileDescriptor;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/transsion/liblan/stubs/StubTranLANObject;-><init>()V

    const/4 p2, 0x0

    .line 7
    iput p2, p0, Lcom/transsion/liblan/stubs/StubTranMedia;->mType:I

    .line 8
    iput-object p1, p0, Lcom/transsion/liblan/stubs/StubTranMedia;->mITranLibLAN:Lcom/transsion/liblan/interfaces/ITranLibLAN;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/liblan/interfaces/ITranLibLAN;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/transsion/liblan/stubs/StubTranMedia;-><init>(Lcom/transsion/liblan/interfaces/ITranLibLAN;Landroid/net/Uri;)V

    return-void
.end method

.method private getTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/transsion/liblan/stubs/StubTranMedia;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/liblan/stubs/StubTranMedia;->mUri:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/transsion/liblan/stubs/StubTranMedia;->mUri:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addOption(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addSlave(Lcom/transsion/liblan/interfaces/ITranMedia$Slave;)V
    .locals 0

    return-void
.end method

.method public clearSlaves()V
    .locals 0

    return-void
.end method

.method public getDuration()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMeta(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/liblan/stubs/StubTranMedia;->mUri:Landroid/net/Uri;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_2

    const/16 p0, 0xa

    if-eq p1, p0, :cond_1

    return-object v1

    .line 2
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_2
    invoke-direct {p0}, Lcom/transsion/liblan/stubs/StubTranMedia;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMeta(IZ)Ljava/lang/String;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/transsion/liblan/stubs/StubTranMedia;->getMeta(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSlaves()[Lcom/transsion/liblan/interfaces/ITranMedia$Slave;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Lcom/transsion/liblan/interfaces/ITranMedia$Slave;

    return-object p0
.end method

.method public getState()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getStats()Lcom/transsion/liblan/interfaces/ITranMedia$Stats;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTrack(I)Lcom/transsion/liblan/interfaces/ITranMedia$Track;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTrackCount()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTranLibLAN()Lcom/transsion/liblan/interfaces/ITranLibLAN;
    .locals 0

    iget-object p0, p0, Lcom/transsion/liblan/stubs/StubTranMedia;->mITranLibLAN:Lcom/transsion/liblan/interfaces/ITranLibLAN;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/transsion/liblan/stubs/StubTranMedia;->mType:I

    return p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/transsion/liblan/stubs/StubTranMedia;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public isParsed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isReleased()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public parse()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public parse(I)Z
    .locals 0

    .line 2
    const/4 p0, 0x0

    return p0
.end method

.method public parseAsync()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public parseAsync(I)Z
    .locals 0

    .line 2
    const/4 p0, 0x0

    return p0
.end method

.method public parseAsync(II)Z
    .locals 0

    .line 3
    const/4 p0, 0x0

    return p0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public retain()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setEventListener(Lcom/transsion/liblan/interfaces/ITranMedia$EventListener;)V
    .locals 0

    return-void
.end method

.method public setHWDecoderEnabled(ZZ)V
    .locals 0

    return-void
.end method

.method public setPlayerDefaultOptions()V
    .locals 0

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/liblan/stubs/StubTranMedia;->mType:I

    return-void
.end method

.method public subItems()Lcom/transsion/liblan/interfaces/ITranMediaList;
    .locals 0

    new-instance p0, Lcom/transsion/liblan/stubs/StubTranMediaList;

    invoke-direct {p0}, Lcom/transsion/liblan/stubs/StubTranMediaList;-><init>()V

    return-object p0
.end method
