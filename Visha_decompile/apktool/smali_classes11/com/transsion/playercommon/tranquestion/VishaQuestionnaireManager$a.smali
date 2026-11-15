.class public Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/questionnaire/sdk/QuestionnaireClient$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->p(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager$a;->c:Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;

    iput-object p2, p0, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showQuestionnaire success,result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "visha_TranQuestionManager"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager$a;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager$a;->c:Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;

    invoke-static {v0}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->b(Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager$a;->b:Ljava/lang/String;

    invoke-static {p0}, Lx06;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
