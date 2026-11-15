.class public final Lcom/transsion/baselib/db/video/VideoDetailPlayBean;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008g\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u00c1\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\t\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\t\u0012\u001c\u0008\u0003\u0010\u001a\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u001bj\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\u001c\u0012\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\t\u0012\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u0015\u0012\u0008\u0008\u0002\u0010 \u001a\u00020\u0015\u0012\u0008\u0008\u0002\u0010!\u001a\u00020\u0015\u0012\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008#\u0010$J\t\u0010b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010d\u001a\u00020\u0006H\u00c6\u0003J\t\u0010e\u001a\u00020\u0006H\u00c6\u0003J\t\u0010f\u001a\u00020\tH\u00c6\u0003J\u000b\u0010g\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010h\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010i\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010j\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010k\u001a\u00020\tH\u00c6\u0003J\u000b\u0010l\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010m\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u00109J\u0010\u0010n\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u00109J\u000b\u0010o\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010p\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0002\u0010BJ\t\u0010q\u001a\u00020\u0015H\u00c6\u0003J\t\u0010r\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010s\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010t\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010u\u001a\u00020\tH\u00c6\u0003J\u001d\u0010v\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u001bj\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\u001cH\u00c6\u0003J\u0010\u0010w\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u00109J\u0010\u0010x\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u00109J\t\u0010y\u001a\u00020\u0015H\u00c6\u0003J\t\u0010z\u001a\u00020\u0015H\u00c6\u0003J\t\u0010{\u001a\u00020\u0015H\u00c6\u0003J\u000b\u0010|\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u00cc\u0002\u0010}\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u000e\u001a\u00020\t2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00032\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0019\u001a\u00020\t2\u001c\u0008\u0003\u0010\u001a\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u001bj\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\u001c2\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u00152\u0008\u0008\u0002\u0010 \u001a\u00020\u00152\u0008\u0008\u0002\u0010!\u001a\u00020\u00152\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010~J\u0014\u0010\u007f\u001a\u00020\u00152\t\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\n\u0010\u0081\u0001\u001a\u00020\u0006H\u00d6\u0001J\n\u0010\u0082\u0001\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010&R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010)R\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010)R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u0010&R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u0010&R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u0010&R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u0010&R\u001a\u0010\u000e\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u0010,\"\u0004\u00084\u0010.R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010&\"\u0004\u00086\u00107R\u001e\u0010\u0010\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010<\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R\u001e\u0010\u0011\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010<\u001a\u0004\u0008=\u00109\"\u0004\u0008>\u0010;R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010&\"\u0004\u0008@\u00107R\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010E\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010DR\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010G\"\u0004\u0008H\u0010IR\u001a\u0010\u0016\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008J\u0010&\"\u0004\u0008K\u00107R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008L\u0010&\"\u0004\u0008M\u00107R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008N\u0010&\"\u0004\u0008O\u00107R\u001a\u0010\u0019\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008P\u0010,\"\u0004\u0008Q\u0010.R.\u0010\u001a\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u001bj\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008R\u0010S\"\u0004\u0008T\u0010UR\u001e\u0010\u001d\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010<\u001a\u0004\u0008V\u00109\"\u0004\u0008W\u0010;R\u001e\u0010\u001e\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010<\u001a\u0004\u0008X\u00109\"\u0004\u0008Y\u0010;R\u001a\u0010\u001f\u001a\u00020\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Z\u0010G\"\u0004\u0008[\u0010IR\u001a\u0010 \u001a\u00020\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\\\u0010G\"\u0004\u0008]\u0010IR\u001a\u0010!\u001a\u00020\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008^\u0010G\"\u0004\u0008_\u0010IR\u001c\u0010\"\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008`\u0010&\"\u0004\u0008a\u00107\u00a8\u0006\u0083\u0001"
    }
    d2 = {
        "Lcom/transsion/baselib/db/video/VideoDetailPlayBean;",
        "",
        "subjectId",
        "",
        "id",
        "ep",
        "",
        "se",
        "progress",
        "",
        "title",
        "coverUrl",
        "thumbnail",
        "videoUrl",
        "timeStamp",
        "subtitleSelectId",
        "totalDuration",
        "subjectDurationSeconds",
        "averageHueLight",
        "subjectType",
        "hasDelete",
        "",
        "playMode",
        "downloadUrl",
        "downloadFilePath",
        "downloadSize",
        "dubs",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "lastAdStartTimeStamp",
        "lastAdEndTimeStamp",
        "rewardPlayed",
        "rewardUnlock",
        "rewardFree",
        "ops",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;)V",
        "getSubjectId",
        "()Ljava/lang/String;",
        "getId",
        "getEp",
        "()I",
        "getSe",
        "getProgress",
        "()J",
        "setProgress",
        "(J)V",
        "getTitle",
        "getCoverUrl",
        "getThumbnail",
        "getVideoUrl",
        "getTimeStamp",
        "setTimeStamp",
        "getSubtitleSelectId",
        "setSubtitleSelectId",
        "(Ljava/lang/String;)V",
        "getTotalDuration",
        "()Ljava/lang/Long;",
        "setTotalDuration",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "getSubjectDurationSeconds",
        "setSubjectDurationSeconds",
        "getAverageHueLight",
        "setAverageHueLight",
        "getSubjectType",
        "()Ljava/lang/Integer;",
        "setSubjectType",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getHasDelete",
        "()Z",
        "setHasDelete",
        "(Z)V",
        "getPlayMode",
        "setPlayMode",
        "getDownloadUrl",
        "setDownloadUrl",
        "getDownloadFilePath",
        "setDownloadFilePath",
        "getDownloadSize",
        "setDownloadSize",
        "getDubs",
        "()Ljava/util/ArrayList;",
        "setDubs",
        "(Ljava/util/ArrayList;)V",
        "getLastAdStartTimeStamp",
        "setLastAdStartTimeStamp",
        "getLastAdEndTimeStamp",
        "setLastAdEndTimeStamp",
        "getRewardPlayed",
        "setRewardPlayed",
        "getRewardUnlock",
        "setRewardUnlock",
        "getRewardFree",
        "setRewardFree",
        "getOps",
        "setOps",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component20",
        "component21",
        "component22",
        "component23",
        "component24",
        "component25",
        "component26",
        "component27",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;)Lcom/transsion/baselib/db/video/VideoDetailPlayBean;",
        "equals",
        "other",
        "hashCode",
        "toString",
        "BaseLib_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private averageHueLight:Ljava/lang/String;

