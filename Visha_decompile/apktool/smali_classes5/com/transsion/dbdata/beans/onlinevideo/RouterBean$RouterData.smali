.class public Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RouterData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bottom_position:I

.field private channel:J

.field private channel_name:Ljava/lang/String;

.field private data_type:I

.field private end_time:I

.field private from_card:Ljava/lang/String;

.field private from_page:Ljava/lang/String;

.field private hintMessage:Ljava/lang/String;

.field private isPreview:I

.field private isShort:I

.field private isYoutube:I

.field private is_related:I

.field private labelRal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/ComplexLabelBean;",
            ">;"
        }
    .end annotation
.end field

.field private mbNotPlayFromHistory:I

.field private playLet:I

.field private requestId:Ljava/lang/String;

.field private serialId:J

.field private source_id:Ljava/lang/String;

.field private source_type:I

.field private start_time:I

.field private title:Ljava/lang/String;

.field private top_position:I

.field private topic_id:J

.field private topic_name:Ljava/lang/String;

.field private topic_sort:I

.field private typeBeanJson:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private video_force_play:I

.field private video_id:J

.field private video_serail_id:J

.field private video_serail_source_id:Ljava/lang/String;

.field private video_url:Ljava/lang/String;

.field private vkId:Ljava/lang/String;

.field private youtubeChannel:Ljava/lang/String;

.field private youtubeChannelCover:Ljava/lang/String;

.field private youtubeCover:Ljava/lang/String;

