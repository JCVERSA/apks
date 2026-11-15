.class Lcom/transsion/liblan/util/HWDecoderUtil$AudioOutputBySOC;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/liblan/util/HWDecoderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioOutputBySOC"
.end annotation


# instance fields
.field public final aout:Lcom/transsion/liblan/util/HWDecoderUtil$AudioOutput;

.field public final key:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/liblan/util/HWDecoderUtil$AudioOutput;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/liblan/util/HWDecoderUtil$AudioOutputBySOC;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/liblan/util/HWDecoderUtil$AudioOutputBySOC;->value:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/liblan/util/HWDecoderUtil$AudioOutputBySOC;->aout:Lcom/transsion/liblan/util/HWDecoderUtil$AudioOutput;

    return-void
.end method