.field private final coverUrl:Ljava/lang/String;

.field private downloadFilePath:Ljava/lang/String;

.field private downloadSize:J

.field private downloadUrl:Ljava/lang/String;

.field private dubs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ep:I

.field private hasDelete:Z

.field private final id:Ljava/lang/String;

.field private lastAdEndTimeStamp:Ljava/lang/Long;

.field private lastAdStartTimeStamp:Ljava/lang/Long;

.field private ops:Ljava/lang/String;

.field private playMode:Ljava/lang/String;

.field private progress:J

.field private rewardFree:Z

.field private rewardPlayed:Z

.field private rewardUnlock:Z

.field private final se:I

.field private subjectDurationSeconds:Ljava/lang/Long;

.field private final subjectId:Ljava/lang/String;

.field private subjectType:Ljava/lang/Integer;

.field private subtitleSelectId:Ljava/lang/String;

.field private final thumbnail:Ljava/lang/String;

.field private timeStamp:J

.field private final title:Ljava/lang/String;

.field private totalDuration:Ljava/lang/Long;

.field private final videoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "ZZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p19

    const-string v4, "subjectId"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "id"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "playMode"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object v1, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->subjectId:Ljava/lang/String;

    .line 3
    iput-object v2, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->id:Ljava/lang/String;

    move v1, p3

    .line 4
    iput v1, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->ep:I

    move v1, p4

    .line 5
    iput v1, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->se:I

    move-wide v1, p5

    .line 6
    iput-wide v1, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->progress:J

    move-object v1, p7

    .line 7
    iput-object v1, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->title:Ljava/lang/String;

    move-object v1, p8

    .line 8
    iput-object v1, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->coverUrl:Ljava/lang/String;

    move-object v1, p9

    .line 9
    iput-object v1, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->thumbnail:Ljava/lang/String;

    move-object v1, p10

    .line 10
    iput-object v1, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->videoUrl:Ljava/lang/String;

    move-wide/from16 v1, p11

    .line 11
    iput-wide v1, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->timeStamp:J

    move-object/from16 v1, p13

    .line 12
    iput-object v1, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->subtitleSelectId:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 13
    iput-object v1, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->totalDuration:Ljava/lang/Long;

    move-object/from16 v1, p15

    .line 14
    iput-object v1, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->subjectDurationSeconds:Ljava/lang/Long;

    move-object/from16 v1, p16

    .line 15
    iput-object v1, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->averageHueLight:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 16
    iput-object v1, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->subjectType:Ljava/lang/Integer;

    move/from16 v1, p18

    .line 17
    iput-boolean v1, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->hasDelete:Z

    .line 18
    iput-object v3, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->playMode:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 19
    iput-object v1, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->downloadUrl:Ljava/lang/String;

    move-object/from16 v1, p21

    .line 20
    iput-object v1, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->downloadFilePath:Ljava/lang/String;

    move-wide/from16 v1, p22

    .line 21
    iput-wide v1, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->downloadSize:J

    move-object/from16 v1, p24

    .line 22
    iput-object v1, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->dubs:Ljava/util/ArrayList;

    move-object/from16 v1, p25

    .line 23
    iput-object v1, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->lastAdStartTimeStamp:Ljava/lang/Long;

    move-object/from16 v1, p26

    .line 24
    iput-object v1, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->lastAdEndTimeStamp:Ljava/lang/Long;

    move/from16 v1, p27

    .line 25
    iput-boolean v1, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->rewardPlayed:Z

    move/from16 v1, p28

    .line 26
    iput-boolean v1, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->rewardUnlock:Z

    move/from16 v1, p29

    .line 27
    iput-boolean v1, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->rewardFree:Z

    move-object/from16 v1, p30

    .line 28
    iput-object v1, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->ops:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 34

    move/from16 v0, p31

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move/from16 v6, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    move v7, v2

    goto :goto_1

    :cond_1
    move/from16 v7, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_2

    move-wide v8, v3

    goto :goto_2

    :cond_2
    move-wide/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    move-object v10, v5

    goto :goto_3

    :cond_3
    move-object/from16 v10, p7

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move-object v11, v5

    goto :goto_4

    :cond_4
    move-object/from16 v11, p8

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move-object v12, v5

    goto :goto_5

    :cond_5
    move-object/from16 v12, p9

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    move-object v13, v5

    goto :goto_6

    :cond_6
    move-object/from16 v13, p10

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    move-wide v14, v3

    goto :goto_7

    :cond_7
    move-wide/from16 v14, p11

    :goto_7
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_8

    move-object/from16 v16, v5

    goto :goto_8

    :cond_8
    move-object/from16 v16, p13

    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    .line 29
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v17, v1

    goto :goto_9

    :cond_9
    move-object/from16 v17, p14

    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    .line 30
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v18, v1

    goto :goto_a

    :cond_a
    move-object/from16 v18, p15

    :goto_a
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_b

    move-object/from16 v19, v5

    goto :goto_b

    :cond_b
    move-object/from16 v19, p16

    :goto_b
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v20, v1

    goto :goto_c

    :cond_c
    move-object/from16 v20, p17

    :goto_c
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    move/from16 v21, v2

    goto :goto_d

    :cond_d
    move/from16 v21, p18

    :goto_d
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    .line 32
    sget-object v1, Lcom/transsion/baselib/utils/PlayMode;->STREAM:Lcom/transsion/baselib/utils/PlayMode;

    invoke-virtual {v1}, Lcom/transsion/baselib/utils/PlayMode;->getValue()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v22, v1

    goto :goto_e

    :cond_e
    move-object/from16 v22, p19

    :goto_e
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    move-object/from16 v23, v5

    goto :goto_f

    :cond_f
    move-object/from16 v23, p20

    :goto_f
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    move-object/from16 v24, v5

    goto :goto_10

    :cond_10
    move-object/from16 v24, p21

    :goto_10
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_11

    move-wide/from16 v25, v3

    goto :goto_11

    :cond_11
    move-wide/from16 v25, p22

    :goto_11
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_12

    move-object/from16 v27, v5

    goto :goto_12

    :cond_12
    move-object/from16 v27, p24

    :goto_12
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_13

    move-object/from16 v28, v5

    goto :goto_13

    :cond_13
    move-object/from16 v28, p25

    :goto_13
    const/high16 v1, 0x400000

    and-int/2addr v1, v0

    if-eqz v1, :cond_14

    move-object/from16 v29, v5

    goto :goto_14

    :cond_14
    move-object/from16 v29, p26

    :goto_14
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_15

    move/from16 v30, v2

    goto :goto_15

    :cond_15
    move/from16 v30, p27

    :goto_15
    const/high16 v1, 0x1000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_16

    move/from16 v31, v2

    goto :goto_16

    :cond_16
    move/from16 v31, p28

    :goto_16
    const/high16 v1, 0x2000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_17

    move/from16 v32, v2

    goto :goto_17

    :cond_17
    move/from16 v32, p29

    :goto_17
    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_18

    move-object/from16 v33, v5

    goto :goto_18

    :cond_18
    move-object/from16 v33, p30

    :goto_18
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 33
    invoke-direct/range {v3 .. v33}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;ILjava/lang/Object;)Lcom/transsion/baselib/db/video/VideoDetailPlayBean;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p31

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->subjectId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->id:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->ep:I

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->se:I

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-wide v6, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->progress:J

    goto :goto_4

    :cond_4
    move-wide/from16 v6, p5

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->title:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->coverUrl:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->thumbnail:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->videoUrl:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-wide v12, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->timeStamp:J

    goto :goto_9

    :cond_9
    move-wide/from16 v12, p11

    :goto_9
    and-int/lit16 v14, v1, 0x400

    if-eqz v14, :cond_a

    iget-object v14, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->subtitleSelectId:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v14, p13

    :goto_a
    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_b

    iget-object v15, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->totalDuration:Ljava/lang/Long;

    goto :goto_b

    :cond_b
    move-object/from16 v15, p14

    :goto_b
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget-object v15, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->subjectDurationSeconds:Ljava/lang/Long;

    goto :goto_c

    :cond_c
    move-object/from16 v15, p15

    :goto_c
    move-object/from16 p15, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->averageHueLight:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p16

    :goto_d
    move-object/from16 p16, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->subjectType:Ljava/lang/Integer;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p17

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_f

    iget-boolean v15, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->hasDelete:Z

    goto :goto_f

    :cond_f
    move/from16 v15, p18

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move/from16 p18, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->playMode:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p19

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->downloadUrl:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p20

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p20, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->downloadFilePath:Ljava/lang/String;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p21

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p13, v14

    move-object/from16 p21, v15

    if-eqz v16, :cond_13

    iget-wide v14, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->downloadSize:J

    goto :goto_13

    :cond_13
    move-wide/from16 v14, p22

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-wide/from16 p22, v14

    if-eqz v16, :cond_14

    iget-object v14, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->dubs:Ljava/util/ArrayList;

    goto :goto_14

    :cond_14
    move-object/from16 v14, p24

    :goto_14
    const/high16 v15, 0x200000

    and-int/2addr v15, v1

    if-eqz v15, :cond_15

    iget-object v15, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->lastAdStartTimeStamp:Ljava/lang/Long;

    goto :goto_15

    :cond_15
    move-object/from16 v15, p25

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move-object/from16 p25, v15

    if-eqz v16, :cond_16

    iget-object v15, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->lastAdEndTimeStamp:Ljava/lang/Long;

    goto :goto_16

    :cond_16
    move-object/from16 v15, p26

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    move-object/from16 p26, v15

    if-eqz v16, :cond_17

    iget-boolean v15, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->rewardPlayed:Z

    goto :goto_17

    :cond_17
    move/from16 v15, p27

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, v1, v16

    move/from16 p27, v15

    if-eqz v16, :cond_18

    iget-boolean v15, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->rewardUnlock:Z

    goto :goto_18

    :cond_18
    move/from16 v15, p28

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, v1, v16

    move/from16 p28, v15

    if-eqz v16, :cond_19

    iget-boolean v15, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->rewardFree:Z

    goto :goto_19

    :cond_19
    move/from16 v15, p29

    :goto_19
    const/high16 v16, 0x4000000

    and-int v1, v1, v16

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->ops:Ljava/lang/String;

    goto :goto_1a

    :cond_1a
    move-object/from16 v1, p30

    :goto_1a
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move/from16 p3, v4

    move/from16 p4, v5

    move-wide/from16 p5, v6

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-wide/from16 p11, v12

    move-object/from16 p24, v14

    move/from16 p29, v15

    move-object/from16 p30, v1

    invoke-virtual/range {p0 .. p30}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->copy(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;)Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->subjectId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component10()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->timeStamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->subtitleSelectId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component12()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->totalDuration:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component13()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->subjectDurationSeconds:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->averageHueLight:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component15()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->subjectType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component16()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->hasDelete:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->playMode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component18()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->downloadUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component19()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->downloadFilePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component20()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->downloadSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component21()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->dubs:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component22()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->lastAdStartTimeStamp:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component23()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->lastAdEndTimeStamp:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component24()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->rewardPlayed:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component25()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->rewardUnlock:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component26()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->rewardFree:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component27()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->ops:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->ep:I

    .line 2
    .line 3
    return v0
