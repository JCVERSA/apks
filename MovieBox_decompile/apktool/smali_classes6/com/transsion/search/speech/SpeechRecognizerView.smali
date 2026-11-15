.class public final Lcom/transsion/search/speech/SpeechRecognizerView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u00012\u00020\u0002B\u001d\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0019\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J8\u0010\u0016\u001a\u00020\u000e2)\u0008\u0002\u0010\u0015\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\t\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R7\u0010\u001a\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\t\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/transsion/search/speech/SpeechRecognizerView;",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "getClassTag",
        "()Ljava/lang/String;",
        "Landroid/view/View;",
        "v",
        "",
        "onClick",
        "(Landroid/view/View;)V",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "result",
        "callback",
        "setCallback",
        "(Lkotlin/jvm/functions/Function1;)V",
        "d",
        "Lkotlin/jvm/functions/Function1;",
        "mCallback",
        "Search_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private d:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/transsion/search/speech/SpeechRecognizerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    sget p1, Lcom/transsion/search/R$drawable;->sr_icon_microphone:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/search/speech/SpeechRecognizerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/search/speech/SpeechRecognizerView;Landroidx/appcompat/app/AppCompatActivity;ZLjava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/search/speech/SpeechRecognizerView;->f(Lcom/transsion/search/speech/SpeechRecognizerView;Landroidx/appcompat/app/AppCompatActivity;ZLjava/util/List;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/transsion/search/speech/SpeechRecognizerView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/search/speech/SpeechRecognizerView;->d(Lcom/transsion/search/speech/SpeechRecognizerView;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/search/speech/SpeechRecognizerView;Lgf/f;Ljava/util/List;ZZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/search/speech/SpeechRecognizerView;->e(Lcom/transsion/search/speech/SpeechRecognizerView;Lgf/f;Ljava/util/List;ZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final d(Lcom/transsion/search/speech/SpeechRecognizerView;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/search/speech/q;->a:Lcom/transsion/search/speech/q;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/search/speech/q;->b()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-eqz v0, :cond_1

    .line 19
    .line 20
    sget-object v1, Lcf/c;->a:Lcf/c;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcf/c;->e(Landroidx/fragment/app/FragmentActivity;)Lcf/a;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "android.permission.RECORD_AUDIO"

    .line 27
    .line 28
    filled-new-array {v2}, [Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Lcf/a;->b([Ljava/lang/String;)Lgf/h;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v1}, Lgf/h;->b()Lgf/h;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    new-instance v2, Lcom/transsion/search/speech/n;

    .line 41
    .line 42
    invoke-direct {v2, p0}, Lcom/transsion/search/speech/n;-><init>(Lcom/transsion/search/speech/SpeechRecognizerView;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v1, v2}, Lgf/h;->a(Ldf/b;)Lgf/h;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    new-instance v2, Lcom/transsion/search/speech/o;

    .line 50
    .line 51
    invoke-direct {v2, p0, v0}, Lcom/transsion/search/speech/o;-><init>(Lcom/transsion/search/speech/SpeechRecognizerView;Landroidx/appcompat/app/AppCompatActivity;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v1, v2}, Lgf/h;->d(Ldf/c;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    sget-object v0, Lcom/transsion/search/speech/f;->a:Lcom/transsion/search/speech/f;

    .line 59
    .line 60
    invoke-direct {p0}, Lcom/transsion/search/speech/SpeechRecognizerView;->getClassTag()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p0, " --> context as? AppCompatActivity == null"

    .line 73
    .line 74
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {v0, p0}, Lcom/transsion/search/speech/f;->a(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 85
    .line 86
    return-object p0
.end method

.method private static final e(Lcom/transsion/search/speech/SpeechRecognizerView;Lgf/f;Ljava/util/List;ZZ)V
    .locals 9

    .line 1
    const-string v0, "scope"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "deniedList"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-nez p3, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    if-eqz p4, :cond_1

    .line 15
    .line 16
    new-instance p3, Lff/a;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object p4

    .line 22
    sget v0, Lcom/transsion/search/R$string;->search_sr_permission_tip:I

    .line 23
    .line 24
    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    sget p4, Lcom/transsion/search/R$string;->search_sr_permission_setting:I

    .line 33
    .line 34
    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    sget p0, Lcom/transsion/search/R$mipmap;->sr_icon_active:I

    .line 39
    .line 40
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    sget p0, Lcom/tn/lib/widget/R$color;->white_20:I

    .line 45
    .line 46
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    const/4 v7, 0x1

    .line 51
    const/4 v8, 0x0

    .line 52
    const/4 v2, 0x0

    .line 53
    move-object v1, p3

    .line 54
    invoke-direct/range {v1 .. v8}, Lff/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2, p3}, Lgf/f;->c(Ljava/util/List;Lff/a;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    invoke-virtual {p1, p2}, Lgf/f;->b(Ljava/util/List;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method private static final f(Lcom/transsion/search/speech/SpeechRecognizerView;Landroidx/appcompat/app/AppCompatActivity;ZLjava/util/List;Ljava/util/List;)V
    .locals 1

    .line 1
    const-string v0, "grantedList"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "deniedList"

    .line 7
    .line 8
    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p3, Lcom/transsion/search/speech/f;->a:Lcom/transsion/search/speech/f;

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/transsion/search/speech/SpeechRecognizerView;->getClassTag()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p4

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p4, " --> allGranted = "

    .line 26
    .line 27
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p4

    .line 37
    invoke-virtual {p3, p4}, Lcom/transsion/search/speech/f;->a(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    if-eqz p2, :cond_0

    .line 41
    .line 42
    new-instance p2, Lcom/transsion/search/speech/SpeechRecognizerDialog;

    .line 43
    .line 44
    invoke-direct {p2}, Lcom/transsion/search/speech/SpeechRecognizerDialog;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/transsion/search/speech/SpeechRecognizerView;->d:Lkotlin/jvm/functions/Function1;

    .line 48
    .line 49
    invoke-virtual {p2, p0}, Lcom/transsion/search/speech/SpeechRecognizerDialog;->I0(Lkotlin/jvm/functions/Function1;)Lcom/transsion/search/speech/SpeechRecognizerDialog;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string p2, "getSupportFragmentManager(...)"

    .line 58
    .line 59
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string p2, "SpeechRecognizerDialog"

    .line 63
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/transsion/baseui/dialog/BaseDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    return-void
.end method

.method private final getClassTag()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/transsion/search/speech/SpeechRecognizerView;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getSimpleName(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static synthetic setCallback$default(Lcom/transsion/search/speech/SpeechRecognizerView;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/search/speech/SpeechRecognizerView;->setCallback(Lkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Lcom/transsion/search/speech/m;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Lcom/transsion/search/speech/m;-><init>(Lcom/transsion/search/speech/SpeechRecognizerView;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x3e8

    .line 7
    .line 8
    invoke-static {v0, v1, p1}, Lcom/transsion/baseui/util/d;->a(JLkotlin/jvm/functions/Function0;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setCallback(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/search/speech/SpeechRecognizerView;->d:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method
