.class public final Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u001d\u0018\u0000 R2\u00020\u0001:\u0001RB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010Q\u001a\u00020\u0005H\u0016R \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR \u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR \u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u0007\"\u0004\u0008\u000f\u0010\tR \u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0007\"\u0004\u0008\u0012\u0010\tR\u001e\u0010\u0013\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R \u0010\u0019\u001a\u0004\u0018\u00010\u001a8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR \u0010\u001f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0007\"\u0004\u0008!\u0010\tR \u0010\"\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u0007\"\u0004\u0008$\u0010\tR \u0010%\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u0007\"\u0004\u0008\'\u0010\tR\u001e\u0010(\u001a\u00020)8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R&\u0010.\u001a\n\u0012\u0004\u0012\u000200\u0018\u00010/8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R \u00105\u001a\u0004\u0018\u0001068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:R\u001e\u0010;\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010\u0016\"\u0004\u0008=\u0010\u0018R\u001e\u0010>\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010\u0016\"\u0004\u0008@\u0010\u0018R\u001e\u0010A\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u0010\u0016\"\u0004\u0008C\u0010\u0018R\u001e\u0010D\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u0010\u0016\"\u0004\u0008F\u0010\u0018R\u001e\u0010G\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u0010\u0016\"\u0004\u0008I\u0010\u0018R\u001c\u0010J\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008K\u0010\u0007\"\u0004\u0008L\u0010\tR$\u0010N\u001a\u00020\u00142\u0006\u0010M\u001a\u00020\u0014@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008O\u0010\u0016\"\u0004\u0008P\u0010\u0018\u00a8\u0006S"
    }
    d2 = {
        "Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;",
        "Ljava/io/Serializable;",
        "<init>",
        "()V",
        "docId",
        "",
        "getDocId",
        "()Ljava/lang/String;",
        "setDocId",
        "(Ljava/lang/String;)V",
        "articleClass",
        "getArticleClass",
        "setArticleClass",
        "title",
        "getTitle",
        "setTitle",
        "articleUrl",
        "getArticleUrl",
        "setArticleUrl",
        "publishTime",
        "",
        "getPublishTime",
        "()J",
        "setPublishTime",
        "(J)V",
        "videoInfo",
        "Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;",
        "getVideoInfo",
        "()Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;",
        "setVideoInfo",
        "(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;)V",
        "language",
        "getLanguage",
        "setLanguage",
        "country",
        "getCountry",
        "setCountry",
        "tag",
        "getTag",
        "setTag",
        "coverMode",
        "",
        "getCoverMode",
        "()I",
        "setCoverMode",
        "(I)V",
        "coverImageList",
        "",
        "Lcom/transsion/dbdata/beans/onlinevideo/tiktok/CoverImage;",
        "getCoverImageList",
        "()Ljava/util/List;",
        "setCoverImageList",
        "(Ljava/util/List;)V",
        "userInfo",
        "Lcom/transsion/dbdata/beans/onlinevideo/tiktok/UserInfo;",
        "getUserInfo",
        "()Lcom/transsion/dbdata/beans/onlinevideo/tiktok/UserInfo;",
        "setUserInfo",
        "(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/UserInfo;)V",
        "videoWatchCount",
        "getVideoWatchCount",
        "setVideoWatchCount",
        "diggCount",
        "getDiggCount",
        "setDiggCount",
        "buryCount",
        "getBuryCount",
        "setBuryCount",
        "shareCount",
        "getShareCount",
        "setShareCount",
        "commentCount",
        "getCommentCount",
        "setCommentCount",
        "reqId",
        "getReqId",
        "setReqId",
        "value",
        "playPosition",
        "getPlayPosition",
        "setPlayPosition",
        "toString",
        "Companion",
        "dbdata_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData$Companion;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private articleClass:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "article_class"
    .end annotation
.end field

.field private articleUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "article_url"
    .end annotation
.end field

.field private buryCount:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bury_count"
    .end annotation
.end field

.field private commentCount:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "comment_count"
    .end annotation
.end field

.field private country:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "country"
    .end annotation
.end field

.field private coverImageList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover_image_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/tiktok/CoverImage;",
            ">;"
        }
    .end annotation
.end field

.field private coverMode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover_mode"
    .end annotation
.end field

.field private diggCount:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "digg_count"
    .end annotation
.end field

.field private docId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "doc_id"
    .end annotation
.end field

.field private language:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "language"
    .end annotation
.end field

.field private transient playPosition:J

.field private publishTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "publish_time"
    .end annotation
.end field

.field private transient reqId:Ljava/lang/String;

.field private shareCount:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "share_count"
    .end annotation
.end field

.field private tag:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tag"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field private userInfo:Lcom/transsion/dbdata/beans/onlinevideo/tiktok/UserInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_info"
    .end annotation
