.class public Lcom/mgmi/model/LandPage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/netlib/json/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgmi/model/LandPage$ReportItem;
    }
.end annotation


# instance fields
.field public fileName:Ljava/lang/String;

.field public h5Url:Ljava/lang/String;

.field public jumpType:I

.field public params:Ljava/lang/String;

.field public report:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgmi/model/LandPage$ReportItem;",
            ">;"
        }
    .end annotation
.end field

.field public zipUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
