.class public Lcom/mgmi/model/AiDataBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/netlib/json/a;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgmi/model/AiDataBean$Seqs;,
        Lcom/mgmi/model/AiDataBean$AiItem;
    }
.end annotation


# instance fields
.field public duration:I

.field public items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgmi/model/AiDataBean$AiItem;",
            ">;"
        }
    .end annotation
.end field

.field public triggertime:J

.field public zip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