.end method

.method public final component4()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->se:I

    .line 2
    .line 3
    return v0
.end method

.method public final component5()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->progress:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->coverUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->thumbnail:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->videoUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;)Lcom/transsion/baselib/db/video/VideoDetailPlayBean;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "ZZZ",
            "Ljava/lang/String;",
            ")",
            "Lcom/transsion/baselib/db/video/VideoDetailPlayBean;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-wide/from16 v11, p11

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-wide/from16 v22, p22

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move/from16 v27, p27

    move/from16 v28, p28

    move/from16 v29, p29

    move-object/from16 v30, p30

    const-string v0, "subjectId"

    move-object/from16 v31, v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playMode"

    move-object/from16 v1, p19

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v32, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-direct/range {v0 .. v30}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;)V

    return-object v32
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->subjectId:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->subjectId:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->id:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->id:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->ep:I

    .line 36
    .line 37
    iget v3, p1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->ep:I

    .line 38
    .line 39
    if-eq v1, v3, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->se:I

    .line 43
    .line 44
    iget v3, p1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->se:I

    .line 45
    .line 46
    if-eq v1, v3, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    iget-wide v3, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->progress:J

    .line 50
    .line 51
    iget-wide v5, p1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->progress:J

    .line 52
    .line 53
    cmp-long v1, v3, v5

    .line 54
    .line 55
    if-eqz v1, :cond_6

    .line 56
    .line 57
    return v2

    .line 58
    :cond_6
    iget-object v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->title:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v3, p1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->title:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_7

    .line 67
    .line 68
    return v2

    .line 69
    :cond_7
    iget-object v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->coverUrl:Ljava/lang/String;

    .line 70
    .line 71
    iget-object v3, p1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->coverUrl:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_8

    .line 78
    .line 79
    return v2

    .line 80
    :cond_8
    iget-object v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->thumbnail:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v3, p1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->thumbnail:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_9

    .line 89
    .line 90
    return v2

    .line 91
    :cond_9
    iget-object v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->videoUrl:Ljava/lang/String;

    .line 92
    .line 93
    iget-object v3, p1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->videoUrl:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-nez v1, :cond_a

    .line 100
    .line 101
    return v2

    .line 102
    :cond_a
    iget-wide v3, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->timeStamp:J

    .line 103
    .line 104
    iget-wide v5, p1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->timeStamp:J

    .line 105
    .line 106
    cmp-long v1, v3, v5

    .line 107
    .line 108
    if-eqz v1, :cond_b

    .line 109
    .line 110
    return v2

    .line 111
    :cond_b
    iget-object v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->subtitleSelectId:Ljava/lang/String;

    .line 112
    .line 113
    iget-object v3, p1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->subtitleSelectId:Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-nez v1, :cond_c

    .line 120
    .line 121
    return v2

    .line 122
    :cond_c
    iget-object v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->totalDuration:Ljava/lang/Long;

    .line 123
    .line 124
    iget-object v3, p1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->totalDuration:Ljava/lang/Long;

    .line 125
    .line 126
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-nez v1, :cond_d

    .line 131
    .line 132
    return v2

    .line 133
    :cond_d
    iget-object v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->subjectDurationSeconds:Ljava/lang/Long;

    .line 134
    .line 135
    iget-object v3, p1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->subjectDurationSeconds:Ljava/lang/Long;

    .line 136
    .line 137
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-nez v1, :cond_e

    .line 142
    .line 143
    return v2

    .line 144
    :cond_e
    iget-object v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->averageHueLight:Ljava/lang/String;

    .line 145
    .line 146
    iget-object v3, p1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->averageHueLight:Ljava/lang/String;

    .line 147
    .line 148
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-nez v1, :cond_f

    .line 153
    .line 154
    return v2

    .line 155
    :cond_f
    iget-object v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->subjectType:Ljava/lang/Integer;

    .line 156
    .line 157
    iget-object v3, p1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->subjectType:Ljava/lang/Integer;

    .line 158
    .line 159
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-nez v1, :cond_10

    .line 164
    .line 165
    return v2

    .line 166
    :cond_10
    iget-boolean v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->hasDelete:Z

    .line 167
    .line 168
    iget-boolean v3, p1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->hasDelete:Z

    .line 169
    .line 170
    if-eq v1, v3, :cond_11

    .line 171
    .line 172
    return v2

    .line 173
    :cond_11
    iget-object v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->playMode:Ljava/lang/String;

    .line 174
    .line 175
    iget-object v3, p1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->playMode:Ljava/lang/String;

    .line 176
    .line 177
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-nez v1, :cond_12

    .line 182
    .line 183
    return v2

    .line 184
    :cond_12
    iget-object v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->downloadUrl:Ljava/lang/String;

    .line 185
    .line 186
    iget-object v3, p1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->downloadUrl:Ljava/lang/String;

    .line 187
    .line 188
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-nez v1, :cond_13

    .line 193
    .line 194
    return v2

    .line 195
    :cond_13
    iget-object v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->downloadFilePath:Ljava/lang/String;

    .line 196
    .line 197
    iget-object v3, p1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->downloadFilePath:Ljava/lang/String;

    .line 198
    .line 199
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    if-nez v1, :cond_14

    .line 204
    .line 205
    return v2

    .line 206
    :cond_14
    iget-wide v3, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->downloadSize:J

    .line 207
    .line 208
    iget-wide v5, p1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->downloadSize:J

    .line 209
    .line 210
    cmp-long v1, v3, v5

    .line 211
    .line 212
    if-eqz v1, :cond_15

    .line 213
    .line 214
    return v2

    .line 215
    :cond_15
    iget-object v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->dubs:Ljava/util/ArrayList;

    .line 216
    .line 217
    iget-object v3, p1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->dubs:Ljava/util/ArrayList;

    .line 218
    .line 219
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-nez v1, :cond_16

    .line 224
    .line 225
    return v2

    .line 226
    :cond_16
    iget-object v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->lastAdStartTimeStamp:Ljava/lang/Long;

    .line 227
    .line 228
    iget-object v3, p1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->lastAdStartTimeStamp:Ljava/lang/Long;

    .line 229
    .line 230
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    if-nez v1, :cond_17

    .line 235
    .line 236
    return v2

    .line 237
    :cond_17
    iget-object v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->lastAdEndTimeStamp:Ljava/lang/Long;

    .line 238
    .line 239
    iget-object v3, p1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->lastAdEndTimeStamp:Ljava/lang/Long;

    .line 240
    .line 241
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    if-nez v1, :cond_18

    .line 246
    .line 247
    return v2

    .line 248
    :cond_18
    iget-boolean v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->rewardPlayed:Z

    .line 249
    .line 250
    iget-boolean v3, p1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->rewardPlayed:Z

    .line 251
    .line 252
    if-eq v1, v3, :cond_19

    .line 253
    .line 254
    return v2

    .line 255
    :cond_19
    iget-boolean v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->rewardUnlock:Z

    .line 256
    .line 257
    iget-boolean v3, p1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->rewardUnlock:Z

    .line 258
    .line 259
    if-eq v1, v3, :cond_1a

    .line 260
    .line 261
    return v2

    .line 262
    :cond_1a
    iget-boolean v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->rewardFree:Z

    .line 263
    .line 264
    iget-boolean v3, p1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->rewardFree:Z

    .line 265
    .line 266
    if-eq v1, v3, :cond_1b

    .line 267
    .line 268
    return v2

    .line 269
    :cond_1b
    iget-object v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->ops:Ljava/lang/String;

    .line 270
    .line 271
    iget-object p1, p1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->ops:Ljava/lang/String;

    .line 272
    .line 273
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result p1

    .line 277
    if-nez p1, :cond_1c

    .line 278
    .line 279
    return v2

    .line 280
    :cond_1c
    return v0
