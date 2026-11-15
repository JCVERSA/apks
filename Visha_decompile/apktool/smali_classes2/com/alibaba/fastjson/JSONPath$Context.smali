.class Lcom/alibaba/fastjson/JSONPath$Context;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Context"
.end annotation


# instance fields
.field final eval:Z

.field object:Ljava/lang/Object;

.field final parent:Lcom/alibaba/fastjson/JSONPath$Context;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/JSONPath$Context;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$Context;->parent:Lcom/alibaba/fastjson/JSONPath$Context;

    iput-boolean p2, p0, Lcom/alibaba/fastjson/JSONPath$Context;->eval:Z

    return-void
.end method
