.class public Lcom/cloud/tmc/integration/structure/App$ResumeParams;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/structure/App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResumeParams"
.end annotation


# instance fields
.field public data:Lcom/google/gson/JsonObject;


# direct methods
.method public constructor <init>(Lcom/google/gson/JsonObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/App$ResumeParams;->data:Lcom/google/gson/JsonObject;

    .line 5
    .line 6
    return-void
.end method
