.class public Lcom/mgtv/drm/loader/LibLoaderError;
.super Ljava/lang/UnsatisfiedLinkError;
.source "SourceFile"


# instance fields
.field private extra:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/mgtv/drm/loader/LibLoaderError;->extra:I

    return-void
.end method


# virtual methods
.method public getExtra()I
    .locals 0

    iget p0, p0, Lcom/mgtv/drm/loader/LibLoaderError;->extra:I

    return p0
.end method
