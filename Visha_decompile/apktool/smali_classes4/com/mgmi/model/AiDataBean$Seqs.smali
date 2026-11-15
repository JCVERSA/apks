.class public Lcom/mgmi/model/AiDataBean$Seqs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/netlib/json/a;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgmi/model/AiDataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Seqs"
.end annotation


# instance fields
.field end:I

.field public gap:I

.field public img:Ljava/lang/String;

.field public oh:F

.field public ow:F

.field public ox:F

.field public oy:F

.field public poly_points:[F

.field public triggertime:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
