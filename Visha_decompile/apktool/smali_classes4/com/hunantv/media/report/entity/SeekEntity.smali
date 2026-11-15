.class public Lcom/hunantv/media/report/entity/SeekEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public act:Ljava/lang/String;

.field public common:Lcom/hunantv/media/report/entity/CommonEntity;

.field public seek_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "seek"

    iput-object v0, p0, Lcom/hunantv/media/report/entity/SeekEntity;->act:Ljava/lang/String;

    return-void
.end method
