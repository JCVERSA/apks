.class public Lcom/transsion/apiinvoke/monitor/RecordItem$PublishRecordItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/apiinvoke/monitor/RecordItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PublishRecordItem"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xd973551dd753a08L


# instance fields
.field public matcher:Ljava/lang/String;

.field public publishData:Ljava/io/Serializable;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/apiinvoke/monitor/RecordItem$PublishRecordItem;->matcher:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/transsion/apiinvoke/monitor/RecordItem$PublishRecordItem;->publishData:Ljava/io/Serializable;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/io/Serializable;Lcom/transsion/apiinvoke/monitor/RecordItem$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/apiinvoke/monitor/RecordItem$PublishRecordItem;-><init>(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method
