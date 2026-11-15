.class public final Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$Audio;
.super Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Audio"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$Audio;",
        "Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType;",
        "<init>",
        "()V",
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
.field public static final INSTANCE:Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$Audio;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$Audio;

    invoke-direct {v0}, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$Audio;-><init>()V

    sput-object v0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$Audio;->INSTANCE:Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$Audio;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "recentFilterMusic"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
