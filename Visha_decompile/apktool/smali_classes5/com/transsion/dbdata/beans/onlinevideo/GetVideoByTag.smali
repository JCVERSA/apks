.class public Lcom/transsion/dbdata/beans/onlinevideo/GetVideoByTag;
.super Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;
.source "SourceFile"


# instance fields
.field public page_no:I

.field public page_size:I

.field public tags:[Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;


# direct methods
.method public constructor <init>([Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;II)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;-><init>()V

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/GetVideoByTag;->tags:[Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    iput p2, p0, Lcom/transsion/dbdata/beans/onlinevideo/GetVideoByTag;->page_no:I

    iput p3, p0, Lcom/transsion/dbdata/beans/onlinevideo/GetVideoByTag;->page_size:I

    return-void
.end method
