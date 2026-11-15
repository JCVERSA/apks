.class public Lag5$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lag5;->j(Landroid/app/Activity;Lag5$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Lag5$e;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lag5$e;)V
    .locals 0

    iput-object p1, p0, Lag5$b;->b:Landroid/app/Activity;

    iput-object p2, p0, Lag5$b;->c:Lag5$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lag5$b;->b:Landroid/app/Activity;

    invoke-static {v0}, Lag5;->c(Landroid/app/Activity;)I

    move-result v0

    sget v1, Lag5;->a:I

    if-eq v1, v0, :cond_0

    iget-object p0, p0, Lag5$b;->c:Lag5$e;

    invoke-interface {p0, v0}, Lag5$e;->k(I)V

    sput v0, Lag5;->a:I

    :cond_0
    return-void
.end method
