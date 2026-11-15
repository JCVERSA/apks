.class public Lcom/transsion/aicore/nexusflow/bean/SubtitleBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/aicore/nexusflow/bean/SubtitleBean$InputType;
    }
.end annotation


# instance fields
.field public mInLanguage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "inLanguage"
    .end annotation
.end field

.field public mInputType:Lcom/transsion/aicore/nexusflow/bean/SubtitleBean$InputType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "inputType"
    .end annotation
.end field

.field public mOutLanguage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "outLanguage"
    .end annotation
.end field

.field public mPkgName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pkgName"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/transsion/aicore/nexusflow/bean/SubtitleBean;
    .locals 0

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/aicore/nexusflow/bean/SubtitleBean;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 3
    :catch_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/aicore/nexusflow/bean/SubtitleBean;->clone()Lcom/transsion/aicore/nexusflow/bean/SubtitleBean;

    move-result-object p0

    return-object p0
.end method