.end method

.method public final getAverageHueLight()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->averageHueLight:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCoverUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->coverUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDownloadFilePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->downloadFilePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDownloadSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->downloadSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->downloadUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDubs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->dubs:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->ep:I

    .line 2
    .line 3
    return v0
.end method

.method public final getHasDelete()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->hasDelete:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLastAdEndTimeStamp()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->lastAdEndTimeStamp:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLastAdStartTimeStamp()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->lastAdStartTimeStamp:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOps()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->ops:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPlayMode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->playMode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getProgress()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->progress:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getRewardFree()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->rewardFree:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getRewardPlayed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->rewardPlayed:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getRewardUnlock()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->rewardUnlock:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getSe()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->se:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSubjectDurationSeconds()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->subjectDurationSeconds:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSubjectId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->subjectId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSubjectType()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->subjectType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSubtitleSelectId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->subtitleSelectId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getThumbnail()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->thumbnail:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTimeStamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->timeStamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTotalDuration()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->totalDuration:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVideoUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->videoUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->subjectId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->id:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->ep:I

    .line 19
    .line 20
    add-int/2addr v0, v1

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->se:I

    .line 24
    .line 25
    add-int/2addr v0, v1

    .line 26
    mul-int/lit8 v0, v0, 0x1f

    .line 27
    .line 28
    iget-wide v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->progress:J

    .line 29
    .line 30
    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    add-int/2addr v0, v1

    .line 35
    mul-int/lit8 v0, v0, 0x1f

    .line 36
    .line 37
    iget-object v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->title:Ljava/lang/String;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    if-nez v1, :cond_0

    .line 41
    .line 42
    move v1, v2

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    :goto_0
    add-int/2addr v0, v1

    .line 49
    mul-int/lit8 v0, v0, 0x1f

    .line 50
    .line 51
    iget-object v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->coverUrl:Ljava/lang/String;

    .line 52
    .line 53
    if-nez v1, :cond_1

    .line 54
    .line 55
    move v1, v2

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    :goto_1
    add-int/2addr v0, v1

    .line 62
    mul-int/lit8 v0, v0, 0x1f

    .line 63
    .line 64
    iget-object v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->thumbnail:Ljava/lang/String;

    .line 65
    .line 66
    if-nez v1, :cond_2

    .line 67
    .line 68
    move v1, v2

    .line 69
    goto :goto_2

    .line 70
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    :goto_2
    add-int/2addr v0, v1

    .line 75
    mul-int/lit8 v0, v0, 0x1f

    .line 76
    .line 77
    iget-object v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->videoUrl:Ljava/lang/String;

    .line 78
    .line 79
    if-nez v1, :cond_3

    .line 80
    .line 81
    move v1, v2

    .line 82
    goto :goto_3

    .line 83
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    :goto_3
    add-int/2addr v0, v1

    .line 88
    mul-int/lit8 v0, v0, 0x1f

    .line 89
    .line 90
    iget-wide v3, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->timeStamp:J

    .line 91
    .line 92
    invoke-static {v3, v4}, Landroidx/collection/s;->a(J)I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    add-int/2addr v0, v1

    .line 97
    mul-int/lit8 v0, v0, 0x1f

    .line 98
    .line 99
    iget-object v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->subtitleSelectId:Ljava/lang/String;

    .line 100
    .line 101
    if-nez v1, :cond_4

    .line 102
    .line 103
    move v1, v2

    .line 104
    goto :goto_4

    .line 105
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    :goto_4
    add-int/2addr v0, v1

    .line 110
    mul-int/lit8 v0, v0, 0x1f

    .line 111
    .line 112
    iget-object v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->totalDuration:Ljava/lang/Long;

    .line 113
    .line 114
    if-nez v1, :cond_5

    .line 115
    .line 116
    move v1, v2

    .line 117
    goto :goto_5

    .line 118
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    :goto_5
    add-int/2addr v0, v1

    .line 123
    mul-int/lit8 v0, v0, 0x1f

    .line 124
    .line 125
    iget-object v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->subjectDurationSeconds:Ljava/lang/Long;

    .line 126
    .line 127
    if-nez v1, :cond_6

    .line 128
    .line 129
    move v1, v2

    .line 130
    goto :goto_6

    .line 131
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    :goto_6
    add-int/2addr v0, v1

    .line 136
    mul-int/lit8 v0, v0, 0x1f

    .line 137
    .line 138
    iget-object v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->averageHueLight:Ljava/lang/String;

    .line 139
    .line 140
    if-nez v1, :cond_7

    .line 141
    .line 142
    move v1, v2

    .line 143
    goto :goto_7

    .line 144
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    :goto_7
    add-int/2addr v0, v1

    .line 149
    mul-int/lit8 v0, v0, 0x1f

    .line 150
    .line 151
    iget-object v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->subjectType:Ljava/lang/Integer;

    .line 152
    .line 153
    if-nez v1, :cond_8

    .line 154
    .line 155
    move v1, v2

    .line 156
    goto :goto_8

    .line 157
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    :goto_8
    add-int/2addr v0, v1

    .line 162
    mul-int/lit8 v0, v0, 0x1f

    .line 163
    .line 164
    iget-boolean v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->hasDelete:Z

    .line 165
    .line 166
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    add-int/2addr v0, v1

    .line 171
    mul-int/lit8 v0, v0, 0x1f

    .line 172
    .line 173
    iget-object v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->playMode:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    add-int/2addr v0, v1

    .line 180
    mul-int/lit8 v0, v0, 0x1f

    .line 181
    .line 182
    iget-object v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->downloadUrl:Ljava/lang/String;

    .line 183
    .line 184
    if-nez v1, :cond_9

    .line 185
    .line 186
    move v1, v2

    .line 187
    goto :goto_9

    .line 188
    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    :goto_9
    add-int/2addr v0, v1

    .line 193
    mul-int/lit8 v0, v0, 0x1f

    .line 194
    .line 195
    iget-object v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->downloadFilePath:Ljava/lang/String;

    .line 196
    .line 197
    if-nez v1, :cond_a

    .line 198
    .line 199
    move v1, v2

    .line 200
    goto :goto_a

    .line 201
    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    :goto_a
    add-int/2addr v0, v1

    .line 206
    mul-int/lit8 v0, v0, 0x1f

    .line 207
    .line 208
    iget-wide v3, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->downloadSize:J

    .line 209
    .line 210
    invoke-static {v3, v4}, Landroidx/collection/s;->a(J)I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    add-int/2addr v0, v1

    .line 215
    mul-int/lit8 v0, v0, 0x1f

    .line 216
    .line 217
    iget-object v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->dubs:Ljava/util/ArrayList;

    .line 218
    .line 219
    if-nez v1, :cond_b

    .line 220
    .line 221
    move v1, v2

    .line 222
    goto :goto_b

    .line 223
    :cond_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    :goto_b
    add-int/2addr v0, v1

    .line 228
    mul-int/lit8 v0, v0, 0x1f

    .line 229
    .line 230
    iget-object v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->lastAdStartTimeStamp:Ljava/lang/Long;

    .line 231
    .line 232
    if-nez v1, :cond_c

    .line 233
    .line 234
    move v1, v2

    .line 235
    goto :goto_c

    .line 236
    :cond_c
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    :goto_c
    add-int/2addr v0, v1

    .line 241
    mul-int/lit8 v0, v0, 0x1f

    .line 242
    .line 243
    iget-object v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->lastAdEndTimeStamp:Ljava/lang/Long;

    .line 244
    .line 245
    if-nez v1, :cond_d

    .line 246
    .line 247
    move v1, v2

    .line 248
    goto :goto_d

    .line 249
    :cond_d
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    :goto_d
    add-int/2addr v0, v1

    .line 254
    mul-int/lit8 v0, v0, 0x1f

    .line 255
    .line 256
    iget-boolean v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->rewardPlayed:Z

    .line 257
    .line 258
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    add-int/2addr v0, v1

    .line 263
    mul-int/lit8 v0, v0, 0x1f

    .line 264
    .line 265
    iget-boolean v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->rewardUnlock:Z

    .line 266
    .line 267
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    add-int/2addr v0, v1

    .line 272
    mul-int/lit8 v0, v0, 0x1f

    .line 273
    .line 274
    iget-boolean v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->rewardFree:Z

    .line 275
    .line 276
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    add-int/2addr v0, v1

    .line 281
    mul-int/lit8 v0, v0, 0x1f

    .line 282
    .line 283
    iget-object v1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->ops:Ljava/lang/String;

    .line 284
    .line 285
    if-nez v1, :cond_e

    .line 286
    .line 287
    goto :goto_e

    .line 288
    :cond_e
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    :goto_e
    add-int/2addr v0, v2

    .line 293
    return v0
