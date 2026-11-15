.class public final Lcom/transsion/edcation/CourseManager$subscribeCourseById$1$b;
.super Ldg/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/edcation/CourseManager$subscribeCourseById$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/edcation/CourseManager$subscribeCourseById$1$b;->d:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/edcation/CourseManager$subscribeCourseById$1$b;->e:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ldg/a;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "error: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, ", msg:"

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 23
    .line 24
    sget p2, Lcom/transsion/edcation/R$string;->course_default_failed:I

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/edcation/CourseManager$subscribeCourseById$1$b;->e(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Ldg/a;->c(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "data:"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-object/from16 v2, p1

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v5, v0, Lcom/transsion/edcation/CourseManager$subscribeCourseById$1$b;->d:I

    .line 22
    .line 23
    if-nez v5, :cond_0

    .line 24
    .line 25
    sget-object v1, Lcom/transsion/edcation/CourseManager;->a:Lcom/transsion/edcation/CourseManager;

    .line 26
    .line 27
    new-instance v15, Lcom/transsion/edcation/bean/CourseBean;

    .line 28
    .line 29
    iget-object v3, v0, Lcom/transsion/edcation/CourseManager$subscribeCourseById$1$b;->e:Ljava/lang/String;

    .line 30
    .line 31
    const/16 v16, 0x7fa

    .line 32
    .line 33
    const/16 v17, 0x0

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    const/4 v6, 0x0

    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v8, 0x0

    .line 39
    const/4 v9, 0x0

    .line 40
    const/4 v10, 0x0

    .line 41
    const/4 v11, 0x0

    .line 42
    const-wide/16 v12, 0x0

    .line 43
    .line 44
    const/4 v14, 0x0

    .line 45
    move-object v2, v15

    .line 46
    move-object/from16 v18, v15

    .line 47
    .line 48
    move/from16 v15, v16

    .line 49
    .line 50
    move-object/from16 v16, v17

    .line 51
    .line 52
    invoke-direct/range {v2 .. v16}, Lcom/transsion/edcation/bean/CourseBean;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/String;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 53
    .line 54
    .line 55
    move-object/from16 v2, v18

    .line 56
    .line 57
    invoke-static {v1, v2}, Lcom/transsion/edcation/CourseManager;->d(Lcom/transsion/edcation/CourseManager;Lcom/transsion/edcation/bean/CourseBean;)V

    .line 58
    .line 59
    .line 60
    sget-object v1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 61
    .line 62
    sget v2, Lcom/transsion/edcation/R$string;->course_remove_success:I

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    sget-object v1, Lcom/transsion/edcation/CourseManager;->a:Lcom/transsion/edcation/CourseManager;

    .line 69
    .line 70
    iget-object v2, v0, Lcom/transsion/edcation/CourseManager$subscribeCourseById$1$b;->e:Ljava/lang/String;

    .line 71
    .line 72
    const/4 v3, 0x1

    .line 73
    const/4 v4, 0x0

    .line 74
    invoke-static {v1, v4, v2, v3, v4}, Lcom/transsion/edcation/CourseManager;->r(Lcom/transsion/edcation/CourseManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    sget-object v1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 78
    .line 79
    sget v2, Lcom/transsion/edcation/R$string;->course_add_success:I

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    .line 82
    .line 83
    .line 84
    :goto_0
    return-void
.end method
