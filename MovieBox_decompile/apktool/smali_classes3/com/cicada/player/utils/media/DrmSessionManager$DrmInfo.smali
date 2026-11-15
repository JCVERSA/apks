.class Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cicada/player/utils/media/DrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrmInfo"
.end annotation


# instance fields
.field public keyFormat:Ljava/lang/String;

.field public keyUrl:Ljava/lang/String;

.field public licenseUrl:Ljava/lang/String;

.field public mime:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->licenseUrl:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->keyUrl:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->keyFormat:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->mime:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cicada/player/utils/media/DrmSessionManager$1;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;-><init>()V

    return-void
.end method

.method private static areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-nez p0, :cond_1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    :goto_0
    return p0
.end method


# virtual methods
.method public isSame(Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->keyUrl:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p1, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->keyUrl:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v1, v2}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    return v0

    .line 16
    :cond_1
    iget-object v1, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->licenseUrl:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v2, p1, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->licenseUrl:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v1, v2}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    return v0

    .line 27
    :cond_2
    iget-object v1, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->keyFormat:Ljava/lang/String;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->keyFormat:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v1, p1}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_3

    .line 36
    .line 37
    return v0

    .line 38
    :cond_3
    const/4 p1, 0x1

    .line 39
    return p1
.end method
