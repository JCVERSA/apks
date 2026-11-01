.class public final Lcom/snaptube/taskManager/task/video/pojo/VideoLocalMetaInfo;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snaptube/taskManager/task/video/pojo/VideoLocalMetaInfo$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0016\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 !2\u00020\u0001:\u0001\"B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R$\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\u0006\"\u0004\u0008\n\u0010\u000bR$\u0010\u000c\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\u0008\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u000bR$\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0008\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u000bR$\u0010\u0012\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0008\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u000bR$\u0010\u0015\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0008\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u000bR$\u0010\u0018\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0008\u001a\u0004\u0008\u0019\u0010\u0006\"\u0004\u0008\u001a\u0010\u000bR\"\u0010\u001c\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001c\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006#"
    }
    d2 = {
        "Lcom/snaptube/taskManager/task/video/pojo/VideoLocalMetaInfo;",
        "",
        "<init>",
        "()V",
        "",
        "toString",
        "()Ljava/lang/String;",
        "mediaReferer",
        "Ljava/lang/String;",
        "getMediaReferer",
        "setMediaReferer",
        "(Ljava/lang/String;)V",
        "metaTitle",
        "getMetaTitle",
        "setMetaTitle",
        "metaSinger",
        "getMetaSinger",
        "setMetaSinger",
        "metaAlbum",
        "getMetaAlbum",
        "setMetaAlbum",
        "metaCover",
        "getMetaCover",
        "setMetaCover",
        "coverUrl",
        "getCoverUrl",
        "setCoverUrl",
        "",
        "isMusicVideo",
        "Z",
        "()Z",
        "setMusicVideo",
        "(Z)V",
        "Companion",
        "a",
        "snaptube_classicNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/snaptube/taskManager/task/video/pojo/VideoLocalMetaInfo$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private coverUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover_url"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isMusicVideo:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_music_video"
    .end annotation
.end field

.field private mediaReferer:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media_referer"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private metaAlbum:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "meta_album"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private metaCover:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "meta_cover"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private metaSinger:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "meta_singer"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private metaTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "meta_title"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/snaptube/taskManager/task/video/pojo/VideoLocalMetaInfo$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/snaptube/taskManager/task/video/pojo/VideoLocalMetaInfo$a;-><init>(Lo/pg1;)V

    sput-object v0, Lcom/snaptube/taskManager/task/video/pojo/VideoLocalMetaInfo;->Companion:Lcom/snaptube/taskManager/task/video/pojo/VideoLocalMetaInfo$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCoverUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/pojo/VideoLocalMetaInfo;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getMediaReferer()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/pojo/VideoLocalMetaInfo;->mediaReferer:Ljava/lang/String;

    return-object v0
.end method

.method public final getMetaAlbum()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/pojo/VideoLocalMetaInfo;->metaAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public final getMetaCover()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/pojo/VideoLocalMetaInfo;->metaCover:Ljava/lang/String;

    return-object v0
.end method

.method public final getMetaSinger()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/pojo/VideoLocalMetaInfo;->metaSinger:Ljava/lang/String;

    return-object v0
.end method

.method public final getMetaTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/pojo/VideoLocalMetaInfo;->metaTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final isMusicVideo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/snaptube/taskManager/task/video/pojo/VideoLocalMetaInfo;->isMusicVideo:Z

    return v0
.end method

.method public final setCoverUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/pojo/VideoLocalMetaInfo;->coverUrl:Ljava/lang/String;

    return-void
.end method

.method public final setMediaReferer(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/pojo/VideoLocalMetaInfo;->mediaReferer:Ljava/lang/String;

    return-void
.end method

.method public final setMetaAlbum(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/pojo/VideoLocalMetaInfo;->metaAlbum:Ljava/lang/String;

    return-void
.end method

.method public final setMetaCover(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/pojo/VideoLocalMetaInfo;->metaCover:Ljava/lang/String;

    return-void
.end method

.method public final setMetaSinger(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/pojo/VideoLocalMetaInfo;->metaSinger:Ljava/lang/String;

    return-void
.end method

.method public final setMetaTitle(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/pojo/VideoLocalMetaInfo;->metaTitle:Ljava/lang/String;

    return-void
.end method

.method public final setMusicVideo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/snaptube/taskManager/task/video/pojo/VideoLocalMetaInfo;->isMusicVideo:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/pojo/VideoLocalMetaInfo;->mediaReferer:Ljava/lang/String;

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/pojo/VideoLocalMetaInfo;->metaTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/pojo/VideoLocalMetaInfo;->metaSinger:Ljava/lang/String;

    iget-object v3, p0, Lcom/snaptube/taskManager/task/video/pojo/VideoLocalMetaInfo;->metaAlbum:Ljava/lang/String;

    iget-object v4, p0, Lcom/snaptube/taskManager/task/video/pojo/VideoLocalMetaInfo;->metaCover:Ljava/lang/String;

    iget-object v5, p0, Lcom/snaptube/taskManager/task/video/pojo/VideoLocalMetaInfo;->coverUrl:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/snaptube/taskManager/task/video/pojo/VideoLocalMetaInfo;->isMusicVideo:Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VideoLocalMetaInfo(media_referer="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", meta_title="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", meta_singer="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", meta_album="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", meta_cover="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", cover_url="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", is_music_video="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