.field private youtubeVideoName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData$1;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData$1;-><init>()V

    sput-object v0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_type:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isShort:I

    .line 4
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isPreview:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_type:I

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isShort:I

    .line 8
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isPreview:I

    .line 9
    iput p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->bottom_position:I

    .line 10
    iput p2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->top_position:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_type:I

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isShort:I

    .line 14
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isPreview:I

    .line 15
    iput p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->bottom_position:I

    .line 16
    iput p2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->top_position:I

    .line 17
    iput-object p3, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->hintMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 115
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_type:I

    const/4 v0, 0x0

    .line 116
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isShort:I

    .line 117
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isPreview:I

    .line 118
    iput-object p2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_id:Ljava/lang/String;

    .line 119
    iput p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isYoutube:I

    .line 120
    iput-object p4, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->youtubeChannel:Ljava/lang/String;

    .line 121
    iput-object p5, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->youtubeChannelCover:Ljava/lang/String;

    .line 122
    iput-object p3, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->youtubeVideoName:Ljava/lang/String;

    .line 123
    iput-object p6, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->youtubeCover:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isShort:I

    .line 45
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isPreview:I

    .line 46
    iput-wide p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_id:J

    .line 47
    iput-wide p3, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->serialId:J

    .line 48
    iput-object p5, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->title:Ljava/lang/String;

    .line 49
    iput-object p6, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->url:Ljava/lang/String;

    .line 50
    iput p7, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_type:I

    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 82
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_type:I

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isShort:I

    .line 84
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isPreview:I

    .line 85
    iput-wide p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_id:J

    .line 86
    iput-wide p3, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->serialId:J

    .line 87
    iput-object p5, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_id:Ljava/lang/String;

    .line 88
    iput-object p6, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->title:Ljava/lang/String;

    .line 89
    iput-object p7, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->topic_name:Ljava/lang/String;

    .line 90
    iput p8, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_force_play:I

    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 92
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_type:I

    const/4 v0, 0x0

    .line 93
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isShort:I

    .line 94
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isPreview:I

    .line 95
    iput-wide p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_id:J

    .line 96
    iput-wide p3, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->serialId:J

    .line 97
    iput-object p5, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_id:Ljava/lang/String;

    .line 98
    iput-object p6, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->title:Ljava/lang/String;

    .line 99
    iput-object p7, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->topic_name:Ljava/lang/String;

    .line 100
    iput p8, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_force_play:I

    .line 101
    iput p9, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isYoutube:I

    .line 102
    iput-object p10, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->youtubeChannel:Ljava/lang/String;

    .line 103
    iput-object p11, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->youtubeChannelCover:Ljava/lang/String;

    .line 104
    iput-object p12, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->youtubeVideoName:Ljava/lang/String;

    .line 105
    iput-object p13, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->youtubeCover:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 61
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_type:I

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isShort:I

    .line 63
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isPreview:I

    .line 64
    iput-wide p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_id:J

    .line 65
    iput-object p3, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_id:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;JI)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_type:I

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isShort:I

    .line 21
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isPreview:I

    .line 22
    iput-wide p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_id:J

    .line 23
    iput-object p3, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_id:Ljava/lang/String;

    .line 24
    iput-wide p4, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->serialId:J

    .line 25
    iput p6, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->data_type:I

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;JLjava/lang/String;Z)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 35
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_type:I

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isShort:I

    .line 37
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isPreview:I

    .line 38
    iput-wide p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_id:J

    .line 39
    iput-object p3, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_id:Ljava/lang/String;

    .line 40
    iput-wide p4, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->serialId:J

    .line 41
    iput-object p6, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->title:Ljava/lang/String;

    .line 42
    iput p7, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->mbNotPlayFromHistory:I

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;JZ)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_type:I

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isShort:I

    .line 29
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isPreview:I

    .line 30
    iput-wide p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_id:J

    .line 31
    iput-object p3, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_id:Ljava/lang/String;

    .line 32
    iput-wide p4, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->serialId:J

    .line 33
    iput p6, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->mbNotPlayFromHistory:I

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 67
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_type:I

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isShort:I

    .line 69
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isPreview:I

    .line 70
    iput-wide p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_id:J

    .line 71
    iput-object p3, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_id:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->title:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 107
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isShort:I

    .line 108
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isPreview:I

    .line 109
    iput-wide p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_id:J

    .line 110
    iput-object p3, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_id:Ljava/lang/String;

    .line 111
    iput-object p4, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->title:Ljava/lang/String;

    .line 112
    iput p5, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_type:I

    .line 113
    iput p6, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->is_related:I

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 74
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_type:I

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isShort:I

    .line 76
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isPreview:I

    .line 77
    iput-wide p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_id:J

    .line 78
    iput-object p3, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_id:Ljava/lang/String;

    .line 79
    iput-object p4, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->title:Ljava/lang/String;

    .line 80
    iput-object p5, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->topic_name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 136
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_type:I

    const/4 v0, 0x0

    .line 137
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isShort:I

    .line 138
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isPreview:I

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_id:J

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_id:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_type:I

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->title:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->bottom_position:I

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->top_position:I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->topic_id:J

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->topic_name:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->channel_name:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->from_card:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->from_page:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->url:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->topic_sort:I

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->is_related:I

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->data_type:I

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->channel:J

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->serialId:J

    .line 156
    sget-object v0, Lcom/transsion/dbdata/beans/onlinevideo/ComplexLabelBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->labelRal:Ljava/util/List;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->requestId:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_serail_id:J

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_serail_source_id:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->start_time:I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->end_time:I

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->mbNotPlayFromHistory:I

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_force_play:I

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isYoutube:I

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->youtubeChannel:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->youtubeChannelCover:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->youtubeVideoName:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->youtubeCover:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->hintMessage:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->vkId:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->typeBeanJson:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_url:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isPreview:I

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isShort:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 125
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_type:I

    const/4 v0, 0x0

    .line 126
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isShort:I

    .line 127
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isPreview:I

    .line 128
    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 130
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_type:I

    const/4 v0, 0x0

    .line 131
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isShort:I

    .line 132
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isPreview:I

    .line 133
    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->url:Ljava/lang/String;

    .line 134
    iput-object p2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->title:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isShort:I

    .line 53
    iput v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isPreview:I

    .line 54
    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->vkId:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->title:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_url:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->url:Ljava/lang/String;

    .line 58
    iput p4, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_type:I

    .line 59
    iput-object p5, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->typeBeanJson:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->channel:J

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->channel_name:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic c(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->from_card:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic d(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->is_related:I

    return-void
.end method

.method public static bridge synthetic e(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->requestId:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic f(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->topic_id:J

    return-void
.end method

.method public static bridge synthetic g(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->topic_name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBottom_position()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->bottom_position:I

    return p0
.end method

.method public getChannel()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->channel:J

    return-wide v0
.end method

.method public getChannel_name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->channel_name:Ljava/lang/String;

    return-object p0
.end method

.method public getData_type()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->data_type:I

    return p0
.end method

.method public getEnd_time()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->end_time:I

    return p0
.end method

.method public getFrom_card()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->from_card:Ljava/lang/String;

    return-object p0
.end method

.method public getFrom_page()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->from_page:Ljava/lang/String;

    return-object p0
.end method

.method public getHintMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->hintMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getIsPreview()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isPreview:I

    return p0
.end method

.method public getIsYoutube()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isYoutube:I

    return p0
.end method

.method public getIs_related()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->is_related:I

    return p0
.end method

.method public getLabelRal()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/ComplexLabelBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->labelRal:Ljava/util/List;

    return-object p0
.end method

.method public getMbNotPlayFromHistory()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->mbNotPlayFromHistory:I

    return p0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->requestId:Ljava/lang/String;

    return-object p0
.end method

.method public getSerialId()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->serialId:J

    return-wide v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_id:Ljava/lang/String;

    return-object p0
.end method

.method public getSourceType()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_type:I

    return p0
.end method

.method public getSource_id()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_id:Ljava/lang/String;

    return-object p0
.end method

.method public getSource_type()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_type:I

    return p0
.end method

.method public getStart_time()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->start_time:I

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getTop_position()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->top_position:I

    return p0
.end method

.method public getTopic_id()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->topic_id:J

    return-wide v0
.end method

.method public getTopic_name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->topic_name:Ljava/lang/String;

    return-object p0
.end method

.method public getTopic_sort()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->topic_sort:I

    return p0
.end method

.method public getTypeBeanJson()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->typeBeanJson:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->url:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_url:Ljava/lang/String;

    return-object p0
.end method

.method public getVideo_force_play()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_force_play:I

    return p0
.end method

.method public getVideo_id()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_id:J

    return-wide v0
.end method

.method public getVideo_serail_id()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_serail_id:J

    return-wide v0
.end method

.method public getVideo_serail_source_id()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_serail_source_id:Ljava/lang/String;

    return-object p0
.end method

.method public getVideo_serial_id()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_serail_id:J

    return-wide v0
.end method

.method public getVideo_serial_source_id()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_serail_source_id:Ljava/lang/String;

    return-object p0
.end method

.method public getVideo_url()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_url:Ljava/lang/String;

    return-object p0
.end method

.method public getVkId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->vkId:Ljava/lang/String;

    return-object p0
.end method

.method public getYoutubeChannel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->youtubeChannel:Ljava/lang/String;

    return-object p0
.end method

.method public getYoutubeChannelCover()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->youtubeChannelCover:Ljava/lang/String;

    return-object p0
.end method

.method public getYoutubeCover()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->youtubeCover:Ljava/lang/String;

    return-object p0
.end method

.method public getYoutubeVideoName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->youtubeVideoName:Ljava/lang/String;

    return-object p0
.end method

.method public isNotPlayFromHistory()Z
    .locals 1

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->mbNotPlayFromHistory:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShortVideo()Z
    .locals 2

    iget v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isShort:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->playLet:I

    if-eq p0, v1, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isYoutube()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isYoutube:I

    return p0
.end method

.method public setBottom_position(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->bottom_position:I

    return-void
.end method

.method public setChannel(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->channel:J

    return-void
.end method

.method public setChannel_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->channel_name:Ljava/lang/String;

    return-void
.end method

.method public setData_type(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->data_type:I

    return-void
.end method

.method public setEnd_time(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->end_time:I

    return-void
.end method

.method public setFrom_card(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->from_card:Ljava/lang/String;

    return-void
.end method

.method public setFrom_page(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->from_page:Ljava/lang/String;

    return-void
.end method

.method public setHintMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->hintMessage:Ljava/lang/String;

    return-void
.end method

.method public setIsPreview(I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isPreview:I

    return-object p0
.end method

.method public setIsYoutube(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isYoutube:I

    return-void
.end method

.method public setIs_related(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->is_related:I

    return-void
.end method

.method public setLabelRal(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/ComplexLabelBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->labelRal:Ljava/util/List;

    return-void
.end method

.method public setMbNotPlayFromHistory(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->mbNotPlayFromHistory:I

    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->requestId:Ljava/lang/String;

    return-void
.end method

.method public setSerialId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->serialId:J

    return-void
.end method

.method public setShortVideo(Z)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isShort:I

    return-object p0
.end method

.method public setSourceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_id:Ljava/lang/String;

    return-void
.end method

.method public setSourceType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_type:I

    return-void
.end method

.method public setSource_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_id:Ljava/lang/String;

    return-void
.end method

.method public setSource_type(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_type:I

    return-void
.end method

.method public setStart_time(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->start_time:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->title:Ljava/lang/String;

    return-void
.end method

.method public setTop_position(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->top_position:I

    return-void
.end method

.method public setTopic(JLjava/lang/String;I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->topic_id:J

    iput-object p3, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->topic_name:Ljava/lang/String;

    iput p4, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->top_position:I

    return-object p0
.end method

.method public setTopic_id(I)V
    .locals 2

    int-to-long v0, p1

    .line 1
    iput-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->topic_id:J

    return-void
.end method

.method public setTopic_id(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->topic_id:J

    return-void
.end method

.method public setTopic_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->topic_name:Ljava/lang/String;

    return-void
.end method

.method public setTopic_sort(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->topic_sort:I

    return-void
.end method

.method public setTypeBeanJson(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->typeBeanJson:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->url:Ljava/lang/String;

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_url:Ljava/lang/String;

    return-void
.end method

.method public setVideo_force_play(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_force_play:I

    return-void
.end method

.method public setVideo_id(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_id:J

    return-void
.end method

.method public setVideo_serail_id(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_serail_id:J

    return-void
.end method

.method public setVideo_serail_source_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_serail_source_id:Ljava/lang/String;

    return-void
.end method

.method public setVideo_serial_id(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_serail_id:J

    return-void
.end method

.method public setVideo_serial_source_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_serail_source_id:Ljava/lang/String;

    return-void
.end method

.method public setVideo_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_url:Ljava/lang/String;

    return-void
.end method

.method public setVkId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->vkId:Ljava/lang/String;

    return-void
.end method

.method public setYoutube(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isYoutube:I

    return-void
.end method

.method public setYoutubeChannel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->youtubeChannel:Ljava/lang/String;

    return-void
.end method

.method public setYoutubeChannelCover(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->youtubeChannelCover:Ljava/lang/String;

    return-void
.end method

.method public setYoutubeVideoName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->youtubeVideoName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RouterData{video_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", source_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", video_url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bottom_position="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->bottom_position:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", top_position="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->top_position:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", topic_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->topic_id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", topic_name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->topic_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", source_type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", from_page=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->from_page:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", from_card=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->from_card:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", topic_sort="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->topic_sort:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", is_related="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->is_related:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", channel="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->channel:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", data_type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->data_type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", channel_name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->channel_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", serialId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->serialId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", labelRal="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->labelRal:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", requestId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", video_serail_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_serail_id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", video_serail_source_id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_serail_source_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", start_time="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->start_time:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", end_time="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->end_time:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", video_force_play="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_force_play:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isYoutube="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isYoutube:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", youtubeChannel=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->youtubeChannel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", youtubeChannelCover=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->youtubeChannelCover:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", youtubeVideoName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->youtubeVideoName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", youtubeCover=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->youtubeCover:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mbNotPlayFromHistory="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->mbNotPlayFromHistory:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", vkId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->vkId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", typeBeanJson=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->typeBeanJson:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isPreview=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isPreview:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isShort=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isShort:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->source_type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->bottom_position:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->top_position:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->topic_id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->topic_name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->channel_name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->from_card:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->from_page:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->topic_sort:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->is_related:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->data_type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->channel:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->serialId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->labelRal:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->requestId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_serail_id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_serail_source_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->start_time:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->end_time:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->mbNotPlayFromHistory:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_force_play:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isYoutube:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->youtubeChannel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->youtubeChannelCover:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->youtubeVideoName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->youtubeCover:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->hintMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->vkId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->typeBeanJson:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->video_url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isPreview:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isShort:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
