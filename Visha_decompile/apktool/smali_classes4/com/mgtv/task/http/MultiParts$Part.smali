.class Lcom/mgtv/task/http/MultiParts$Part;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/json/JsonInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/task/http/MultiParts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Part"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x40884b6afe797109L


# instance fields
.field contentType:Ljava/lang/String;

.field file:Ljava/io/File;

.field fileName:Ljava/lang/String;

.field name:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/mgtv/task/http/MultiParts$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/mgtv/task/http/MultiParts$Part;-><init>()V

    return-void
.end method
