.class public final Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;
.super Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/CeaDecoder;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;,
        Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;
    }
.end annotation


# static fields
.field private static final CC_VALID_FLAG:I = 0x4

.field private static final CHARACTER_BIG_CARONS:I = 0x2a

.field private static final CHARACTER_BIG_OE:I = 0x2c

.field private static final CHARACTER_BOLD_BULLET:I = 0x35

.field private static final CHARACTER_CLOSE_DOUBLE_QUOTE:I = 0x34

.field private static final CHARACTER_CLOSE_SINGLE_QUOTE:I = 0x32

.field private static final CHARACTER_DIAERESIS_Y:I = 0x3f

.field private static final CHARACTER_ELLIPSIS:I = 0x25

.field private static final CHARACTER_FIVE_EIGHTHS:I = 0x78

.field private static final CHARACTER_HORIZONTAL_BORDER:I = 0x7d

.field private static final CHARACTER_LOWER_LEFT_BORDER:I = 0x7c

.field private static final CHARACTER_LOWER_RIGHT_BORDER:I = 0x7e

.field private static final CHARACTER_MN:I = 0x7f

.field private static final CHARACTER_NBTSP:I = 0x21

.field private static final CHARACTER_ONE_EIGHTH:I = 0x76

.field private static final CHARACTER_OPEN_DOUBLE_QUOTE:I = 0x33

.field private static final CHARACTER_OPEN_SINGLE_QUOTE:I = 0x31

.field private static final CHARACTER_SEVEN_EIGHTHS:I = 0x79

.field private static final CHARACTER_SM:I = 0x3d

.field private static final CHARACTER_SMALL_CARONS:I = 0x3a

.field private static final CHARACTER_SMALL_OE:I = 0x3c

.field private static final CHARACTER_SOLID_BLOCK:I = 0x30

.field private static final CHARACTER_THREE_EIGHTHS:I = 0x77

.field private static final CHARACTER_TM:I = 0x39

.field private static final CHARACTER_TSP:I = 0x20

.field private static final CHARACTER_UPPER_LEFT_BORDER:I = 0x7f

.field private static final CHARACTER_UPPER_RIGHT_BORDER:I = 0x7b

.field private static final CHARACTER_VERTICAL_BORDER:I = 0x7a

.field private static final COMMAND_BS:I = 0x8

.field private static final COMMAND_CLW:I = 0x88

.field private static final COMMAND_CR:I = 0xd

.field private static final COMMAND_CW0:I = 0x80

.field private static final COMMAND_CW1:I = 0x81

.field private static final COMMAND_CW2:I = 0x82

.field private static final COMMAND_CW3:I = 0x83

.field private static final COMMAND_CW4:I = 0x84

.field private static final COMMAND_CW5:I = 0x85

.field private static final COMMAND_CW6:I = 0x86

.field private static final COMMAND_CW7:I = 0x87

.field private static final COMMAND_DF0:I = 0x98

.field private static final COMMAND_DF1:I = 0x99

.field private static final COMMAND_DF2:I = 0x9a

.field private static final COMMAND_DF3:I = 0x9b

.field private static final COMMAND_DF4:I = 0x9c

.field private static final COMMAND_DF5:I = 0x9d

.field private static final COMMAND_DF6:I = 0x9e

.field private static final COMMAND_DF7:I = 0x9f

.field private static final COMMAND_DLC:I = 0x8e

.field private static final COMMAND_DLW:I = 0x8c

.field private static final COMMAND_DLY:I = 0x8d

.field private static final COMMAND_DSW:I = 0x89

.field private static final COMMAND_ETX:I = 0x3

.field private static final COMMAND_EXT1:I = 0x10

.field private static final COMMAND_EXT1_END:I = 0x17

.field private static final COMMAND_EXT1_START:I = 0x11

.field private static final COMMAND_FF:I = 0xc

.field private static final COMMAND_HCR:I = 0xe

.field private static final COMMAND_HDW:I = 0x8a

.field private static final COMMAND_NUL:I = 0x0

.field private static final COMMAND_P16_END:I = 0x1f

.field private static final COMMAND_P16_START:I = 0x18

.field private static final COMMAND_RST:I = 0x8f

.field private static final COMMAND_SPA:I = 0x90

.field private static final COMMAND_SPC:I = 0x91

.field private static final COMMAND_SPL:I = 0x92

.field private static final COMMAND_SWA:I = 0x97

.field private static final COMMAND_TGW:I = 0x8b

.field private static final DTVCC_PACKET_DATA:I = 0x2

.field private static final DTVCC_PACKET_START:I = 0x3

