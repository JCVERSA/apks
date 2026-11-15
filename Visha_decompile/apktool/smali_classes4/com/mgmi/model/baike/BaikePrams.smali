.class public Lcom/mgmi/model/baike/BaikePrams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/netlib/json/a;
.implements Ljava/io/Serializable;


# instance fields
.field public aid:I

.field public float_ex:I

.field public hid:I

.field public iplay:I

.field public isFullScreen:Z

.field public ispreview:I

.field public lob:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field public starIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public trigger_time:J

.field public vid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/mgmi/model/baike/BaikePrams;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mgmi/model/baike/BaikePrams;->setP(Ljava/lang/String;)V

    return-void
.end method

.method private setP(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/baike/BaikePrams;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getP()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/baike/BaikePrams;->p:Ljava/lang/String;

    return-object p0
.end method
