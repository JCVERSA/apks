.class Lcom/just/agentweb/WebIndicator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/just/agentweb/WebIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/just/agentweb/WebIndicator;


# direct methods
.method public constructor <init>(Lcom/just/agentweb/WebIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/just/agentweb/WebIndicator$2;->this$0:Lcom/just/agentweb/WebIndicator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/WebIndicator$2;->this$0:Lcom/just/agentweb/WebIndicator;

    invoke-static {p0}, Lcom/just/agentweb/WebIndicator;->b(Lcom/just/agentweb/WebIndicator;)V

    return-void
.end method
