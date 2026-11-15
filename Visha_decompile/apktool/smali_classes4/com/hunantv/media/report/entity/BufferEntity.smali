.class public Lcom/hunantv/media/report/entity/BufferEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public act:Ljava/lang/String;

.field public buffer_kind:Ljava/lang/String;

.field public buffer_type:Ljava/lang/String;

.field public common:Lcom/hunantv/media/report/entity/CommonEntity;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "buffer"

    iput-object v0, p0, Lcom/hunantv/media/report/entity/BufferEntity;->act:Ljava/lang/String;

    return-void
.end method
