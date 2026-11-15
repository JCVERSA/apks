.class public Lcom/transsion/letswitch/service/api/internal/manager/MediaFile$MediaFileType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaFileType"
.end annotation


# instance fields
.field public final fileType:I

.field public final mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile$MediaFileType;->fileType:I

    iput-object p2, p0, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    return-void
.end method
