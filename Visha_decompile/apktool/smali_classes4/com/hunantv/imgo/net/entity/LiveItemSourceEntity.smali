.class public Lcom/hunantv/imgo/net/entity/LiveItemSourceEntity;
.super Lcom/hunantv/imgo/net/entity/JsonEntity;
.source "SourceFile"


# static fields
.field public static final VIDEO_FROMAT_H264:Ljava/lang/String; = "H264"

.field public static final VIDEO_FROMAT_H265:Ljava/lang/String; = "H265"


# instance fields
.field public definition:I

.field public format:Ljava/lang/String;

.field public isothercdn:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public npuk:Ljava/lang/String;

.field public sid:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public videoFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/imgo/net/entity/JsonEntity;-><init>()V

    return-void
.end method
