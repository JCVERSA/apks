.class public Lcom/mgmi/model/CreativeMediaData$MediaParams$Position;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/netlib/json/a;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgmi/model/CreativeMediaData$MediaParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Position"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mgmi/model/CreativeMediaData$MediaParams;

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Lcom/mgmi/model/CreativeMediaData$MediaParams;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/CreativeMediaData$MediaParams$Position;->this$0:Lcom/mgmi/model/CreativeMediaData$MediaParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
