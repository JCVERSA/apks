.class public abstract Lcom/alibaba/fastjson/support/geo/Geometry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/alibaba/fastjson/annotation/JSONType;
    seeAlso = {
        Lcom/alibaba/fastjson/support/geo/GeometryCollection;,
        Lcom/alibaba/fastjson/support/geo/LineString;,
        Lcom/alibaba/fastjson/support/geo/MultiLineString;,
        Lcom/alibaba/fastjson/support/geo/Point;,
        Lcom/alibaba/fastjson/support/geo/MultiPoint;,
        Lcom/alibaba/fastjson/support/geo/Polygon;,
        Lcom/alibaba/fastjson/support/geo/MultiPolygon;,
        Lcom/alibaba/fastjson/support/geo/Feature;,
        Lcom/alibaba/fastjson/support/geo/FeatureCollection;
    }
    typeKey = "type"
.end annotation


# instance fields
.field private bbox:[D

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson/support/geo/Geometry;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBbox()[D
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson/support/geo/Geometry;->bbox:[D

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson/support/geo/Geometry;->type:Ljava/lang/String;

    return-object p0
.end method

.method public setBbox([D)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/fastjson/support/geo/Geometry;->bbox:[D

    return-void
.end method
