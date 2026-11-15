.class final Lcom/transsion/shorttv/base/locale/e$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/shorttv/base/locale/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private b:Ljava/util/Locale;

.field private c:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsion/shorttv/base/locale/e$b;->a:Landroid/app/Activity;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/base/locale/e$b;->a:Landroid/app/Activity;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Ljava/util/Locale;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/base/locale/e$b;->c:Ljava/util/Locale;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Ljava/util/Locale;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/base/locale/e$b;->b:Ljava/util/Locale;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d(Ljava/util/Locale;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/base/locale/e$b;->c:Ljava/util/Locale;

    .line 2
    .line 3
    return-void
.end method

.method public final e(Ljava/util/Locale;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/base/locale/e$b;->b:Ljava/util/Locale;

    .line 2
    .line 3
    return-void
.end method