.field private static final GROUP_C0_END:I = 0x1f

.field private static final GROUP_C1_END:I = 0x9f

.field private static final GROUP_C2_END:I = 0x1f

.field private static final GROUP_C3_END:I = 0x9f

.field private static final GROUP_G0_END:I = 0x7f

.field private static final GROUP_G1_END:I = 0xff

.field private static final GROUP_G2_END:I = 0x7f

.field private static final GROUP_G3_END:I = 0xff

.field private static final NUM_WINDOWS:I = 0x8

.field private static final TAG:Ljava/lang/String; = "Cea708Decoder"


# instance fields
.field private final ccData:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

.field private final cueBuilders:[Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

.field private cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

.field private currentDtvCcPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

.field private currentWindow:I

.field private lastCues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedServiceNumber:I

.field private final serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/CeaDecoder;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->ccData:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 10
    .line 11
    new-instance v0, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 17
    .line 18
    const/4 v0, -0x1

    .line 19
    if-ne p1, v0, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    :cond_0
    iput p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->selectedServiceNumber:I

    .line 23
    .line 24
    const/16 p1, 0x8

    .line 25
    .line 26
    new-array v0, p1, [Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    move v1, v0

    .line 32
    :goto_0
    if-ge v1, p1, :cond_1

    .line 33
    .line 34
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 35
    .line 36
    new-instance v3, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 37
    .line 38
    invoke-direct {v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    aput-object v3, v2, v1

    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 47
    .line 48
    aget-object p1, p1, v0

    .line 49
    .line 50
    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 51
    .line 52
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->resetCueBuilders()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method private finalizeCurrentPacket()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->processCurrentPacket()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    .line 11
    .line 12
    return-void
.end method

.method private getDisplayCues()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    const/16 v2, 0x8

    .line 8
    .line 9
    if-ge v1, v2, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 12
    .line 13
    aget-object v2, v2, v1

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 22
    .line 23
    aget-object v2, v2, v1

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->isVisible()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 32
    .line 33
    aget-object v2, v2, v1

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->build()Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Cue;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    return-object v0
.end method

.method private handleC0Command(I)V
    .locals 4

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    if-eq p1, v0, :cond_3

    .line 5
    .line 6
    const/16 v0, 0x8

    .line 7
    .line 8
    if-eq p1, v0, :cond_2

    .line 9
    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x11

    .line 14
    .line 15
    const-string v2, "Cea708Decoder"

    .line 16
    .line 17
    if-lt p1, v1, :cond_0

    .line 18
    .line 19
    const/16 v1, 0x17

    .line 20
    .line 21
    if-gt p1, v1, :cond_0

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v3, "Currently unsupported COMMAND_EXT1 Command: "

    .line 29
    .line 30
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/16 v0, 0x18

    .line 50
    .line 51
    if-lt p1, v0, :cond_1

    .line 52
    .line 53
    const/16 v0, 0x1f

    .line 54
    .line 55
    if-gt p1, v0, :cond_1

    .line 56
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v1, "Currently unsupported COMMAND_P16 Command: "

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 78
    .line 79
    const/16 v0, 0x10

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v1, "Invalid C0 command: "

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :pswitch_0
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 107
    .line 108
    const/16 v0, 0xa

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :pswitch_1
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->resetCueBuilders()V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->backspace()V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_3
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->getDisplayCues()Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    .line 129
    .line 130
    :cond_4
    :goto_0
    :pswitch_2
    return-void

    .line 131
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private handleC1Command(I)V
    .locals 4

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "Invalid C1 command: "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "Cea708Decoder"

    .line 27
    .line 28
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    goto/16 :goto_5

    .line 32
    .line 33
    :pswitch_1
    add-int/lit16 p1, p1, -0x98

    .line 34
    .line 35
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->handleDefineWindow(I)V

    .line 36
    .line 37
    .line 38
    iget v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentWindow:I

    .line 39
    .line 40
    if-eq v0, p1, :cond_9

    .line 41
    .line 42
    iput p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentWindow:I

    .line 43
    .line 44
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 45
    .line 46
    aget-object p1, v0, p1

    .line 47
    .line 48
    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 49
    .line 50
    goto/16 :goto_5

    .line 51
    .line 52
    :pswitch_2
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->isDefined()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_0

    .line 59
    .line 60
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 61
    .line 62
    const/16 v0, 0x20

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_5

    .line 68
    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->handleSetWindowAttributes()V

    .line 70
    .line 71
    .line 72
    goto/16 :goto_5

    .line 73
    .line 74
    :pswitch_3
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->isDefined()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-nez p1, :cond_1

    .line 81
    .line 82
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 85
    .line 86
    .line 87
    goto/16 :goto_5

    .line 88
    .line 89
    :cond_1
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->handleSetPenLocation()V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_5

    .line 93
    .line 94
    :pswitch_4
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->isDefined()Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-nez p1, :cond_2

    .line 101
    .line 102
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 103
    .line 104
    const/16 v0, 0x18

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 107
    .line 108
    .line 109
    goto/16 :goto_5

    .line 110
    .line 111
    :cond_2
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->handleSetPenColor()V

    .line 112
    .line 113
    .line 114
    goto/16 :goto_5

    .line 115
    .line 116
    :pswitch_5
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->isDefined()Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-nez p1, :cond_3

    .line 123
    .line 124
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 125
    .line 126
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_5

    .line 130
    .line 131
    :cond_3
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->handleSetPenAttributes()V

    .line 132
    .line 133
    .line 134
    goto/16 :goto_5

    .line 135
    .line 136
    :pswitch_6
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->resetCueBuilders()V

    .line 137
    .line 138
    .line 139
    goto/16 :goto_5

    .line 140
    .line 141
    :pswitch_7
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 142
    .line 143
    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_5

    .line 147
    .line 148
    :goto_0
    :pswitch_8
    if-gt v2, v1, :cond_9

    .line 149
    .line 150
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-eqz p1, :cond_4

    .line 157
    .line 158
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 159
    .line 160
    rsub-int/lit8 v0, v2, 0x8

    .line 161
    .line 162
    aget-object p1, p1, v0

    .line 163
    .line 164
    invoke-virtual {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->reset()V

    .line 165
    .line 166
    .line 167
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 168
    .line 169
    goto :goto_0

    .line 170
    :pswitch_9
    move p1, v2

    .line 171
    :goto_1
    if-gt p1, v1, :cond_9

    .line 172
    .line 173
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 174
    .line 175
    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_5

    .line 180
    .line 181
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 182
    .line 183
    rsub-int/lit8 v3, p1, 0x8

    .line 184
    .line 185
    aget-object v0, v0, v3

    .line 186
    .line 187
    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->isVisible()Z

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    xor-int/2addr v3, v2

    .line 192
    invoke-virtual {v0, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->setVisibility(Z)V

    .line 193
    .line 194
    .line 195
    :cond_5
    add-int/lit8 p1, p1, 0x1

    .line 196
    .line 197
    goto :goto_1

    .line 198
    :goto_2
    :pswitch_a
    if-gt v2, v1, :cond_9

    .line 199
    .line 200
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 201
    .line 202
    invoke-virtual {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    if-eqz p1, :cond_6

    .line 207
    .line 208
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 209
    .line 210
    rsub-int/lit8 v0, v2, 0x8

    .line 211
    .line 212
    aget-object p1, p1, v0

    .line 213
    .line 214
    const/4 v0, 0x0

    .line 215
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->setVisibility(Z)V

    .line 216
    .line 217
    .line 218
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :pswitch_b
    move p1, v2

    .line 222
    :goto_3
    if-gt p1, v1, :cond_9

    .line 223
    .line 224
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 225
    .line 226
    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    if-eqz v0, :cond_7

    .line 231
    .line 232
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 233
    .line 234
    rsub-int/lit8 v3, p1, 0x8

    .line 235
    .line 236
    aget-object v0, v0, v3

    .line 237
    .line 238
    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->setVisibility(Z)V

    .line 239
    .line 240
    .line 241
    :cond_7
    add-int/lit8 p1, p1, 0x1

    .line 242
    .line 243
    goto :goto_3

    .line 244
    :goto_4
    :pswitch_c
    if-gt v2, v1, :cond_9

    .line 245
    .line 246
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 247
    .line 248
    invoke-virtual {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    if-eqz p1, :cond_8

    .line 253
    .line 254
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 255
    .line 256
    rsub-int/lit8 v0, v2, 0x8

    .line 257
    .line 258
    aget-object p1, p1, v0

    .line 259
    .line 260
    invoke-virtual {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->clear()V

    .line 261
    .line 262
    .line 263
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 264
    .line 265
    goto :goto_4

    .line 266
    :pswitch_d
    add-int/lit8 p1, p1, -0x80

    .line 267
    .line 268
    iget v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentWindow:I

    .line 269
    .line 270
    if-eq v0, p1, :cond_9

    .line 271
    .line 272
    iput p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentWindow:I

    .line 273
    .line 274
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 275
    .line 276
    aget-object p1, v0, p1

    .line 277
    .line 278
    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 279
    .line 280
    :cond_9
    :goto_5
    :pswitch_e
    return-void

    .line 281
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_e
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private handleC2Command(I)V
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    if-gt p1, v0, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/16 v0, 0xf

    .line 6
    .line 7
    if-gt p1, v0, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 10
    .line 11
    const/16 v0, 0x8

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/16 v0, 0x17

    .line 18
    .line 19
    if-gt p1, v0, :cond_2

    .line 20
    .line 21
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 22
    .line 23
    const/16 v0, 0x10

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/16 v0, 0x1f

    .line 30
    .line 31
    if-gt p1, v0, :cond_3

    .line 32
    .line 33
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 34
    .line 35
    const/16 v0, 0x18

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 38
    .line 39
    .line 40
    :cond_3
    :goto_0
    return-void
.end method

.method private handleC3Command(I)V
    .locals 1

    .line 1
    const/16 v0, 0x87

    .line 2
    .line 3
    if-gt p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 6
    .line 7
    const/16 v0, 0x20

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 v0, 0x8f

    .line 14
    .line 15
    if-gt p1, v0, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 18
    .line 19
    const/16 v0, 0x28

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/16 v0, 0x9f

    .line 26
    .line 27
    if-gt p1, v0, :cond_2

    .line 28
    .line 29
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 30
    .line 31
    const/4 v0, 0x2

    .line 32
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 36
    .line 37
    const/4 v0, 0x6

    .line 38
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 43
    .line 44
    mul-int/lit8 p1, p1, 0x8

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_0
    return-void
.end method

.method private handleDefineWindow(I)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 2
    .line 3
    aget-object v1, v0, p1

    .line 4
    .line 5
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 30
    .line 31
    const/4 v5, 0x3

    .line 32
    invoke-virtual {p1, v5}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iget-object v6, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 37
    .line 38
    invoke-virtual {v6}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    iget-object v7, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 43
    .line 44
    const/4 v8, 0x7

    .line 45
    invoke-virtual {v7, v8}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    iget-object v8, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 50
    .line 51
    const/16 v9, 0x8

    .line 52
    .line 53
    invoke-virtual {v8, v9}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    iget-object v9, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 58
    .line 59
    const/4 v10, 0x4

    .line 60
    invoke-virtual {v9, v10}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 61
    .line 62
    .line 63
    move-result v11

    .line 64
    iget-object v9, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 65
    .line 66
    invoke-virtual {v9, v10}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    iget-object v10, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 71
    .line 72
    invoke-virtual {v10, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 73
    .line 74
    .line 75
    iget-object v10, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 76
    .line 77
    const/4 v12, 0x6

    .line 78
    invoke-virtual {v10, v12}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    iget-object v12, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 83
    .line 84
    invoke-virtual {v12, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 88
    .line 89
    invoke-virtual {v0, v5}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 90
    .line 91
    .line 92
    move-result v12

    .line 93
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 94
    .line 95
    invoke-virtual {v0, v5}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 96
    .line 97
    .line 98
    move-result v13

    .line 99
    move v5, p1

    .line 100
    invoke-virtual/range {v1 .. v13}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->defineWindow(ZZZIZIIIIIII)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method private handleG0Character(I)V
    .locals 1

    .line 1
    const/16 v0, 0x7f

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 6
    .line 7
    const/16 v0, 0x266b

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 14
    .line 15
    and-int/lit16 p1, p1, 0xff

    .line 16
    .line 17
    int-to-char p1, p1

    .line 18
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method private handleG1Character(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 2
    .line 3
    and-int/lit16 p1, p1, 0xff

    .line 4
    .line 5
    int-to-char p1, p1

    .line 6
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private handleG2Character(I)V
    .locals 2

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    if-eq p1, v0, :cond_9

    .line 4
    .line 5
    const/16 v0, 0x21

    .line 6
    .line 7
    if-eq p1, v0, :cond_8

    .line 8
    .line 9
    const/16 v0, 0x25

    .line 10
    .line 11
    if-eq p1, v0, :cond_7

    .line 12
    .line 13
    const/16 v0, 0x2a

    .line 14
    .line 15
    if-eq p1, v0, :cond_6

    .line 16
    .line 17
    const/16 v0, 0x2c

    .line 18
    .line 19
    if-eq p1, v0, :cond_5

    .line 20
    .line 21
    const/16 v0, 0x3f

    .line 22
    .line 23
    if-eq p1, v0, :cond_4

    .line 24
    .line 25
    const/16 v0, 0x39

    .line 26
    .line 27
    if-eq p1, v0, :cond_3

    .line 28
    .line 29
    const/16 v0, 0x3a

    .line 30
    .line 31
    if-eq p1, v0, :cond_2

    .line 32
    .line 33
    const/16 v0, 0x3c

    .line 34
    .line 35
    if-eq p1, v0, :cond_1

    .line 36
    .line 37
    const/16 v0, 0x3d

    .line 38
    .line 39
    if-eq p1, v0, :cond_0

    .line 40
    .line 41
    packed-switch p1, :pswitch_data_0

    .line 42
    .line 43
    .line 44
    packed-switch p1, :pswitch_data_1

    .line 45
    .line 46
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v1, "Invalid G2 character: "

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const-string v0, "Cea708Decoder"

    .line 65
    .line 66
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    goto/16 :goto_0

    .line 70
    .line 71
    :pswitch_0
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 72
    .line 73
    const/16 v0, 0x250c

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_0

    .line 79
    .line 80
    :pswitch_1
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 81
    .line 82
    const/16 v0, 0x2518

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 85
    .line 86
    .line 87
    goto/16 :goto_0

    .line 88
    .line 89
    :pswitch_2
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 90
    .line 91
    const/16 v0, 0x2500

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_0

    .line 97
    .line 98
    :pswitch_3
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 99
    .line 100
    const/16 v0, 0x2514

    .line 101
    .line 102
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 103
    .line 104
    .line 105
    goto/16 :goto_0

    .line 106
    .line 107
    :pswitch_4
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 108
    .line 109
    const/16 v0, 0x2510

    .line 110
    .line 111
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 112
    .line 113
    .line 114
    goto/16 :goto_0

    .line 115
    .line 116
    :pswitch_5
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 117
    .line 118
    const/16 v0, 0x2502

    .line 119
    .line 120
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 121
    .line 122
    .line 123
    goto/16 :goto_0

    .line 124
    .line 125
    :pswitch_6
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 126
    .line 127
    const/16 v0, 0x215e

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_0

    .line 133
    .line 134
    :pswitch_7
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 135
    .line 136
    const/16 v0, 0x215d

    .line 137
    .line 138
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 139
    .line 140
    .line 141
    goto/16 :goto_0

    .line 142
    .line 143
    :pswitch_8
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 144
    .line 145
    const/16 v0, 0x215c

    .line 146
    .line 147
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 148
    .line 149
    .line 150
    goto/16 :goto_0

    .line 151
    .line 152
    :pswitch_9
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 153
    .line 154
    const/16 v0, 0x215b

    .line 155
    .line 156
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 157
    .line 158
    .line 159
    goto/16 :goto_0

    .line 160
    .line 161
    :pswitch_a
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 162
    .line 163
    const/16 v0, 0x2022

    .line 164
    .line 165
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 166
    .line 167
    .line 168
    goto/16 :goto_0

    .line 169
    .line 170
    :pswitch_b
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 171
    .line 172
    const/16 v0, 0x201d

    .line 173
    .line 174
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_0

    .line 178
    .line 179
    :pswitch_c
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 180
    .line 181
    const/16 v0, 0x201c

    .line 182
    .line 183
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :pswitch_d
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 189
    .line 190
    const/16 v0, 0x2019

    .line 191
    .line 192
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 193
    .line 194
    .line 195
    goto :goto_0

    .line 196
    :pswitch_e
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 197
    .line 198
    const/16 v0, 0x2018

    .line 199
    .line 200
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 201
    .line 202
    .line 203
    goto :goto_0

    .line 204
    :pswitch_f
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 205
    .line 206
    const/16 v0, 0x2588

    .line 207
    .line 208
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 209
    .line 210
    .line 211
    goto :goto_0

    .line 212
    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 213
    .line 214
    const/16 v0, 0x2120

    .line 215
    .line 216
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 217
    .line 218
    .line 219
    goto :goto_0

    .line 220
    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 221
    .line 222
    const/16 v0, 0x153

    .line 223
    .line 224
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 225
    .line 226
    .line 227
    goto :goto_0

    .line 228
    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 229
    .line 230
    const/16 v0, 0x161

    .line 231
    .line 232
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 233
    .line 234
    .line 235
    goto :goto_0

    .line 236
    :cond_3
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 237
    .line 238
    const/16 v0, 0x2122

    .line 239
    .line 240
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 241
    .line 242
    .line 243
    goto :goto_0

    .line 244
    :cond_4
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 245
    .line 246
    const/16 v0, 0x178

    .line 247
    .line 248
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 249
    .line 250
    .line 251
    goto :goto_0

    .line 252
    :cond_5
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 253
    .line 254
    const/16 v0, 0x152

    .line 255
    .line 256
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 257
    .line 258
    .line 259
    goto :goto_0

    .line 260
    :cond_6
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 261
    .line 262
    const/16 v0, 0x160

    .line 263
    .line 264
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 265
    .line 266
    .line 267
    goto :goto_0

    .line 268
    :cond_7
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 269
    .line 270
    const/16 v0, 0x2026

    .line 271
    .line 272
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 273
    .line 274
    .line 275
    goto :goto_0

    .line 276
    :cond_8
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 277
    .line 278
    const/16 v0, 0xa0

    .line 279
    .line 280
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 281
    .line 282
    .line 283
    goto :goto_0

    .line 284
    :cond_9
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 285
    .line 286
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 287
    .line 288
    .line 289
    :goto_0
    return-void

    .line 290
    nop

    .line 291
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    :pswitch_data_1
    .packed-switch 0x76
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleG3Character(I)V
    .locals 2

    .line 1
    const/16 v0, 0xa0

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 6
    .line 7
    const/16 v0, 0x33c4

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "Invalid G3 character: "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v0, "Cea708Decoder"

    .line 31
    .line 32
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 36
    .line 37
    const/16 v0, 0x5f

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->append(C)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method private handleSetPenAttributes()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 34
    .line 35
    const/4 v1, 0x3

    .line 36
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 43
    .line 44
    .line 45
    move-result v9

    .line 46
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 47
    .line 48
    invoke-virtual/range {v2 .. v9}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->setPenAttributes(IIIZZII)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private handleSetPenColor()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 9
    .line 10
    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    iget-object v3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 15
    .line 16
    invoke-virtual {v3, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    iget-object v4, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 21
    .line 22
    invoke-virtual {v4, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-static {v2, v3, v4, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->getArgbColorFromCeaColor(IIII)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    iget-object v3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 37
    .line 38
    invoke-virtual {v3, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    iget-object v4, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 43
    .line 44
    invoke-virtual {v4, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    iget-object v5, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 49
    .line 50
    invoke-virtual {v5, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    invoke-static {v3, v4, v5, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->getArgbColorFromCeaColor(IIII)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    iget-object v3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 59
    .line 60
    invoke-virtual {v3, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 61
    .line 62
    .line 63
    iget-object v3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 64
    .line 65
    invoke-virtual {v3, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    iget-object v4, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 70
    .line 71
    invoke-virtual {v4, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    iget-object v5, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 76
    .line 77
    invoke-virtual {v5, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-static {v3, v4, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->getArgbColorFromCeaColor(III)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    iget-object v3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 86
    .line 87
    invoke-virtual {v3, v0, v2, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->setPenColor(III)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method private handleSetPenLocation()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 20
    .line 21
    const/4 v2, 0x6

    .line 22
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 27
    .line 28
    invoke-virtual {v2, v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->setPenLocation(II)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private handleSetWindowAttributes()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 9
    .line 10
    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    iget-object v3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 15
    .line 16
    invoke-virtual {v3, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    iget-object v4, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 21
    .line 22
    invoke-virtual {v4, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-static {v2, v3, v4, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->getArgbColorFromCeaColor(IIII)I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    iget-object v3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 43
    .line 44
    invoke-virtual {v3, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    iget-object v4, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 49
    .line 50
    invoke-virtual {v4, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    invoke-static {v2, v3, v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->getArgbColorFromCeaColor(III)I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_0

    .line 65
    .line 66
    or-int/lit8 v0, v0, 0x4

    .line 67
    .line 68
    :cond_0
    move v9, v0

    .line 69
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 78
    .line 79
    .line 80
    move-result v10

    .line 81
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 84
    .line 85
    .line 86
    move-result v11

    .line 87
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 90
    .line 91
    .line 92
    move-result v12

    .line 93
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 94
    .line 95
    const/16 v1, 0x8

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 98
    .line 99
    .line 100
    iget-object v5, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 101
    .line 102
    invoke-virtual/range {v5 .. v12}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->setWindowAttributes(IIZIIII)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method private processCurrentPacket()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    .line 2
    .line 3
    iget v1, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    .line 4
    .line 5
    iget v2, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetSize:I

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    mul-int/2addr v2, v3

    .line 9
    const/4 v4, 0x1

    .line 10
    sub-int/2addr v2, v4

    .line 11
    const-string v5, "Cea708Decoder"

    .line 12
    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v1, "DtvCcPacket ended prematurely; size is "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    .line 26
    .line 27
    iget v1, v1, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetSize:I

    .line 28
    .line 29
    mul-int/2addr v1, v3

    .line 30
    sub-int/2addr v1, v4

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ", but current index is "

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    .line 40
    .line 41
    iget v1, v1, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, " (sequence number "

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    .line 52
    .line 53
    iget v1, v1, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->sequenceNumber:I

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v1, "); ignoring packet"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 72
    .line 73
    iget-object v0, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    .line 74
    .line 75
    invoke-virtual {v2, v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->reset([BI)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 79
    .line 80
    const/4 v1, 0x3

    .line 81
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 86
    .line 87
    const/4 v2, 0x5

    .line 88
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    const/4 v2, 0x7

    .line 93
    if-ne v0, v2, :cond_1

    .line 94
    .line 95
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 96
    .line 97
    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 98
    .line 99
    .line 100
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 101
    .line 102
    const/4 v3, 0x6

    .line 103
    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    add-int/2addr v0, v2

    .line 108
    :cond_1
    if-nez v1, :cond_3

    .line 109
    .line 110
    if-eqz v0, :cond_2

    .line 111
    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string v2, "serviceNumber is non-zero ("

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v0, ") when blockSize is 0"

    .line 126
    .line 127
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    :cond_2
    return-void

    .line 138
    :cond_3
    iget v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->selectedServiceNumber:I

    .line 139
    .line 140
    if-eq v0, v1, :cond_4

    .line 141
    .line 142
    return-void

    .line 143
    :cond_4
    const/4 v0, 0x0

    .line 144
    :goto_0
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 145
    .line 146
    invoke-virtual {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-lez v1, :cond_e

    .line 151
    .line 152
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 153
    .line 154
    const/16 v2, 0x8

    .line 155
    .line 156
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    const/16 v3, 0x10

    .line 161
    .line 162
    const/16 v6, 0xff

    .line 163
    .line 164
    const/16 v7, 0x9f

    .line 165
    .line 166
    const/16 v8, 0x7f

    .line 167
    .line 168
    const/16 v9, 0x1f

    .line 169
    .line 170
    if-eq v1, v3, :cond_9

    .line 171
    .line 172
    if-gt v1, v9, :cond_5

    .line 173
    .line 174
    invoke-direct {p0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->handleC0Command(I)V

    .line 175
    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_5
    if-gt v1, v8, :cond_6

    .line 179
    .line 180
    invoke-direct {p0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->handleG0Character(I)V

    .line 181
    .line 182
    .line 183
    :goto_1
    move v0, v4

    .line 184
    goto :goto_0

    .line 185
    :cond_6
    if-gt v1, v7, :cond_7

    .line 186
    .line 187
    invoke-direct {p0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->handleC1Command(I)V

    .line 188
    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_7
    if-gt v1, v6, :cond_8

    .line 192
    .line 193
    invoke-direct {p0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->handleG1Character(I)V

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .line 201
    .line 202
    const-string v3, "Invalid base command: "

    .line 203
    .line 204
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    goto :goto_0

    .line 218
    :cond_9
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 219
    .line 220
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-gt v1, v9, :cond_a

    .line 225
    .line 226
    invoke-direct {p0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->handleC2Command(I)V

    .line 227
    .line 228
    .line 229
    goto :goto_0

    .line 230
    :cond_a
    if-gt v1, v8, :cond_b

    .line 231
    .line 232
    invoke-direct {p0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->handleG2Character(I)V

    .line 233
    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_b
    if-gt v1, v7, :cond_c

    .line 237
    .line 238
    invoke-direct {p0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->handleC3Command(I)V

    .line 239
    .line 240
    .line 241
    goto :goto_0

    .line 242
    :cond_c
    if-gt v1, v6, :cond_d

    .line 243
    .line 244
    invoke-direct {p0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->handleG3Character(I)V

    .line 245
    .line 246
    .line 247
    goto :goto_1

    .line 248
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .line 252
    .line 253
    const-string v3, "Invalid extended command: "

    .line 254
    .line 255
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .line 267
    .line 268
    goto :goto_0

    .line 269
    :cond_e
    if-eqz v0, :cond_f

    .line 270
    .line 271
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->getDisplayCues()Ljava/util/List;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    .line 276
    .line 277
    :cond_f
    return-void
.end method

.method private resetCueBuilders()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/16 v1, 0x8

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 7
    .line 8
    aget-object v1, v1, v0

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->reset()V

    .line 11
    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-void
.end method


# virtual methods
.method protected createSubtitle()Lcom/mbridge/msdk/playercommon/exoplayer2/text/Subtitle;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    .line 4
    .line 5
    new-instance v1, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/CeaSubtitle;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/CeaSubtitle;-><init>(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    return-object v1
.end method

.method protected decode(Lcom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->ccData:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {v1, v0, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 16
    .line 17
    .line 18
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->ccData:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/4 v0, 0x3

    .line 25
    if-lt p1, v0, :cond_8

    .line 26
    .line 27
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->ccData:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    and-int/lit8 v1, p1, 0x3

    .line 34
    .line 35
    const/4 v2, 0x4

    .line 36
    and-int/2addr p1, v2

    .line 37
    const/4 v3, 0x0

    .line 38
    const/4 v4, 0x1

    .line 39
    if-ne p1, v2, :cond_1

    .line 40
    .line 41
    move p1, v4

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move p1, v3

    .line 44
    :goto_1
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->ccData:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    int-to-byte v2, v2

    .line 51
    iget-object v5, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->ccData:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 52
    .line 53
    invoke-virtual {v5}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    int-to-byte v5, v5

    .line 58
    const/4 v6, 0x2

    .line 59
    if-eq v1, v6, :cond_2

    .line 60
    .line 61
    if-eq v1, v0, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    if-nez p1, :cond_3

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    if-ne v1, v0, :cond_5

    .line 68
    .line 69
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->finalizeCurrentPacket()V

    .line 70
    .line 71
    .line 72
    and-int/lit16 p1, v2, 0xc0

    .line 73
    .line 74
    shr-int/lit8 p1, p1, 0x6

    .line 75
    .line 76
    and-int/lit8 v0, v2, 0x3f

    .line 77
    .line 78
    if-nez v0, :cond_4

    .line 79
    .line 80
    const/16 v0, 0x40

    .line 81
    .line 82
    :cond_4
    new-instance v1, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    .line 83
    .line 84
    invoke-direct {v1, p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;-><init>(II)V

    .line 85
    .line 86
    .line 87
    iput-object v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    .line 88
    .line 89
    iget-object p1, v1, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    .line 90
    .line 91
    iget v0, v1, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    .line 92
    .line 93
    add-int/lit8 v2, v0, 0x1

    .line 94
    .line 95
    iput v2, v1, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    .line 96
    .line 97
    aput-byte v5, p1, v0

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_5
    if-ne v1, v6, :cond_6

    .line 101
    .line 102
    move v3, v4

    .line 103
    :cond_6
    invoke-static {v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    .line 107
    .line 108
    if-nez p1, :cond_7

    .line 109
    .line 110
    const-string p1, "Cea708Decoder"

    .line 111
    .line 112
    const-string v0, "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START"

    .line 113
    .line 114
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_7
    iget-object v0, p1, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    .line 119
    .line 120
    iget v1, p1, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    .line 121
    .line 122
    add-int/lit8 v3, v1, 0x1

    .line 123
    .line 124
    aput-byte v2, v0, v1

    .line 125
    .line 126
    add-int/2addr v1, v6

    .line 127
    iput v1, p1, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    .line 128
    .line 129
    aput-byte v5, v0, v3

    .line 130
    .line 131
    :goto_2
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    .line 132
    .line 133
    iget v0, p1, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    .line 134
    .line 135
    iget p1, p1, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetSize:I

    .line 136
    .line 137
    mul-int/2addr p1, v6

    .line 138
    sub-int/2addr p1, v4

    .line 139
    if-ne v0, p1, :cond_0

    .line 140
    .line 141
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->finalizeCurrentPacket()V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_8
    return-void
.end method

.method public bridge synthetic dequeueInputBuffer()Lcom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/CeaDecoder;->dequeueInputBuffer()Lcom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic dequeueOutputBuffer()Lcom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/CeaDecoder;->dequeueOutputBuffer()Lcom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public flush()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/CeaDecoder;->flush()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentWindow:I

    .line 11
    .line 12
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cueBuilders:[Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 13
    .line 14
    aget-object v1, v2, v1

    .line 15
    .line 16
    iput-object v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentCueBuilder:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->resetCueBuilders()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    .line 22
    .line 23
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Cea708Decoder"

    .line 2
    .line 3
    return-object v0
.end method

.method protected isNewSubtitleDataAvailable()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public bridge synthetic queueInputBuffer(Lcom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/CeaDecoder;->queueInputBuffer(Lcom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic release()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/CeaDecoder;->release()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic setPositionUs(J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/cea/CeaDecoder;->setPositionUs(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
