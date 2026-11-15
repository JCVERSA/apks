.class public Lcom/questionnaire/sdk/QuestionnaireData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/questionnaire/sdk/QuestionnaireData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mQuestionnaire:Ljava/lang/String;

.field private mQuestionnaireId:Ljava/lang/String;

.field private mResult:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/questionnaire/sdk/QuestionnaireData$a;

    invoke-direct {v0}, Lcom/questionnaire/sdk/QuestionnaireData$a;-><init>()V

    sput-object v0, Lcom/questionnaire/sdk/QuestionnaireData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/questionnaire/sdk/QuestionnaireData;->mQuestionnaireId:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/questionnaire/sdk/QuestionnaireData;->mQuestionnaire:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/questionnaire/sdk/QuestionnaireData;->mUrl:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/questionnaire/sdk/QuestionnaireData;->mResult:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getQuestionnaire()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/questionnaire/sdk/QuestionnaireData;->mQuestionnaire:Ljava/lang/String;

    return-object p0
.end method

.method public getQuestionnaireId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/questionnaire/sdk/QuestionnaireData;->mQuestionnaireId:Ljava/lang/String;

    return-object p0
.end method

.method public getResult()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/questionnaire/sdk/QuestionnaireData;->mResult:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/questionnaire/sdk/QuestionnaireData;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setQuestionnaire(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/questionnaire/sdk/QuestionnaireData;->mQuestionnaire:Ljava/lang/String;

    return-void
.end method

.method public setQuestionnaireId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/questionnaire/sdk/QuestionnaireData;->mQuestionnaireId:Ljava/lang/String;

    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/questionnaire/sdk/QuestionnaireData;->mResult:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/questionnaire/sdk/QuestionnaireData;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/questionnaire/sdk/QuestionnaireData;->mQuestionnaireId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/questionnaire/sdk/QuestionnaireData;->mQuestionnaire:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/questionnaire/sdk/QuestionnaireData;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/questionnaire/sdk/QuestionnaireData;->mResult:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
