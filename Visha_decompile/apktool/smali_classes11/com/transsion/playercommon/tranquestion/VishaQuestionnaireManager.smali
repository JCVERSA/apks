.class public Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager$c;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VISHA_QUESTIONNAIRE_LIST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lydc;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, "VIDEO_PLAY_COUNT"

    iput-object v0, p0, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->a:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->b:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lydc;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->a:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lnec;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->h(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static c()Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;
    .locals 1

    invoke-static {}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager$c;->a()Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final d(Ljava/lang/String;)Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;
    .locals 3

    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;->isConditionValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public e(Landroid/content/Context;)V
    .locals 4

    const-string v0, "getQuestionnaires>>>>>>"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "visha_TranQuestionManager"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const-string p0, "getQuestionnaires failed,context is null"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    sget-object v2, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/mmkv/MMKV;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "getQuestionnaires failed"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_1
    new-instance v2, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager$1;

    invoke-direct {v2, p0}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager$1;-><init>(Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;)V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v0, v2}, Lfi1;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->b:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getQuestionnaires success mQuestionnaireList="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getQuestionnaires failed e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    invoke-static {p1}, Lcom/questionnaire/sdk/QuestionnaireClient;->o(Landroid/content/Context;)Lcom/questionnaire/sdk/QuestionnaireClient;

    move-result-object p1

    new-instance v0, Lmec;

    invoke-direct {v0, p0}, Lmec;-><init>(Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;)V

    invoke-virtual {p1, v0}, Lcom/questionnaire/sdk/QuestionnaireClient;->p(Lcom/questionnaire/sdk/QuestionnaireClient$c;)V

    return-void
.end method

.method public f(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_0

    sget p0, Lcom/transsion/playercommon/R$id;->questionsdk_bubble:I

    invoke-virtual {p1, p0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hideVideoPlayQuestionnaireView pagename: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "visha_TranQuestionManager"

    invoke-static {p2, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final g()Z
    .locals 3

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string v0, "APP_VERSION_CODE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->g(Ljava/lang/String;I)I

    move-result p0

    invoke-static {}, Lydc;->a()I

    move-result v2

    if-eq p0, v2, :cond_0

    const-string p0, "visha app upgrade"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "visha_TranQuestionManager"

    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    invoke-static {}, Lydc;->a()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final synthetic h(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "getQuestionnaires,onGetResult>>>"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "visha_TranQuestionManager"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/questionnaire/sdk/QuestionnaireClient$d;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->i(Lcom/questionnaire/sdk/QuestionnaireClient$d;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->b:Ljava/util/List;

    invoke-static {p0}, Lek4;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    sget-object v0, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getQuestionnaires failed e="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final i(Lcom/questionnaire/sdk/QuestionnaireClient$d;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Questionnaire id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/questionnaire/sdk/QuestionnaireClient$d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " condition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/questionnaire/sdk/QuestionnaireClient$d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "visha_TranQuestionManager"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/questionnaire/sdk/QuestionnaireClient$d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/questionnaire/sdk/QuestionnaireClient$d;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager$2;

    invoke-direct {v2, p0}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager$2;-><init>(Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;)V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v0, v2}, Lfi1;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v2, Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;

    invoke-direct {v2}, Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;-><init>()V

    invoke-virtual {v2, p1}, Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;->setResultData(Lcom/questionnaire/sdk/QuestionnaireClient$d;)V

    invoke-virtual {v2, v0}, Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;->setConditions(Ljava/util/List;)V

    iget-object p0, p0, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->b:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getQuestionnaires failed e="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public j(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->d(Ljava/lang/String;)Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->c()Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->q(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->c()Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->f(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public k(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVishaVideoPlayQuestionnaireViewChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "visha_TranQuestionManager"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->d(Ljava/lang/String;)Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/tencent/mmkv/MMKV;->g(Ljava/lang/String;I)I

    move-result p0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    invoke-static {}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->c()Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->q(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->c()Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->f(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final l(Landroid/app/Activity;)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/transsion/playercommon/R$id;->questionsdk_bubble:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public m(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/questionnaire/sdk/QuestionnaireClient;->o(Landroid/content/Context;)Lcom/questionnaire/sdk/QuestionnaireClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/questionnaire/sdk/QuestionnaireClient;->s()V

    return-void
.end method

.method public n()V
    .locals 3

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->g(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->g()Z

    move-result v1

    if-nez v1, :cond_0

    if-lez v0, :cond_1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->a:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, p0, v0}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;I)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video questionnaire count "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "visha_TranQuestionManager"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final o(Landroid/app/Activity;Ljava/lang/String;Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;Lcom/questionnaire/sdk/QuestionnaireClient$e;)V
    .locals 0

    if-eqz p1, :cond_2

    if-eqz p4, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;->getResultData()Lcom/questionnaire/sdk/QuestionnaireClient$d;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/questionnaire/sdk/QuestionnaireClient;->o(Landroid/content/Context;)Lcom/questionnaire/sdk/QuestionnaireClient;

    move-result-object p0

    invoke-virtual {p3}, Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;->getResultData()Lcom/questionnaire/sdk/QuestionnaireClient$d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/questionnaire/sdk/QuestionnaireClient$d;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p4}, Lcom/questionnaire/sdk/QuestionnaireClient;->w(Landroid/content/Context;Ljava/lang/String;Lcom/questionnaire/sdk/QuestionnaireClient$e;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "no questionnaire,condition="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "visha_TranQuestionManager"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public p(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6

    invoke-static {p2}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->d(Ljava/lang/String;)Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;->getResultData()Lcom/questionnaire/sdk/QuestionnaireClient$d;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;->getResultData()Lcom/questionnaire/sdk/QuestionnaireClient$d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/questionnaire/sdk/QuestionnaireClient$d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mmkv/MMKV;->g(Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v3

    invoke-virtual {v3, v1, v4}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showVideoPlayQuestionnaire condition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " cont = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " has show =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "visha_TranQuestionManager"

    invoke-static {v5, v4}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x2

    if-lt v2, v4, :cond_4

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->l(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->q(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-nez v3, :cond_4

    new-instance v2, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager$a;

    invoke-direct {v2, p0, v1, p2}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager$a;-><init>(Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->o(Landroid/app/Activity;Ljava/lang/String;Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;Lcom/questionnaire/sdk/QuestionnaireClient$e;)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->f(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public q(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_0

    sget p0, Lcom/transsion/playercommon/R$id;->questionsdk_bubble:I

    invoke-virtual {p1, p0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showVideoPlayQuestionnaireView pagename="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "visha_TranQuestionManager"

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p2}, Lx06;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public r(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5

    invoke-static {p2}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->d(Ljava/lang/String;)Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->l(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->q(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lydc;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showVishaQuestionnaire condition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has show =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "visha_TranQuestionManager"

    invoke-static {v4, v3}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v2, :cond_2

    new-instance v2, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager$b;

    invoke-direct {v2, p0, p2, v1}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager$b;-><init>(Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->o(Landroid/app/Activity;Ljava/lang/String;Lcom/transsion/dbdata/beans/questionnaire/VishaQuestionnaireData;Lcom/questionnaire/sdk/QuestionnaireClient$e;)V

    :cond_2
    :goto_0
    return-void
.end method
