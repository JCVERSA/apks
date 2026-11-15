.class public Lcom/mgmi/model/baike/BaikeInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/netlib/json/a;
.implements Ljava/io/Serializable;


# instance fields
.field public bgAd:Lcom/mgmi/model/baike/BgAd;

.field public lob:Ljava/lang/String;

.field public starHeaderAd:Lcom/mgmi/model/baike/StarHeaderAd;

.field public stars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgmi/model/StarsBean;",
            ">;"
        }
    .end annotation
.end field

.field public tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgmi/model/TabBean;",
            ">;"
        }
    .end annotation
.end field

.field public trace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