.end field

.field private videoInfo:Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_info"
    .end annotation
.end field

.field private videoWatchCount:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_watch_count"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->Companion:Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getArticleClass()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->articleClass:Ljava/lang/String;

    return-object p0
.end method

.method public final getArticleUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->articleUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final getBuryCount()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->buryCount:J

    return-wide v0
.end method

.method public final getCommentCount()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->commentCount:J

    return-wide v0
.end method

.method public final getCountry()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->country:Ljava/lang/String;

    return-object p0
.end method

.method public final getCoverImageList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/tiktok/CoverImage;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->coverImageList:Ljava/util/List;

    return-object p0
.end method

.method public final getCoverMode()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->coverMode:I

    return p0
.end method

.method public final getDiggCount()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->diggCount:J

    return-wide v0
.end method

.method public final getDocId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->docId:Ljava/lang/String;

    return-object p0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->language:Ljava/lang/String;

    return-object p0
.end method

.method public final getPlayPosition()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->playPosition:J

    return-wide v0
.end method

.method public final getPublishTime()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->publishTime:J

    return-wide v0
.end method

.method public final getReqId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->reqId:Ljava/lang/String;

    return-object p0
.end method

.method public final getShareCount()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->shareCount:J

    return-wide v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final getUserInfo()Lcom/transsion/dbdata/beans/onlinevideo/tiktok/UserInfo;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->userInfo:Lcom/transsion/dbdata/beans/onlinevideo/tiktok/UserInfo;

    return-object p0
.end method

.method public final getVideoInfo()Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->videoInfo:Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;

    return-object p0
.end method

.method public final getVideoWatchCount()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->videoWatchCount:J

    return-wide v0
.end method

.method public final setArticleClass(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->articleClass:Ljava/lang/String;

    return-void
.end method

.method public final setArticleUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->articleUrl:Ljava/lang/String;

    return-void
.end method

.method public final setBuryCount(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->buryCount:J

    return-void
.end method

.method public final setCommentCount(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->commentCount:J

    return-void
.end method

.method public final setCountry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->country:Ljava/lang/String;

    return-void
.end method

.method public final setCoverImageList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/tiktok/CoverImage;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->coverImageList:Ljava/util/List;

    return-void
.end method

.method public final setCoverMode(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->coverMode:I

    return-void
.end method

.method public final setDiggCount(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->diggCount:J

    return-void
.end method

.method public final setDocId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->docId:Ljava/lang/String;

    return-void
.end method

.method public final setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->language:Ljava/lang/String;

    return-void
.end method

.method public final setPlayPosition(J)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->playPosition:J

    return-void
.end method

.method public final setPublishTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->publishTime:J

    return-void
.end method

.method public final setReqId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->reqId:Ljava/lang/String;

    return-void
.end method

.method public final setShareCount(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->shareCount:J

    return-void
.end method

.method public final setTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->tag:Ljava/lang/String;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->title:Ljava/lang/String;

    return-void
.end method

.method public final setUserInfo(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/UserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->userInfo:Lcom/transsion/dbdata/beans/onlinevideo/tiktok/UserInfo;

    return-void
.end method

.method public final setVideoInfo(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->videoInfo:Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;

    return-void
.end method

.method public final setVideoWatchCount(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->videoWatchCount:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 28

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->docId:Ljava/lang/String;

    iget-object v2, v0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->articleClass:Ljava/lang/String;

    iget-object v3, v0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->articleUrl:Ljava/lang/String;

    iget-wide v5, v0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->publishTime:J

    iget-object v7, v0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->videoInfo:Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;

    iget-object v8, v0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->language:Ljava/lang/String;

    iget-object v9, v0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->country:Ljava/lang/String;

    iget-object v10, v0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->tag:Ljava/lang/String;

    iget v11, v0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->coverMode:I

    iget-object v12, v0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->coverImageList:Ljava/util/List;

    iget-object v13, v0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->userInfo:Lcom/transsion/dbdata/beans/onlinevideo/tiktok/UserInfo;

    iget-wide v14, v0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->videoWatchCount:J

    move-wide/from16 v16, v14

    iget-wide v14, v0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->diggCount:J

    move-wide/from16 v18, v14

    iget-wide v14, v0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->buryCount:J

    move-wide/from16 v20, v14

    iget-wide v14, v0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->shareCount:J

    move-wide/from16 v22, v14

    iget-wide v14, v0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->commentCount:J

    move-wide/from16 v24, v14

    iget-wide v14, v0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->playPosition:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v26, v14

    const-string v14, "ArticleData(docId="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", articleClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", articleUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", publishTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", videoInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", country="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", coverMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", coverImageList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoWatchCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", diggCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", buryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", shareCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", commentCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", playPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
