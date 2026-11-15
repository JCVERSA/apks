.class public Lcx9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;

.field public b:Ljava/util/Map;

.field public c:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcx9;->a:Ljava/util/List;

    iput-object p2, p0, Lcx9;->b:Ljava/util/Map;

    iput-object p3, p0, Lcx9;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcx9;->a:Ljava/util/List;

    return-object p0
.end method

.method public b()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcx9;->c:Ljava/util/Map;

    return-object p0
.end method

.method public c()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcx9;->b:Ljava/util/Map;

    return-object p0
.end method
