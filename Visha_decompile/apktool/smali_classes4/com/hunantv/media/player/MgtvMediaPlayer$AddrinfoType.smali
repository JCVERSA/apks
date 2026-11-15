.class public final enum Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/MgtvMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AddrinfoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

.field public static final enum TYPE_ADDRINFO_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

.field public static final enum TYPE_ADDRINFO_ONE_BY_ONE:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

.field public static final enum TYPE_ADDRINFO_THREAD:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

.field public static final enum TYPE_DNS_CACHE:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    const-string v1, "TYPE_ADDRINFO_DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;->TYPE_ADDRINFO_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    new-instance v1, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    const-string v2, "TYPE_ADDRINFO_THREAD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;->TYPE_ADDRINFO_THREAD:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    new-instance v2, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    const-string v3, "TYPE_ADDRINFO_ONE_BY_ONE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;->TYPE_ADDRINFO_ONE_BY_ONE:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    new-instance v3, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    const-string v4, "TYPE_DNS_CACHE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;->TYPE_DNS_CACHE:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    move-result-object v0

    sput-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;->$VALUES:[Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;
    .locals 1

    const-class v0, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    return-object p0
.end method

.method public static values()[Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;
    .locals 1

    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;->$VALUES:[Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    invoke-virtual {v0}, [Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    return-object v0
.end method
