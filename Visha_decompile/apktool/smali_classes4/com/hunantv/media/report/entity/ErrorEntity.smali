.class public Lcom/hunantv/media/report/entity/ErrorEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public act:Ljava/lang/String;

.field public cdtp:Ljava/lang/String;

.field public cip:Ljava/lang/String;

.field public common:Lcom/hunantv/media/report/entity/CommonEntity;

.field public dectp:Ljava/lang/String;

.field public et:Ljava/lang/String;

.field public exr:Ljava/lang/String;

.field public hddc:Ljava/lang/String;

.field public licurl:Ljava/lang/String;

.field public ptst:Ljava/lang/String;

.field public sc:Ljava/lang/String;

.field public surl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "perr"

    iput-object v0, p0, Lcom/hunantv/media/report/entity/ErrorEntity;->act:Ljava/lang/String;

    return-void
.end method