.end method

.method public final setAverageHueLight(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->averageHueLight:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDownloadFilePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->downloadFilePath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDownloadSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->downloadSize:J

    .line 2
    .line 3
    return-void
.end method

.method public final setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->downloadUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDubs(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->dubs:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method public final setHasDelete(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->hasDelete:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setLastAdEndTimeStamp(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->lastAdEndTimeStamp:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setLastAdStartTimeStamp(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->lastAdStartTimeStamp:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setOps(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->ops:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPlayMode(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->playMode:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setProgress(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->progress:J

    .line 2
    .line 3
    return-void
.end method

.method public final setRewardFree(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->rewardFree:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setRewardPlayed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->rewardPlayed:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setRewardUnlock(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->rewardUnlock:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setSubjectDurationSeconds(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->subjectDurationSeconds:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setSubjectType(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->subjectType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setSubtitleSelectId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->subtitleSelectId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setTimeStamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->timeStamp:J

    .line 2
    .line 3
    return-void
.end method

.method public final setTotalDuration(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->totalDuration:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->subjectId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->id:Ljava/lang/String;

    .line 6
    .line 7
    iget v3, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->ep:I

    .line 8
    .line 9
    iget v4, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->se:I

    .line 10
    .line 11
    iget-wide v5, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->progress:J

    .line 12
    .line 13
    iget-object v7, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->title:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v8, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->coverUrl:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v9, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->thumbnail:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v10, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->videoUrl:Ljava/lang/String;

    .line 20
    .line 21
    iget-wide v11, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->timeStamp:J

    .line 22
    .line 23
    iget-object v13, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->subtitleSelectId:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v14, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->totalDuration:Ljava/lang/Long;

    .line 26
    .line 27
    iget-object v15, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->subjectDurationSeconds:Ljava/lang/Long;

    .line 28
    .line 29
    move-object/from16 v16, v15

    .line 30
    .line 31
    iget-object v15, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->averageHueLight:Ljava/lang/String;

    .line 32
    .line 33
    move-object/from16 v17, v15

    .line 34
    .line 35
    iget-object v15, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->subjectType:Ljava/lang/Integer;

    .line 36
    .line 37
    move-object/from16 v18, v15

    .line 38
    .line 39
    iget-boolean v15, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->hasDelete:Z

    .line 40
    .line 41
    move/from16 v19, v15

    .line 42
    .line 43
    iget-object v15, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->playMode:Ljava/lang/String;

    .line 44
    .line 45
    move-object/from16 v20, v15

    .line 46
    .line 47
    iget-object v15, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->downloadUrl:Ljava/lang/String;

    .line 48
    .line 49
    move-object/from16 v21, v15

    .line 50
    .line 51
    iget-object v15, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->downloadFilePath:Ljava/lang/String;

    .line 52
    .line 53
    move-object/from16 v22, v14

    .line 54
    .line 55
    move-object/from16 v23, v15

    .line 56
    .line 57
    iget-wide v14, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->downloadSize:J

    .line 58
    .line 59
    move-wide/from16 v24, v14

    .line 60
    .line 61
    iget-object v14, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->dubs:Ljava/util/ArrayList;

    .line 62
    .line 63
    iget-object v15, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->lastAdStartTimeStamp:Ljava/lang/Long;

    .line 64
    .line 65
    move-object/from16 v26, v15

    .line 66
    .line 67
    iget-object v15, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->lastAdEndTimeStamp:Ljava/lang/Long;

    .line 68
    .line 69
    move-object/from16 v27, v15

    .line 70
    .line 71
    iget-boolean v15, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->rewardPlayed:Z

    .line 72
    .line 73
    move/from16 v28, v15

    .line 74
    .line 75
    iget-boolean v15, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->rewardUnlock:Z

    .line 76
    .line 77
    move/from16 v29, v15

    .line 78
    .line 79
    iget-boolean v15, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->rewardFree:Z

    .line 80
    .line 81
    move/from16 v30, v15

    .line 82
    .line 83
    iget-object v15, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->ops:Ljava/lang/String;

    .line 84
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    move-object/from16 v31, v15

    .line 91
    .line 92
    const-string v15, "VideoDetailPlayBean(subjectId="

    .line 93
    .line 94
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v1, ", id="

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v1, ", ep="

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v1, ", se="

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v1, ", progress="

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v1, ", title="

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v1, ", coverUrl="

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v1, ", thumbnail="

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v1, ", videoUrl="

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v1, ", timeStamp="

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v1, ", subtitleSelectId="

    .line 173
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v1, ", totalDuration="

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    move-object/from16 v1, v22

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v1, ", subjectDurationSeconds="

    .line 191
    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    move-object/from16 v1, v16

    .line 196
    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v1, ", averageHueLight="

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    move-object/from16 v1, v17

    .line 206
    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string v1, ", subjectType="

    .line 211
    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    move-object/from16 v1, v18

    .line 216
    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string v1, ", hasDelete="

    .line 221
    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    move/from16 v1, v19

    .line 226
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    const-string v1, ", playMode="

    .line 231
    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    move-object/from16 v1, v20

    .line 236
    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v1, ", downloadUrl="

    .line 241
    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    move-object/from16 v1, v21

    .line 246
    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    const-string v1, ", downloadFilePath="

    .line 251
    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    move-object/from16 v1, v23

    .line 256
    .line 257
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string v1, ", downloadSize="

    .line 261
    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    move-wide/from16 v1, v24

    .line 266
    .line 267
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    const-string v1, ", dubs="

    .line 271
    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    const-string v1, ", lastAdStartTimeStamp="

    .line 279
    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    move-object/from16 v1, v26

    .line 284
    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    const-string v1, ", lastAdEndTimeStamp="

    .line 289
    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    move-object/from16 v1, v27

    .line 294
    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    const-string v1, ", rewardPlayed="

    .line 299
    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    move/from16 v1, v28

    .line 304
    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    const-string v1, ", rewardUnlock="

    .line 309
    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    move/from16 v1, v29

    .line 314
    .line 315
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    const-string v1, ", rewardFree="

    .line 319
    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    move/from16 v1, v30

    .line 324
    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string v1, ", ops="

    .line 329
    .line 330
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    move-object/from16 v1, v31

    .line 334
    .line 335
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    const-string v1, ")"

    .line 339
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    return-object v0
.end method
