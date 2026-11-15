.class public final Lcom/transsion/edcation/CourseManager$subscribeCourse$1$b;
.super Ldg/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/edcation/CourseManager$subscribeCourse$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/moviedetailapi/bean/Subject;

.field final synthetic e:I


# direct methods
.method constructor <init>(Lcom/transsion/moviedetailapi/bean/Subject;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/edcation/CourseManager$subscribeCourse$1$b;->d:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 2
    .line 3
    iput p2, p0, Lcom/transsion/edcation/CourseManager$subscribeCourse$1$b;->e:I

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
    invoke-virtual {p0, p1}, Lcom/transsion/edcation/CourseManager$subscribeCourse$1$b;->e(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ldg/a;->c(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "data:"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/transsion/edcation/CourseManager$subscribeCourse$1$b;->d:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 18
    .line 19
    iget v0, p0, Lcom/transsion/edcation/CourseManager$subscribeCourse$1$b;->e:I

    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Lcom/transsion/moviedetailapi/bean/Subject;->setSeenStatus(Ljava/lang/Integer;)V

    .line 26
    .line 27
    .line 28
    sget-object p1, Lcom/transsion/edcation/CourseManager;->a:Lcom/transsion/edcation/CourseManager;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/transsion/edcation/CourseManager$subscribeCourse$1$b;->d:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 31
    .line 32
    invoke-static {v0}, Ldk/a;->a(Lcom/transsion/moviedetailapi/bean/Subject;)Lcom/transsion/edcation/bean/CourseBean;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {p1, v0}, Lcom/transsion/edcation/CourseManager;->d(Lcom/transsion/edcation/CourseManager;Lcom/transsion/edcation/bean/CourseBean;)V

    .line 37
    .line 38
    .line 39
    iget p1, p0, Lcom/transsion/edcation/CourseManager$subscribeCourse$1$b;->e:I

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    if-ne p1, v0, :cond_0

    .line 43
    .line 44
    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 45
    .line 46
    sget v0, Lcom/transsion/edcation/R$string;->course_add_success:I

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 53
    .line 54
    sget v0, Lcom/transsion/edcation/R$string;->course_remove_success:I

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method
