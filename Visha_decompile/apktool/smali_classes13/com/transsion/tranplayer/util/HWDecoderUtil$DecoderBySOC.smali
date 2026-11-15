.class Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/tranplayer/util/HWDecoderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoderBySOC"
.end annotation


# instance fields
.field public final dec:Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;

.field public final key:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;->value:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/tranplayer/util/HWDecoderUtil$DecoderBySOC;->dec:Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;

    return-void
.end method
