.class public Lcom/google/common/collect/MultimapBuilder$b;
.super Lcom/google/common/collect/MultimapBuilder$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/MultimapBuilder;->d(I)Lcom/google/common/collect/MultimapBuilder$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/common/collect/MultimapBuilder$b;->a:I

    invoke-direct {p0}, Lcom/google/common/collect/MultimapBuilder$e;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ljava/util/Map;
    .locals 0

    iget p0, p0, Lcom/google/common/collect/MultimapBuilder$b;->a:I

    invoke-static {p0}, Lcom/google/common/collect/l;->f(I)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
