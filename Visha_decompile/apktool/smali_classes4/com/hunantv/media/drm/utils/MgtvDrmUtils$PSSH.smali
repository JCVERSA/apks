.class public Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/drm/utils/MgtvDrmUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PSSH"
.end annotation


# instance fields
.field public data:[B

.field public key_ids:Ljava/util/List;

.field public rawData:[B

.field public system_id:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;->key_ids:Ljava/util/List;

    return-void
.end method
