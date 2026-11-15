.class public Lcom/transsion/sdk/oneid/data/IdChangeInfo;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public id_type:Ljava/lang/String;

.field public new_id:Ljava/lang/String;

.field public pre_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/IdChangeInfo;->id_type:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/sdk/oneid/data/IdChangeInfo;->pre_id:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/sdk/oneid/data/IdChangeInfo;->new_id:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method
