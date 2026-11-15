.class public Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Result$Global;,
        Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Result$Imps;,
        Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Result$Clks;
    }
.end annotation


# static fields
.field public static final FREE:I = 0x0

.field public static final PAY:I = 0x1


# instance fields
.field public cid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cid"
    .end annotation
.end field

.field public clks:[Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Result$Clks;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clks"
    .end annotation
.end field

.field public duration:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration"
    .end annotation
.end field

.field public global:[Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Result$Global;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "global"
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public imgX:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imgX"
    .end annotation
.end field

.field public imgY:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imgY"
    .end annotation
.end field

.field public imps:[Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Result$Imps;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imps"
    .end annotation
.end field

.field public isPay:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isPay"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field public subTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subTitle"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isFree()Z
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Result;->isPay:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
