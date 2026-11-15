.class public Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;
.super Lcom/hunantv/imgo/net/entity/JsonEntity;
.source "SourceFile"


# static fields
.field public static final DEFINITION_FLOW:I = 0x0

.field public static final DEFINITION_HIGH:I = 0x2

.field public static final DEFINITION_NORMAL:I = 0x1

.field public static final DEFINITION_SUPER:I = 0x3

.field public static final INT_FALSE:I = 0x0

.field public static final INT_TRUE:I = 0x1


# instance fields
.field public definition:I

.field public disp:Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;

.field public fileSize:Ljava/lang/String;

.field public fileSourceType:I

.field public fileStartTime:Ljava/lang/String;

.field public filebitrate:Ljava/lang/String;

.field public framerate:Ljava/lang/String;

.field public m3u8:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public needPay:I

.field public scale:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public videoHeight:Ljava/lang/String;

.field public videoWidth:Ljava/lang/String;

.field public videoformat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/imgo/net/entity/JsonEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayerAuthRouterEntity{definition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", needPay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->needPay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", disp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->disp:Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", m3u8="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->m3u8:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->fileSize:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
