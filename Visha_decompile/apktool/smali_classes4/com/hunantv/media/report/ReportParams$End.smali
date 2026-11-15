.class public Lcom/hunantv/media/report/ReportParams$End;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/report/ReportParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "End"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/report/ReportParams$End$Target;
    }
.end annotation


# instance fields
.field private innerRetry:Z

.field private target:Lcom/hunantv/media/report/ReportParams$End$Target;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/hunantv/media/report/ReportParams$End$Target;->CHANGE_SOURCE:Lcom/hunantv/media/report/ReportParams$End$Target;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams$End;->target:Lcom/hunantv/media/report/ReportParams$End$Target;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/report/ReportParams$End;->innerRetry:Z

    return-void
.end method

.method public constructor <init>(Lcom/hunantv/media/report/ReportParams$End;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/hunantv/media/report/ReportParams$End$Target;->CHANGE_SOURCE:Lcom/hunantv/media/report/ReportParams$End$Target;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams$End;->target:Lcom/hunantv/media/report/ReportParams$End$Target;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/report/ReportParams$End;->innerRetry:Z

    iget-object v0, p1, Lcom/hunantv/media/report/ReportParams$End;->target:Lcom/hunantv/media/report/ReportParams$End$Target;

    iput-object v0, p0, Lcom/hunantv/media/report/ReportParams$End;->target:Lcom/hunantv/media/report/ReportParams$End$Target;

    iget-boolean p1, p1, Lcom/hunantv/media/report/ReportParams$End;->innerRetry:Z

    iput-boolean p1, p0, Lcom/hunantv/media/report/ReportParams$End;->innerRetry:Z

    return-void
.end method


# virtual methods
.method public getTarget()Lcom/hunantv/media/report/ReportParams$End$Target;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/ReportParams$End;->target:Lcom/hunantv/media/report/ReportParams$End$Target;

    return-object p0
.end method

.method public isInnerRetry()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/report/ReportParams$End;->innerRetry:Z

    return p0
.end method

.method public setInnerRetry(Z)Lcom/hunantv/media/report/ReportParams$End;
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/report/ReportParams$End;->innerRetry:Z

    return-object p0
.end method

.method public setTarget(Lcom/hunantv/media/report/ReportParams$End$Target;)Lcom/hunantv/media/report/ReportParams$End;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/ReportParams$End;->target:Lcom/hunantv/media/report/ReportParams$End$Target;

    return-object p0
.end method
